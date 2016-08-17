require 'spec_helper'

describe MicrosoftGraph::CollectionAssociation do
  Given(:service) do
    OData::Service.new(
      base_url:      "https://graph.microsoft.com/v1.0/",
      namespace:     "microsoft.graph",
      metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml"),
      auth_token:    anything
    )
  end
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given!(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end

  context "#initialize" do
    context "top level collection association" do
      Given(:collection_type) { service.get_type_by_name("Collection(microsoft.graph.user)") }
      Given(:subject) { MicrosoftGraph::CollectionAssociation.new(type: collection_type, resource_name: "users") }

      Then { subject.path == "users" }
      Then { ! subject.parent }
    end

    context "nested collection assocation" do
      Given(:collection_type) { service.get_type_by_name("Collection(microsoft.graph.contacts)") }
      Given(:parent) do
        MicrosoftGraph::User.new(
          graph: graph,
          parent: graph,
          resource_name: "me",
          attributes: {
            id: 'dinoID',
            given_name: "Dinosaur",
          }
        )
      end

      Given(:subject) { MicrosoftGraph::CollectionAssociation.new(type: collection_type, resource_name: "contacts", parent: parent) }

      Then { subject.path == "users/dinoID/contacts" }
      Then { MicrosoftGraph::BaseEntity === subject.parent }
    end
  end

  context "with a user collection" do
    Given(:collection_type) { service.get_type_by_name("Collection(microsoft.graph.user)") }
    Given(:subject) { MicrosoftGraph::CollectionAssociation.new(type: collection_type, resource_name: "users", graph: graph) }
    Given(:users_collection_response_body) { {"@odata.context" => "$metadata#users", "value" => [] } }

    describe '#build' do

      context "before it is called" do
        Given { stub_request(:get, "https://graph.microsoft.com/v1.0/users").and_return(body: users_collection_response_body.to_json) }
        Then { subject.length == 0 }
      end

      context "after it is called" do
        When(:result) { subject.build({ given_name: "Dinosaur" }) }
        Then { MicrosoftGraph::User === result }
        Then { result.dirty? }
        Then { result.given_name == "Dinosaur" }

        context "http request is only made if we ask for the length" do
          Given { stub_request(:get, "https://graph.microsoft.com/v1.0/users").and_return(body: users_collection_response_body.to_json) }
          Then { subject.length == 1 }
        end
      end
    end

    describe '#create' do

      context "before it is called" do
        Given { stub_request(:get, "https://graph.microsoft.com/v1.0/users").and_return(body: users_collection_response_body.to_json) }
        Then { subject.length == 0 }
      end

      context "after it is called" do
        Given do
          stub_request(:post, "https://graph.microsoft.com/v1.0/users")
            .and_return(body: {id: 123, givenName: "Dinosaur"}.to_json)
        end
        When(:result) { subject.create({ given_name: "Dinosaur" }) }
        Then { result.id == "123" }
        Then { ! result.dirty? }
      end
    end

    context "with a User created by User.new" do
      When(:new_user) { MicrosoftGraph::User.new(given_name: "Dinosaur") }
      Then { ! new_user.persisted? }
      describe '#<<' do
        Given do
          stub_request(:post, "https://graph.microsoft.com/v1.0/users")
            .and_return(body: {id: 123, givenName: "Dinosaur"}.to_json)
        end
        When { subject << new_user }
        Then { new_user.parent == subject }
        Then { new_user.id == "123" }
        Then { new_user.persisted? }
        Then { expect(WebMock).to have_requested(:post, "https://graph.microsoft.com/v1.0/users") }
      end
    end
  end

  context "#find" do
    context "when associated with a graph" do
      Given(:collection_type) { service.get_type_by_name("Collection(microsoft.graph.user)") }
      Given(:subject) { MicrosoftGraph::CollectionAssociation.new(type: collection_type, resource_name: "users", graph: graph) }

      context "and resource is found" do
        Given(:uri) { "https://graph.microsoft.com/v1.0/users/45" }
        Given(:response_body) { {"@odata.context" => "$metadata#users/$entity", "givenName" => "Sarah"} }
        Given { stub_request(:get, uri).and_return({ body: response_body.to_json }) }
        When(:result) { subject.find(45) }
        Then { MicrosoftGraph::User === result }
        Then { result.given_name == "Sarah" }
      end

      context "and resource is not found" do
        Given(:uri) { "https://graph.microsoft.com/v1.0/users/45" }
        Given { stub_request(:get, uri).and_return(:status => [403, "Not Found"]) }
        When(:result) { subject.find(45) }
        Then { result == Failure(OData::ClientError) }
      end
    end
  end

  context "lazy loading" do
    Given do
      response_body = {
        "@odata.context"=>"https://graph.microsoft.com/v1.0/$metadata#users('admin%40testdouble.onmicrosoft.com')/calendars",
        "value"=>[
          {
            "id"=>"ABC123",
            "name"=>"Calendar",
            "color"=>"lightBlue",
            "changeKey"=>"xq1AXBMI1EyWsDiH8aEfegAACLBt4g=="
          }
        ]
      }
      stub_request(:get, "https://graph.microsoft.com/v1.0/me").and_return({ body: {id: "123"}.to_json })
      stub_request(:get, "https://graph.microsoft.com/v1.0/users/123/calendars")
        .and_return({ body: response_body.to_json })
    end

    Given(:me) { graph.me }
    Given(:subject) { me.calendars }

    When(:result) { subject.first }
    Then { result.color == 'lightBlue' }
    Then { result.parent == subject }
    Then { result.path == "users/123/calendars/ABC123"}
    Then { result.graph == graph }
    Then { result.persisted? }
  end

  context "pagination" do
    Given do
      stub_request(:get, "https://graph.microsoft.com/v1.0/me")
        .to_return({body: {id: "USER123"}.to_json})
      first_page_body = {
        "@odata.context"=>"https://graph.microsoft.com/v1.0/$metadata#users('admin%40testdouble.onmicrosoft.com')/calendars",
        "@odata.nextLink" => "https://graph.microsoft.com/v1.0/users/USER123/calendars?$skip=1",
        "value"=>[
          {
            "id"=>"ABC123",
            "name"=>"Calendar",
            "color"=>"lightBlue",
          }
        ]
      }
      second_page_body = {
        "@odata.context"=>"https://graph.microsoft.com/v1.0/$metadata#users('admin%40testdouble.onmicrosoft.com')/calendars",
        "value"=>[
          {
            "id"=>"DEF456",
            "name"=>"Calendar 2",
            "color"=>"lightGreen",
          }
        ]
      }
      stub_request(:get, "https://graph.microsoft.com/v1.0/users/USER123/calendars")
        .to_return({ body: first_page_body.to_json }).times(1)
      stub_request(:get, "https://graph.microsoft.com/v1.0/users/USER123/calendars?$skip=1")
        .to_return({ body: second_page_body.to_json }).times(1)
    end
    Given(:me) { graph.me }
    Given(:subject) { me.calendars }
    When(:result) { subject.each.map { |c| c.id  } }
    Then { result.length == 2 }
  end

  context "polymorphic collection" do
    Given {
      stub_request(:get, "https://graph.microsoft.com/v1.0/me")
        .to_return({body: {id: "userID"}.to_json})
      stub_request(:post, "https://graph.microsoft.com/v1.0/users/userID/directReports")
        .to_return(body: {id: "JJJ123"}.to_json)
    }
    Given(:collection) { graph.me.direct_reports }
    When(:result) { collection << MicrosoftGraph::User.new }
    Then { result }
  end

  describe "#order_by" do
    Given(:collection_type) { service.get_type_by_name('Collection(microsoft.graph.user)') }
    Given(:subject) do
      MicrosoftGraph::CollectionAssociation.new(
        resource_name: 'users',
        parent: graph,
        graph: graph,
        type: collection_type
      )
    end

    describe "returns a new collection ordered by a field" do
      When(:result) { subject.order_by(:given_name) }
      Then { MicrosoftGraph::CollectionAssociation === result }
      Then { result.query_path == 'users?$orderby=givenName' }
    end

    describe "can take two fields" do
      When(:result) { subject.order_by(:surname, :given_name) }
      Then { result.query_path == 'users?$orderby=surname,givenName' }
    end

    describe "rejects invalid field names" do
      When(:result) { subject.order_by(:surname, :not_a_field) }
      Then { result == Failure(MicrosoftGraph::TypeError) }
    end

    describe "rejects invalid field sort directions" do
      When(:result) { subject.order_by('surname blarg') }
      Then { result == Failure(MicrosoftGraph::TypeError) }
    end

    describe "can order fields explicitly ascending" do
      When(:result) { subject.order_by('surname asc') }
      Then { result.query_path == 'users?$orderby=surname%20asc' }
    end

    describe "can order fields descending" do
      When(:result) { subject.order_by('surname desc', 'given_name desc') }
      Then { result.query_path == 'users?$orderby=surname%20desc,givenName%20desc' }
    end

    describe "can order by nested properties in complex types" do
      Given(:me) do
        MicrosoftGraph::User.new(
          resource_name: 'me',
          graph: graph,
          parent: graph,
          attributes: {
            id: 'userID'
          }
        )
      end
      Given(:collection_type) { service.get_type_by_name('Collection(microsoft.graph.message)') }
      Given(:subject) do
        MicrosoftGraph::CollectionAssociation.new(
          resource_name: 'messages',
          parent: me,
          graph: graph,
          type: collection_type
        )
      end
      context "with camel case order fields" do
        When(:result) { subject.order_by('from/emailAddress/address') }
        Then { result.query_path == 'users/userID/messages?$orderby=from/emailAddress/address'}
      end
      context "with snake case order fields" do
        When(:result) { subject.order_by('from/email_address/address') }
        Then { result.query_path == 'users/userID/messages?$orderby=from/emailAddress/address'}
      end
    end

    describe "raises an error if called on a filtered collection" do
      When(:filtered) { subject.filter(surname: 'Hayden') }
      When(:result) { filtered.order_by(:given_name) }
      Then { result == Failure(MicrosoftGraph::TypeError) }
    end

  end

  describe "#filter" do
    Given(:subject) do
      MicrosoftGraph::CollectionAssociation.new(
        resource_name:   'users',
        parent: graph,
        graph:  graph,
        type:   service.get_type_by_name('Collection(microsoft.graph.user)')
      )
    end

    describe "returns a new collection filtered by a field" do
      When(:result) { subject.filter(given_name: 'Pete') }
      Then { MicrosoftGraph::CollectionAssociation === result }
      Then { result.query_path == "users?$filter=givenName%20eq%20'Pete'" }
    end

    describe "returns a new collection filtered by any number of fields" do
      When(:result) { subject.filter(surname: 'Puma', given_name: 'Pete') }
      Then { result.query_path == "users?$filter=givenName%20eq%20'Pete'%20and%20surname%20eq%20'Puma'" }
    end

    describe "raises an error if called on an ordered collection" do
      When(:ordered) { subject.order_by(:surname) }
      When(:result) { ordered.filter(given_name: 'Alice') }
      Then { result == Failure(MicrosoftGraph::TypeError) }
    end

    describe "raises an error when passed an invalid field" do
      When(:result) { subject.filter(not_a_field: 'Alice') }
      Then { result == Failure(MicrosoftGraph::TypeError) }
    end

    describe "allows filtering further on an already-filtered collection" do
      When(:result) { subject.filter(surname: 'Puma').filter(given_name: 'Pete') }
      Then { result.query_path == "users?$filter=givenName%20eq%20'Pete'%20and%20surname%20eq%20'Puma'" }
    end

    describe "string style filters" do
      When(:result) { subject.filter("startswith(surname, 'M')") }
      Then {result.query_path == "users?$filter=startswith(surname,%20'M')"}
    end

    describe "mixing string and hash filters" do
      When(:result) { subject.filter("startswith(surname, 'M')").filter(given_name: 'Pete') }
      Then {result.query_path == "users?$filter=givenName%20eq%20'Pete'%20and%20startswith(surname,%20'M')"}
    end

  end
end
