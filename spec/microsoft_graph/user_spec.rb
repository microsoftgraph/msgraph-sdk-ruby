require 'spec_helper'

create_classes

describe MicrosoftGraph::User do
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end
  Given(:subject) { MicrosoftGraph::User.new(graph: graph) }
  describe "add to a collection of primitive types" do
    Given do
      stub_request(:get, 'https://graph.microsoft.com/v1.0/?$select=skills')
        .and_return( body: { value:[] }.to_json )
    end
    context "with the correct type" do
      context "via << shovel" do
        When { subject.skills << "batman" }
        Then { subject.skills.include? "batman" }
        Then { subject.skills.length == 1 }
      end

      context "through an index" do
        When { subject.skills[0] = "batman" }
        Then { subject.skills.include? "batman" }
        Then { subject.skills.length == 1 }
        Then { subject.skills[0] == "batman" }
      end
    end

    context "with the incorrect type" do
      context "via << shovel" do
        When(:result) { subject.skills << 45 }
        Then { !subject.skills.include? 45 }
        Then { result == Failure(MicrosoftGraph::TypeError) }
        Then { subject.skills.length == 0 }
      end

      context "through an index" do
        When(:result) { subject.skills[0] = 45 }
        Then { !subject.skills.include? 45 }
        Then { result == Failure(MicrosoftGraph::TypeError) }
        Then { subject.skills.length == 0 }
      end
    end


  end

  describe "add to a collection of complex types" do
    Given do
      stub_request(:get, 'https://graph.microsoft.com/v1.0/?$select=assignedPlans')
        .and_return( body: { value:[] }.to_json )
    end
    context "with the correct type" do
      Given(:plan) { MicrosoftGraph::AssignedPlan.new }
      When { subject.assigned_plans << plan }
      Then { subject.assigned_plans.length == 1 }
      Then { subject.assigned_plans.include? plan }
    end

    context "with the incorrect type" do
      When(:result) { subject.assigned_plans << 45 }
      Then { !subject.assigned_plans.include? 45 }
      Then { result == Failure(MicrosoftGraph::TypeError) }
      Then { subject.assigned_plans.length == 0 }
    end
  end

  context "initialized with a birthday" do
    Given(:subject) { MicrosoftGraph::User.new(attributes: {"birthday" => "0001-01-01T00:00:00Z"}) }
    When(:result) { subject.birthday }
    Then { DateTime === result }

    describe "querying an uninitialized field" do
      When(:result) { subject.given_name }
      Then { result.nil? }
    end
  end

  context "birthday is set later" do
    Given do
      stub_request(:get,"https://graph.microsoft.com/v1.0/me")
        .to_return(body: {id: "userID"}.to_json)
    end
    Given!(:subject) { graph.me }
    Given do
      stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID?$select=birthday")
        .to_return(body: {birthday: "0001-01-01T00:00:00Z"}.to_json)
    end
    When(:birthday) { subject.birthday }
    Then { DateTime === birthday }
    context 'with a snake case property' do
      Given do
        stub_request(:get,
         "https://graph.microsoft.com/v1.0/users/userID?$select=givenName")
          .to_return(body: {givenName: "Bones"}.to_json)
      end
      When(:given_name) { subject.given_name }
      Then { given_name == "Bones" }
    end
  end

  describe "serializing collection properties" do
    Given(:subject) { MicrosoftGraph::User.new(attributes: attributes) }
    When(:result) { subject.as_json }

    context "- collection of strings" do
      Given(:attributes) do
        {
          "city" => "Portland",
          "businessPhones" => ["8675309", "5555555555"],
        }
      end
      Then { result['business_phones'].length == 2 }
    end

    context "- collection of assigned_plans" do
      Given(:attributes) do
        {
          "givenName" => "Pete",
          "assignedPlans" => [
            {
              "assignedDateTime" => "1997-01-01",
              "capabilityStatus" => "sure",
              "service"          => "with a smile",
              "servicePlanId"    => "abc-123",
            },
            {
              "assignedDateTime" => "1998-01-01",
              "capabilityStatus" => "sure",
              "service"          => "with a smile",
              "servicePlanId"    => "abc-124",
            },
          ],
        }
      end
      Then { result['assigned_plans'].length == 2 }
      Then { result['assigned_plans'].first['capability_status'] == "sure" }
    end
  end

  describe "complex type properties" do
    Given(:attributes) do
      {
        "password_profile" => {
          "password" => "super secret",
          "force_change_password_next_sign_in" => false,
        },
        "city" => "Portland"
      }
    end
    Given(:camel_case_attributes) do
      {
        "passwordProfile" => {
          "password" => "super secret",
          "forceChangePasswordNextSignIn" => false,
        },
        "city" => "Portland"
      }
    end

    context "initializing with snake_case keys" do
      Given(:subject) { MicrosoftGraph::User.new(attributes: attributes) }

      context "initializing with a value" do
        When(:result) { subject.password_profile }
        Then { MicrosoftGraph::PasswordProfile === result }
        Then { result.force_change_password_next_sign_in == false }
        Then { result.password == "super secret" }
      end

      context "serializing" do
        context "with empty values" do
          Given(:new_subject) { MicrosoftGraph::User.new() }
          When(:serialized_result) { new_subject.as_json }
          Then { serialized_result == {} }
        end
        context "with values" do
          context "and camel case requested" do
            When(:serialized_result) { subject.as_json(convert_to_camel_case: true) }
            Then { serialized_result == camel_case_attributes }
          end
          When(:serialized_result) { subject.as_json }
          Then { serialized_result == attributes }
        end
      end
    end

    context "initialized with camelCase keys" do
      Given(:subject) { MicrosoftGraph::User.new(attributes: camel_case_attributes) }

      describe "serializes back out with snake_case by default" do
        When(:result) { subject.as_json }
        Then { result == attributes }
      end
    end

  end

  describe "navigation properties" do

    context "that could have varying member types" do
      Given(:direct_reports_body) do
        <<-JSON
          {
              "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
              "value": [
                  {
                      "@odata.type": "#microsoft.graph.user",
                      "id": "e2d03a91-9ebd-4940-b3c5-e8d95075175a",
                      "businessPhones": [
                          "+1 732 555 0102"
                      ],
                      "displayName": "Pavel Bansky",
                      "givenName": "Pavel",
                      "jobTitle": "VP Sales",
                      "mail": "PavelB@testdouble.onmicrosoft.com",
                      "mobilePhone": null,
                      "officeLocation": "19/3123",
                      "preferredLanguage": "en-US",
                      "surname": "Bansky",
                      "userPrincipalName": "PavelB@testdouble.onmicrosoft.com"
                  },
                  {
                      "@odata.type": "#microsoft.graph.contact",
                      "id": "0da9467c-a1b5-4cfa-b73f-01bd8474ab5e",
                      "businessPhones": [
                          "+1 858 555 0109"
                      ],
                      "displayName": "Zrinka Makovac",
                      "givenName": "Zrinka",
                      "jobTitle": "VP Marketing",
                      "emailAddresses": [
                        {
                          "name": "Work",
                          "address": "ZrinkaM@testdouble.onmicrosoft.com"
                        }
                      ],
                      "mobilePhone": null,
                      "officeLocation": "131/2103",
                      "surname": "Makovac"
                  }
              ]
          }
        JSON
      end
      Given(:get_url) { "https://graph.microsoft.com/v1.0/me/directReports" }
      Given(:get_response) { double(code: "200", is_success?: true, uri: get_url, body: direct_reports_body) }
      Given do
        expect_any_instance_of(Net::HTTP)
          .to receive(:get)
          .with(URI(get_url), anything)
          .and_return(get_response)
      end
      Given(:attributes) { { "givenName" => "Alice" } }
      Given(:resource_name) { "me" }
      Given(:options) { { graph: graph, parent: graph, resource_name: resource_name, attributes: attributes } }
      Given(:subject) { MicrosoftGraph::User.new(options) }
      When(:result) { subject.direct_reports.map { |dr| dr.class } }
      Then { MicrosoftGraph::User == result.first }
      Then { MicrosoftGraph::Contact == result.last }
    end

    context "that are of a uniform type" do
      Given(:contacts_body) do
        <<-JSON
          {
              "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('1234')/contacts",
              "value": [
                  {
                      "id": "0da9467c-a1b5-4cfa-b73f-01bd8474ab5e",
                      "businessPhones": [
                          "+1 858 555 0109"
                      ],
                      "displayName": "Zrinka Makovac",
                      "givenName": "Zrinka",
                      "jobTitle": "VP Marketing",
                      "emailAddresses": [
                        {
                          "name": "Work",
                          "address": "ZrinkaM@testdouble.onmicrosoft.com"
                        }
                      ],
                      "mobilePhone": null,
                      "officeLocation": "131/2103",
                      "surname": "Makovac"
                  }
              ]
          }
        JSON
      end
      Given(:get_url) { "https://graph.microsoft.com/v1.0/me/contacts" }
      Given(:get_response) { double(code: "200", is_success?: true, uri: get_url, body: contacts_body) }
      Given do
        expect_any_instance_of(Net::HTTP)
          .to receive(:get)
          .with(URI(get_url), anything)
          .and_return(get_response)
      end
      Given(:attributes) { { "givenName" => "Alice" } }
      Given(:resource_name) { "me" }
      Given(:options) { { graph: graph, parent: graph, resource_name: resource_name, attributes: attributes } }
      Given(:subject) { MicrosoftGraph::User.new(options) }
      When(:result) { subject.contacts }
      Then { MicrosoftGraph::Contact === result.first }
    end

  end

end
