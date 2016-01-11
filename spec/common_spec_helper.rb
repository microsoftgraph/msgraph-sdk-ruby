require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

require "rspec"
require 'rspec/given'
require "adal"
require "pry"

require "microsoft_graph"

def create_classes(tokens = nil)
  service = OData::Service.new(
    base_url: "https://graph.microsoft.com/v1.0/",
    namespace: "microsoft.graph",
    metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml"),
    auth_token: tokens && tokens.access_token,
  )
  MicrosoftGraph::ClassBuilder.load!(service)
  service
end
