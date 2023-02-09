require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ListItemVersion < MicrosoftGraph::Models::BaseItemVersion
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of the fields and values for this version of the list item.
            @fields
            ## 
            ## Instantiates a new ListItemVersion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.listItemVersion"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a list_item_version
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.documentSetVersion"
                            return DocumentSetVersion.new
                    end
                end
                return ListItemVersion.new
            end
            ## 
            ## Gets the fields property value. A collection of the fields and values for this version of the list item.
            ## @return a field_value_set
            ## 
            def fields
                return @fields
            end
            ## 
            ## Sets the fields property value. A collection of the fields and values for this version of the list item.
            ## @param value Value to set for the fields property.
            ## @return a void
            ## 
            def fields=(value)
                @fields = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fields" => lambda {|n| @fields = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FieldValueSet.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("fields", @fields)
            end
        end
    end
end
