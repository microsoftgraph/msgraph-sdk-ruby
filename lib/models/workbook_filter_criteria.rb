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
            # The color applied to the cell.
            @color
            ## 
            # A custom criterion.
            @criterion1
            ## 
            # A custom criterion.
            @criterion2
            ## 
            # A dynamic formula specified in a custom filter.
            @dynamic_criteria
            ## 
            # Indicates whether a filter is applied to a column.
            @filter_on
            ## 
            # An icon applied to a cell via conditional formatting.
            @icon
            ## 
            # The OdataType property
            @odata_type
            ## 
            # An operator in a cell; for example, =, >, <, <=, or <>.
            @operator
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the color property value. The color applied to the cell.
            ## @return a string
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. The color applied to the cell.
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new WorkbookFilterCriteria and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_filter_criteria
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookFilterCriteria.new
            end
            ## 
            ## Gets the criterion1 property value. A custom criterion.
            ## @return a string
            ## 
            def criterion1
                return @criterion1
            end
            ## 
            ## Sets the criterion1 property value. A custom criterion.
            ## @param value Value to set for the criterion1 property.
            ## @return a void
            ## 
            def criterion1=(value)
                @criterion1 = value
            end
            ## 
            ## Gets the criterion2 property value. A custom criterion.
            ## @return a string
            ## 
            def criterion2
                return @criterion2
            end
            ## 
            ## Sets the criterion2 property value. A custom criterion.
            ## @param value Value to set for the criterion2 property.
            ## @return a void
            ## 
            def criterion2=(value)
                @criterion2 = value
            end
            ## 
            ## Gets the dynamicCriteria property value. A dynamic formula specified in a custom filter.
            ## @return a string
            ## 
            def dynamic_criteria
                return @dynamic_criteria
            end
            ## 
            ## Sets the dynamicCriteria property value. A dynamic formula specified in a custom filter.
            ## @param value Value to set for the dynamicCriteria property.
            ## @return a void
            ## 
            def dynamic_criteria=(value)
                @dynamic_criteria = value
            end
            ## 
            ## Gets the filterOn property value. Indicates whether a filter is applied to a column.
            ## @return a string
            ## 
            def filter_on
                return @filter_on
            end
            ## 
            ## Sets the filterOn property value. Indicates whether a filter is applied to a column.
            ## @param value Value to set for the filterOn property.
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
                }
            end
            ## 
            ## Gets the icon property value. An icon applied to a cell via conditional formatting.
            ## @return a workbook_icon
            ## 
            def icon
                return @icon
            end
            ## 
            ## Sets the icon property value. An icon applied to a cell via conditional formatting.
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the operator property value. An operator in a cell; for example, =, >, <, <=, or <>.
            ## @return a string
            ## 
            def operator
                return @operator
            end
            ## 
            ## Sets the operator property value. An operator in a cell; for example, =, >, <, <=, or <>.
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
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
