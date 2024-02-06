require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityIndicator < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The artifact property
            @artifact
            ## 
            # The source property
            @source
            ## 
            ## Gets the artifact property value. The artifact property
            ## @return a security_artifact
            ## 
            def artifact
                return @artifact
            end
            ## 
            ## Sets the artifact property value. The artifact property
            ## @param value Value to set for the artifact property.
            ## @return a void
            ## 
            def artifact=(value)
                @artifact = value
            end
            ## 
            ## Instantiates a new securityIndicator and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_indicator
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.articleIndicator"
                            return SecurityArticleIndicator.new
                        when "#microsoft.graph.security.intelligenceProfileIndicator"
                            return SecurityIntelligenceProfileIndicator.new
                    end
                end
                return SecurityIndicator.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "artifact" => lambda {|n| @artifact = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityArtifact.create_from_discriminator_value(pn) }) },
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraph::Models::SecurityIndicatorSource) },
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
                writer.write_object_value("artifact", @artifact) unless @artifact.nil?
                writer.write_enum_value("source", @source) unless @source.nil?
            end
            ## 
            ## Gets the source property value. The source property
            ## @return a security_indicator_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source property
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
        end
    end
end
