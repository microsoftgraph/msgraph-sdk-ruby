require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraph
    module Models
        module ExternalConnectors
            class DisplayTemplate
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The text identifier for the display template; for example, contosoTickets. Maximum 16 characters. Only alphanumeric characters allowed.
                @id
                ## 
                # The layout property
                @layout
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Defines the priority of a display template. A display template with priority 1 is evaluated before a template with priority 4. Gaps in priority values are supported. Must be positive value.
                @priority
                ## 
                # Specifies additional rules for selecting this display template based on the item schema. Optional.
                @rules
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the additionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new displayTemplate and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a display_template
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DisplayTemplate.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "layout" => lambda {|n| @layout = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "priority" => lambda {|n| @priority = n.get_number_value() },
                        "rules" => lambda {|n| @rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::PropertyRule.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. The text identifier for the display template; for example, contosoTickets. Maximum 16 characters. Only alphanumeric characters allowed.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. The text identifier for the display template; for example, contosoTickets. Maximum 16 characters. Only alphanumeric characters allowed.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the layout property value. The layout property
                ## @return a json
                ## 
                def layout
                    return @layout
                end
                ## 
                ## Sets the layout property value. The layout property
                ## @param value Value to set for the layout property.
                ## @return a void
                ## 
                def layout=(value)
                    @layout = value
                end
                ## 
                ## Gets the @odata.type property value. The OdataType property
                ## @return a string
                ## 
                def odata_type
                    return @odata_type
                end
                ## 
                ## Sets the @odata.type property value. The OdataType property
                ## @param value Value to set for the @odata.type property.
                ## @return a void
                ## 
                def odata_type=(value)
                    @odata_type = value
                end
                ## 
                ## Gets the priority property value. Defines the priority of a display template. A display template with priority 1 is evaluated before a template with priority 4. Gaps in priority values are supported. Must be positive value.
                ## @return a integer
                ## 
                def priority
                    return @priority
                end
                ## 
                ## Sets the priority property value. Defines the priority of a display template. A display template with priority 1 is evaluated before a template with priority 4. Gaps in priority values are supported. Must be positive value.
                ## @param value Value to set for the priority property.
                ## @return a void
                ## 
                def priority=(value)
                    @priority = value
                end
                ## 
                ## Gets the rules property value. Specifies additional rules for selecting this display template based on the item schema. Optional.
                ## @return a property_rule
                ## 
                def rules
                    return @rules
                end
                ## 
                ## Sets the rules property value. Specifies additional rules for selecting this display template based on the item schema. Optional.
                ## @param value Value to set for the rules property.
                ## @return a void
                ## 
                def rules=(value)
                    @rules = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("id", @id)
                    writer.write_object_value("layout", @layout)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("priority", @priority)
                    writer.write_collection_of_object_values("rules", @rules)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
