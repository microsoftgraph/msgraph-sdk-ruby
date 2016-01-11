require 'spec_helper'

create_classes

describe MicrosoftGraph::BaseEntity do
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end

  describe MicrosoftGraph::User do
    Given(:subject) { MicrosoftGraph::User.new(graph: graph, parent: graph) }

    describe "property getters and setters work" do
      When { subject.given_name = "Pete" }
      Then { subject.given_name == "Pete" }
      context "with type checking against wrong values" do
        context "string" do
          When(:result) { subject.city = 45 }
          Then { result == Failure(MicrosoftGraph::TypeError) }
        end

        context "boolean" do
          When(:result) { subject.account_enabled = 45 }
          Then { result == Failure(MicrosoftGraph::TypeError) }
        end

        context "datetime" do
          When(:result) { subject.birthday = "dinosaur" }
          Then { result == Failure(MicrosoftGraph::TypeError) }
        end
      end
      context 'with type checking against nil on nullable values' do
        When(:result) { subject.city = nil }
        Then { result != Failure(MicrosoftGraph::TypeError) && result != Failure(MicrosoftGraph::NonNullableError) }
      end

      context "with type checking against correct values" do
        context "string" do
          When(:result) { subject.city = "Detroit" }
          Then { result != Failure(MicrosoftGraph::TypeError) }
        end

        context "boolean" do
          When(:true_result) { subject.account_enabled = true }
          When(:false_result) { subject.account_enabled = false }
          Then { true_result != Failure(MicrosoftGraph::TypeError) }
          Then { false_result != Failure(MicrosoftGraph::TypeError) }
        end

        context "datetime" do
          When(:datetime_result) { subject.birthday = DateTime.now }
          When(:date_result) { subject.birthday = Date.now }
          When(:time_result) { subject.birthday = Time.now }
          Then { datetime_result != Failure(MicrosoftGraph::TypeError) }
          Then { date_result != Failure(MicrosoftGraph::TypeError) }
          Then { time_result != Failure(MicrosoftGraph::TypeError) }
        end
      end

      context "when setting a nil value" do
        context "for a nullable field" do
          When(:result) { subject.city = nil }
          Then { result != Failure(MicrosoftGraph::NonNullableError) }
        end

        context "for a non-nullable field" do
          When(:result) { subject.birthday = nil }
          Then { result == Failure(MicrosoftGraph::NonNullableError) }
        end
      end

      context "for a collection property" do
        Given { expect_get_and_return(success_double(skills: [])) }
        Then { subject.skills.to_a == [] }
      end

    end

    describe "can access associated (single) entities" do
      Given(:manager_body) { { "@odata.context" => "$metadata#directoryObjects/$entity", "@odata.type" => "#microsoft.graph.user" }.to_json }
      Given(:manager_response) { double(code: "200", is_success?: true, body: manager_body) }
      Given { allow_any_instance_of(Net::HTTP).to receive(:get).and_return(manager_response) }
      Then { subject.navigation_properties.length == 18 }
      Then { subject.respond_to? :manager }
      Then { MicrosoftGraph::User === subject.manager }
    end

    describe "can access associated collection entities" do
      Then { MicrosoftGraph::CollectionAssociation === subject.messages }
    end

    describe "setting a single polymorphic navigation_property" do
      Given(:item_attachment) { MicrosoftGraph::ItemAttachment.new(graph: graph) }

      context "with a correct resource type" do
        When(:result) { item_attachment.item = MicrosoftGraph::Event.new(
          attributes: {
            subject: "Pie Eating Contest",
            categories: ["Pie", "Food", "Contests"]
          }
        )}
        Then { item_attachment.item.subject == "Pie Eating Contest" }
        Then { item_attachment.item.categories.length == 3 }
        Then { item_attachment.item.parent == item_attachment }
      end
      context "with an incorrect resource type" do
        When(:result) { item_attachment.item = MicrosoftGraph::User.new }
        Then { result == Failure(MicrosoftGraph::TypeError) }
      end
    end
    describe "setting a polymorphic navigation_property collection" do
      Given { allow_get_and_return }
      Given!(:user) { graph.me }

      context "with a collection" do
        context "of the correct type" do
          Given { allow_get_and_return(success_double(
              "@odata.context"=>"https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
              "value"=>[]
            ))}
          Given { allow_successful_create(id: 123, givenName: "Scooby", "@odata.type"=> 'microsoft.graph.user') }
          When { user.direct_reports << MicrosoftGraph::User.new(attributes: { given_name: "Scooby" }) }
          Then { user.direct_reports.size == 1 }
        end

        context "of the incorrect type" do
          When(:result) { user.direct_reports << MicrosoftGraph::Event.new }
          Then { result == Failure(MicrosoftGraph::TypeError) }
        end
      end
    end
  end

  describe MicrosoftGraph::Event do
    Given(:subject) { MicrosoftGraph::Event.new }

    describe "getters and setters" do

      context "for enum types" do
        context "with bad values" do
          When(:result) { subject.sensitivity = "something not valid" }
          Then { result == Failure(MicrosoftGraph::TypeError) }
        end
        context "with good values" do
          When(:string_value_result) { subject.sensitivity = "normal" }
          When(:number_value_result) { subject.sensitivity = 2}
          Then { string_value_result != Failure(MicrosoftGraph::TypeError)}
          Then { number_value_result != Failure(MicrosoftGraph::TypeError)}
        end
      end
    end

    context "#save!" do
      context "without required attributes" do
        Given(:missing_required_field_response) {
          double(
            code: "400",
            is_success?: false,
            uri: anything,
            body: {
              error: {
                message: "missing something",
                code: "Request_BadRequest"
              }
            }.to_json
          )
        }
        Given {
          allow_any_instance_of(Net::HTTP)
            .to receive(:post)
            .and_return(missing_required_field_response)
        }
        Given { subject.graph = graph }
        Given { subject.parent = graph }
        When(:result) { subject.save! }
        Then { result == Failure(OData::ClientError, /missing something/ ) }
      end

      context "without a parent" do
        Given { subject.graph = graph }
        When(:result) { subject.save! }
        Then { result == Failure(MicrosoftGraph::NoAssociationError) }
      end
    end
  end
end
