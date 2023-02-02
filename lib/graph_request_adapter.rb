require 'microsoft_graph_core'
require 'microsoft_kiota_abstractions'
require_relative 'version_information'
module MicrosoftGraph
	class GraphRequestAdapter < MicrosoftGraphCore::GraphRequestAdapterBase
		def initialize(authentication_provider, client_options=MicrosoftGraphCore::GraphClientOptions.new, parse_node_factory=MicrosoftKiotaAbstractions::ParseNodeFactoryRegistry.default_instance, serialization_writer_factory=MicrosoftKiotaAbstractions::SerializationWriterFactoryRegistry.default_instance, client = nil)
			options = MicrosoftGraphCore::GraphClientOptions.new
			options.graph_service_library_version = "v" + MicrosoftGraph::VersionInformation::VERSION
			options.graph_service_version = "beta"
			super(authentication_provider, options, parse_node_factory, serialization_writer_factory, client)
		end
	end
end