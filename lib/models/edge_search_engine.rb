require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EdgeSearchEngine < MicrosoftGraph::Models::EdgeSearchEngineBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Allows IT admind to set a predefined default search engine for MDM-Controlled devices
            @edge_search_engine_type
            ## 
            ## Instantiates a new EdgeSearchEngine and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.edgeSearchEngine"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a edge_search_engine
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EdgeSearchEngine.new
            end
            ## 
            ## Gets the edgeSearchEngineType property value. Allows IT admind to set a predefined default search engine for MDM-Controlled devices
            ## @return a edge_search_engine_type
            ## 
            def edge_search_engine_type
                return @edge_search_engine_type
            end
            ## 
            ## Sets the edgeSearchEngineType property value. Allows IT admind to set a predefined default search engine for MDM-Controlled devices
            ## @param value Value to set for the edge_search_engine_type property.
            ## @return a void
            ## 
            def edge_search_engine_type=(value)
                @edge_search_engine_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "edgeSearchEngineType" => lambda {|n| @edge_search_engine_type = n.get_enum_value(MicrosoftGraph::Models::EdgeSearchEngineType) },
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
                writer.write_enum_value("edgeSearchEngineType", @edge_search_engine_type)
            end
        end
    end
end
