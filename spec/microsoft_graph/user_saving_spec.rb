require 'spec_helper'

create_classes

describe MicrosoftGraph::User do
  Given(:attributes) { { "givenName" => "Dinosaur" } }
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end
  Given(:subject) { graph.users.build(attributes: attributes) }

  describe "#save" do

    context "on the existing 'me' user" do
      Given(:me_body) { { "@odata.context" => "$metadata#users/$entity", "givenName" => "Dinosaur" } }
      Given { expect_get_and_return(success_double(me_body)) }
      Given(:subject) { graph.me }
      context "before #save" do
        Then { subject.given_name == "Dinosaur" }
      end
      context "after #save" do
        Given { expect_patch_to_uri("https://graph.microsoft.com/v1.0/me") }
        Given { subject.given_name = "Crocodile" }
        When { subject.save }
        Then { ! subject.dirty? }
      end
    end

    context "on a method found by id" do
      Given(:user_body) { { "@odata.context" => "$metadata#users/$entity", "givenName" => "Dinosaur", "id" => "abc123" } }
      Given { expect_get_and_return(success_double(user_body)) }
      Given(:subject) { graph.users.find('abc123') }
      context "before #save" do
        Then { subject.given_name == "Dinosaur" }
      end
      context "after #save" do
        Given { expect_patch_to_uri("https://graph.microsoft.com/v1.0/users/abc123") }
        Given { subject.given_name = "Crocodile" }
        When { subject.save }
        Then { ! subject.dirty? }
      end
    end

    context "on a brand-new object" do

      context "succeeds" do
        Given(:post_path) { "https://graph.microsoft.com/v1.0/users" }
        Given(:response_body) { {"@odata.context" => "$metadata#users/$entity"} }
        Given(:post_response) { double(code: "201", is_success?: true, body: response_body.to_json) }
        Given do
          stub_request(:post, post_path)
        end
        When(:result) { subject.save }
        Then { result }
      end

      context "fails" do
        Given(:post_path) { "https://graph.microsoft.com/v1.0/users" }
        Given(:error_body) do
          {
            error: {
              code: "Request_BadRequest",
              message: "Another object with the same value for property userPrincipalName already exists.",
            },
          }
        end
        Given(:post_response) { double(code: "400", is_success?: false, uri: post_path, body: error_body.to_json) }
        Given do
          stub_request(:post, post_path)
            .to_return(status: 400)
        end
        When(:result) { subject.save }
        Then { ! result }
      end

    end
  end

  describe "#save!" do
    context "without any attributes on user" do
      Given(:subject) { MicrosoftGraph::User.new }
      When(:result) { subject.save! }
      Then { result == Failure(MicrosoftGraph::NoAssociationError) }
    end

    context "with attributes but not associated with a graph" do
      Given(:subject) { MicrosoftGraph::User.new }
      Then { subject.given_name = "katie" }
      When(:result) { subject.save! }
      Then { result == Failure(MicrosoftGraph::NoAssociationError) }
    end

    context "raises an error when it fails" do
      Given(:post_path) { "https://graph.microsoft.com/v1.0/users" }
      Given(:error_body) do
        {
          error: {
            code: "Request_BadRequest",
            message: "Another object with the same value for property userPrincipalName already exists.",
          },
        }
      end
      Given(:post_response) { double(code: "400", is_success?: false, uri: post_path, body: error_body.to_json) }
      Given do
        stub_request(:post, post_path)
          .to_return(body: error_body.to_json, status: 400)
      end
      When(:result) { subject.save! }
      Then { result == Failure(OData::ClientError) }
    end
  end
end
