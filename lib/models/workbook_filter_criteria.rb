require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookFilterCriteria
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The color property
            @color
            ## 
            # The criterion1 property
            @criterion1
            ## 
            # The criterion2 property
            @criterion2
            ## 
            # The dynamicCriteria property
            @dynamic_criteria
            ## 
            # The filterOn property
            @filter_on
            ## 
            # The icon property
            @icon
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operator property
            @operator
            ## 
            # The values property
            @values
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the color property value. The color property
            ## @return a string
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. The color property
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new workbookFilterCriteria and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_filter_criteria
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookFilterCriteria.new
            end
            ## 
            ## Gets the criterion1 property value. The criterion1 property
            ## @return a string
            ## 
            def criterion1
                return @criterion1
            end
            ## 
            ## Sets the criterion1 property value. The criterion1 property
            ## @param value Value to set for the criterion1 property.
            ## @return a void
            ## 
            def criterion1=(value)
                @criterion1 = value
            end
            ## 
            ## Gets the criterion2 property value. The criterion2 property
            ## @return a string
            ## 
            def criterion2
                return @criterion2
            end
            ## 
            ## Sets the criterion2 property value. The criterion2 property
            ## @param value Value to set for the criterion2 property.
            ## @return a void
            ## 
            def criterion2=(value)
                @criterion2 = value
            end
            ## 
            ## Gets the dynamicCriteria property value. The dynamicCriteria property
            ## @return a string
            ## 
            def dynamic_criteria
                return @dynamic_criteria
            end
            ## 
            ## Sets the dynamicCriteria property value. The dynamicCriteria property
            ## @param value Value to set for the dynamic_criteria property.
            ## @return a void
            ## 
            def dynamic_criteria=(value)
                @dynamic_criteria = value
            end
            ## 
            ## Gets the filterOn property value. The filterOn property
            ## @return a string
            ## 
            def filter_on
                return @filter_on
            end
            ## 
            ## Sets the filterOn property value. The filterOn property
            ## @param value Value to set for the filter_on property.
            ## @return a void
            ## 
            def filter_on=(value)
                @filter_on = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "color" => lambda {|n| @color = n.get_string_value() },
                    "criterion1" => lambda {|n| @criterion1 = n.get_string_value() },
                    "criterion2" => lambda {|n| @criterion2 = n.get_string_value() },
                    "dynamicCriteria" => lambda {|n| @dynamic_criteria = n.get_string_value() },
                    "filterOn" => lambda {|n| @filter_on = n.get_string_value() },
                    "icon" => lambda {|n| @icon = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookIcon.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operator" => lambda {|n| @operator = n.get_string_value() },
                    "values" => lambda {|n| @values = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the icon property value. The icon property
            ## @return a workbook_icon
            ## 
            def icon
                return @icon
            end
            ## 
            ## Sets the icon property value. The icon property
            ## @param value Value to set for the icon property.
            ## @return a void
            ## 
            def icon=(value)
                @icon = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the operator property value. The operator property
            ## @return a string
            ## 
            def operator
                return @operator
            end
            ## 
            ## Sets the operator property value. The operator property
            ## @param value Value to set for the operator property.
            ## @return a void
            ## 
            def operator=(value)
                @operator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("color", @color)
                writer.write_string_value("criterion1", @criterion1)
                writer.write_string_value("criterion2", @criterion2)
                writer.write_string_value("dynamicCriteria", @dynamic_criteria)
                writer.write_string_value("filterOn", @filter_on)
                writer.write_object_value("icon", @icon)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operator", @operator)
                writer.write_object_value("values", @values)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the values property value. The values property
            ## @return a json
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. The values property
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
