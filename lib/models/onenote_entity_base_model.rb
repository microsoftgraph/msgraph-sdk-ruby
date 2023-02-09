require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnenoteEntityBaseModel < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The endpoint where you can get details about the page. Read-only.
            @self_escaped
            ## 
            ## Instantiates a new onenoteEntityBaseModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a onenote_entity_base_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.notebook"
                            return Notebook.new
                        when "#microsoft.graph.onenoteEntityHierarchyModel"
                            return OnenoteEntityHierarchyModel.new
                        when "#microsoft.graph.onenoteEntitySchemaObjectModel"
                            return OnenoteEntitySchemaObjectModel.new
                        when "#microsoft.graph.onenotePage"
                            return OnenotePage.new
                        when "#microsoft.graph.onenoteResource"
                            return OnenoteResource.new
                        when "#microsoft.graph.onenoteSection"
                            return OnenoteSection.new
                        when "#microsoft.graph.sectionGroup"
                            return SectionGroup.new
                    end
                end
                return OnenoteEntityBaseModel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "self" => lambda {|n| @self_escaped = n.get_string_value() },
                })
            end
            ## 
            ## Gets the self property value. The endpoint where you can get details about the page. Read-only.
            ## @return a string
            ## 
            def self_escaped
                return @self_escaped
            end
            ## 
            ## Sets the self property value. The endpoint where you can get details about the page. Read-only.
            ## @param value Value to set for the self property.
            ## @return a void
            ## 
            def self_escaped=(value)
                @self_escaped = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("self", @self_escaped)
            end
        end
    end
end
