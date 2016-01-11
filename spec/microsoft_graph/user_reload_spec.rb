require 'spec_helper'

create_classes

describe 'User#reload!' do
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end
  context "on a persisted" do
    Given(:subject) do
      MicrosoftGraph::User.new(
        resource_name: 'me',
        parent: graph,
        graph: graph,
        persisted: true,
        attributes: {
          id: 'userID'
        }
      )
    end
    context "dirty resource" do
      Given do
        stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID").and_return(body: {id: 'userID'}.to_json)
      end
      Given { subject.given_name = "Dino" }
      When { subject.reload! }
      Then { ! subject.dirty? }
      Then { subject.given_name.nil? }
      Then { subject.id == 'userID' }
    end
    context "with changes on the server" do
      Given do
        stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID").and_return(body: {id: 'userID'}.to_json)
        stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID?$select=surname").and_return(body: {surname: "Saur"}.to_json)
      end
      When { subject.reload! }
      Then { ! subject.dirty? }
      Then { subject.surname == 'Saur' }
      Then { subject.id == 'userID' }
    end
  end
  context 'on a non-persisted' do
    Given(:subject) do
      MicrosoftGraph::User.new(
        resource_name: 'me',
        parent: graph,
        graph: graph
      )
    end
    context 'dirty resource' do
      Given { subject.given_name = 'Bronto' }
      When { subject.reload! }
      Then { ! subject.dirty? }
      Then { subject.given_name.nil? }
    end
  end
end
