require 'spec_helper'

describe MicrosoftGraph do
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end

  describe "#me" do
    Given do
      stub_request(:get, "https://graph.microsoft.com/v1.0/me")
        .to_return(body: {id: "userID"}.to_json)
    end
    When(:result) { graph.me }
    Then { MicrosoftGraph::User === result }
    Then { result.parent == graph }
  end

  describe "#drive" do
    Given do
      stub_request(:get, "https://graph.microsoft.com/v1.0/drive")
        .to_return(body: {id: "driveID"}.to_json)
    end
    When(:result) { graph.drive }
    Then { MicrosoftGraph::Drive === result }
    Then { result.parent == graph }
  end

  describe "#users" do
    When(:result) { graph.users }
    Then { MicrosoftGraph::CollectionAssociation === result }

    describe "collection" do
      Given(:subject) { graph.users }
      Then { subject.parent == graph }

      describe "#new" do
        context "with good attributes" do

          When(:result) { subject.create(given_name: "pete") }
          Then { subject.length == 1 }
          Then { subject.first.given_name == "pete" }
          Then { subject.dirty? }
          Then { subject.first.dirty? }
        end
      end
    end
  end
end
