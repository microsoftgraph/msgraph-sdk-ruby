require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EdgeSearchEngineCustom < MicrosoftGraph::Models::EdgeSearchEngineBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Points to a https link containing the OpenSearch xml file that contains, at minimum, the short name and the URL to the search Engine.
            @edge_search_engine_open_search_xml_url
            ## 
            ## Instantiates a new EdgeSearchEngineCustom and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.edgeSearchEngineCustom"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a edge_search_engine_custom
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EdgeSearchEngineCustom.new
            end
            ## 
            ## Gets the edgeSearchEngineOpenSearchXmlUrl property value. Points to a https link containing the OpenSearch xml file that contains, at minimum, the short name and the URL to the search Engine.
            ## @return a string
            ## 
            def edge_search_engine_open_search_xml_url
                return @edge_search_engine_open_search_xml_url
            end
            ## 
            ## Sets the edgeSearchEngineOpenSearchXmlUrl property value. Points to a https link containing the OpenSearch xml file that contains, at minimum, the short name and the URL to the search Engine.
            ## @param value Value to set for the edge_search_engine_open_search_xml_url property.
            ## @return a void
            ## 
            def edge_search_engine_open_search_xml_url=(value)
                @edge_search_engine_open_search_xml_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "edgeSearchEngineOpenSearchXmlUrl" => lambda {|n| @edge_search_engine_open_search_xml_url = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("edgeSearchEngineOpenSearchXmlUrl", @edge_search_engine_open_search_xml_url)
            end
        end
    end
end
