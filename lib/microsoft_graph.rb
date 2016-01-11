require "odata"

Dir[
  File.join(
    File.dirname(__FILE__),
    'microsoft_graph',
    '*'
  )
].each { |f| require f }

class MicrosoftGraph
  attr_reader :service
  BASE_URL = "https://graph.microsoft.com/v1.0/"

  def initialize(options = {}, &auth_callback)
    @service = OData::Service.new(
      base_url: BASE_URL,
      metadata_file: options[:cached_metadata_file],
      auth_callback: auth_callback
    )
    @association_collections = {}
    unless MicrosoftGraph::ClassBuilder.loaded?
      MicrosoftGraph::ClassBuilder.load!(service)
    end

  end

  def containing_navigation_property(type_name)
    navigation_properties.values.find do |navigation_property|
      navigation_property.collection? && navigation_property.type.name == "Collection(#{type_name})"
    end
  end

  def path; end
end
