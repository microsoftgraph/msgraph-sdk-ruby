require 'spec_helper'

create_classes

describe MicrosoftGraph::User do
  Given(:attributes) { { "givenName" => "Dinosaur" } }
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end
  Given do
    stub_request(:post, 'https://graph.microsoft.com/v1.0/users')
      .and_return(body: {id: 'userID'}.to_json)
  end
  Given(:subject) { graph.users.create(attributes: attributes) }

  describe "#delete!" do
    Given do
      stub_request(:delete, 'https://graph.microsoft.com/v1.0/users/userID')
    end
    When(:result) { subject.delete! }
    Then { result }
    Then { ! subject.persisted? }
  end

end
