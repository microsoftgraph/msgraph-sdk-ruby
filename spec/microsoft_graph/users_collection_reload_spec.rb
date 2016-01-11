require 'spec_helper'

describe 'CollectionAssociation#reload!' do
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
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end
  Given(:subject) do
    MicrosoftGraph::CollectionAssociation.new(
      resource_name: 'users',
      parent:        graph,
      graph:         graph,
      type:          service.get_type_by_name("Collection(microsoft.graph.user)")
    )
  end

  context 'empty' do
    context 'with changes on the server' do
      Given do
        stub_request(:get, "https://graph.microsoft.com/v1.0/users")
          .and_return(body: {value: [{id: 'userID'}]}.to_json)
      end
      When(:original_count) { subject.size }
      Then { original_count == 0 }
      When { subject.reload! }
      Then { subject.size == 1 }
    end
  end

  context 'with unpersisted dirty members' do
    Given do
      stub_request(:get, "https://graph.microsoft.com/v1.0/users")
        .and_return(body: {value: []}.to_json)
    end
    When { subject.build({given_name: "Jacob"}) }
    When(:dirty_count) { subject.size }
    When(:is_dirty) { subject.dirty? }
    Then { dirty_count == 1 && is_dirty }
    When { subject.reload! }
    Then { ! subject.dirty? }
    Then { subject.size == 0 }
  end
	context 'with persisted dirty members' do
    Given do
      stub_request(:get, "https://graph.microsoft.com/v1.0/users")
        .and_return(body: {value: [{id: 'userID'}]}.to_json)
    end
    When { subject.each { |u| u.given_name = "Becky" } }
    When(:collection_count) { subject.size }
    When(:is_dirty) { subject.dirty? }
    Then { collection_count == 1 }
    Then { is_dirty }
    When { subject.reload! }
    Then { ! subject.dirty? }
    Then { subject.size == 1 }
	end
end
