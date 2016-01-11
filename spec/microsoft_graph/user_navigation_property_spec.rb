require 'spec_helper'

create_classes

describe MicrosoftGraph::User do
  Given(:me_url) { "https://graph.microsoft.com/v1.0/me" }
  Given(:me_attributes) { { "@odata.context" => "$metadata#users/$entity", "givenName" => "Dinosaur" } }
  Given(:me_response) { double(code: "200", is_success?: true, body: me_attributes.to_json) }
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end

  Given do
    allow_any_instance_of(Net::HTTP)
      .to receive(:get)
      .with(URI(me_url), anything)
      .and_return(me_response)
  end
  Given!(:subject) { graph.me }
  Then { subject.given_name == "Dinosaur" }

  describe "#manager" do
    Given(:manager_url) { "#{me_url}/manager" }
    Given(:manager_response) { double(code: "200", is_success?: true, body: manager_attributes.to_json) }
    Given do
      allow_any_instance_of(Net::HTTP)
        .to receive(:get)
        .with(URI(manager_url), anything)
        .and_return(manager_response)
    end
    When(:result) { subject.manager }

    context "when we have a manager" do

      context "that is a contact" do
        Given(:manager_attributes) do
          {
            "@odata.context" => "$metadata#directoryObjects/$entity",
            "@odata.type" => "#microsoft.graph.contact",
            "givenName" => "Taco Cat"
          }
        end
        Then { MicrosoftGraph::Contact === result }
        Then { result.given_name == "Taco Cat" }
      end

      context "that is a user" do
        Given(:manager_attributes) do
          {
            "@odata.context" => "$metadata#directoryObjects/$entity",
            "@odata.type" => "#microsoft.graph.user",
            "givenName" => "Burrito Cat"
          }
        end
        Then { MicrosoftGraph::User === result }
        Then { result.given_name == "Burrito Cat" }
      end
    end
  end

  describe "#contacts" do
    Given(:contacts_url) { "#{me_url}/contacts" }
    Given(:contacts) { { "@odata.context" => "$metadata#users('abcd-efgh')/contacts", "value" => [] } }
    Given(:contacts_response) { double(code: "200", is_success?: true, body: contacts.to_json) }
    Given do
      allow_any_instance_of(Net::HTTP)
        .to receive(:get)
        .with(URI(contacts_url), anything)
        .and_return(contacts_response)
    end
    When(:result) { subject.contacts }
    Then { MicrosoftGraph::CollectionAssociation === result }
    Then { result.empty? }
  end
end
