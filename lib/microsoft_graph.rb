require "odata"

Dir[
  File.join(
    File.dirname(__FILE__),
    'microsoft_graph',
    '*'
  )
].sort.each { |f| require f }

class MicrosoftGraph
  attr_reader :service
  @@base_url
  ROOT_URL = "https://graph.microsoft.com"

  def self.base_url(api_version = "v1.0")
    @@base_url ||= "#{ROOT_URL}/#{api_version}/"
  end

  def initialize(options = {}, &auth_callback)
    @service = OData::Service.new(
      api_version: options[:api_version],
      auth_callback: auth_callback,
      base_url: self.class.base_url,
      metadata_file: options[:cached_metadata_file]
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
