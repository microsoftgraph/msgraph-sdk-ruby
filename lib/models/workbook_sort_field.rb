require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookSortField
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents whether the sorting is done in an ascending fashion.
            @ascending
            ## 
            # Represents the color that is the target of the condition if the sorting is on font or cell color.
            @color
            ## 
            # Represents additional sorting options for this field. The possible values are: Normal, TextAsNumber.
            @data_option
            ## 
            # Represents the icon that is the target of the condition if the sorting is on the cell's icon.
            @icon
            ## 
            # Represents the column (or row, depending on the sort orientation) that the condition is on. Represented as an offset from the first column (or row).
            @key
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents the type of sorting of this condition. The possible values are: Value, CellColor, FontColor, Icon.
            @sort_on
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
            ## Gets the ascending property value. Represents whether the sorting is done in an ascending fashion.
            ## @return a boolean
            ## 
            def ascending
                return @ascending
            end
            ## 
            ## Sets the ascending property value. Represents whether the sorting is done in an ascending fashion.
            ## @param value Value to set for the ascending property.
            ## @return a void
            ## 
            def ascending=(value)
                @ascending = value
            end
            ## 
            ## Gets the color property value. Represents the color that is the target of the condition if the sorting is on font or cell color.
            ## @return a string
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. Represents the color that is the target of the condition if the sorting is on font or cell color.
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new workbookSortField and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_sort_field
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookSortField.new
            end
            ## 
            ## Gets the dataOption property value. Represents additional sorting options for this field. The possible values are: Normal, TextAsNumber.
            ## @return a string
            ## 
            def data_option
                return @data_option
            end
            ## 
            ## Sets the dataOption property value. Represents additional sorting options for this field. The possible values are: Normal, TextAsNumber.
            ## @param value Value to set for the data_option property.
            ## @return a void
            ## 
            def data_option=(value)
                @data_option = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "ascending" => lambda {|n| @ascending = n.get_boolean_value() },
                    "color" => lambda {|n| @color = n.get_string_value() },
                    "dataOption" => lambda {|n| @data_option = n.get_string_value() },
                    "icon" => lambda {|n| @icon = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookIcon.create_from_discriminator_value(pn) }) },
                    "key" => lambda {|n| @key = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sortOn" => lambda {|n| @sort_on = n.get_string_value() },
                }
            end
            ## 
            ## Gets the icon property value. Represents the icon that is the target of the condition if the sorting is on the cell's icon.
            ## @return a workbook_icon
            ## 
            def icon
                return @icon
            end
            ## 
            ## Sets the icon property value. Represents the icon that is the target of the condition if the sorting is on the cell's icon.
            ## @param value Value to set for the icon property.
            ## @return a void
            ## 
            def icon=(value)
                @icon = value
            end
            ## 
            ## Gets the key property value. Represents the column (or row, depending on the sort orientation) that the condition is on. Represented as an offset from the first column (or row).
            ## @return a integer
            ## 
            def key
                return @key
            end
            ## 
            ## Sets the key property value. Represents the column (or row, depending on the sort orientation) that the condition is on. Represented as an offset from the first column (or row).
            ## @param value Value to set for the key property.
            ## @return a void
            ## 
            def key=(value)
                @key = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("ascending", @ascending)
                writer.write_string_value("color", @color)
                writer.write_string_value("dataOption", @data_option)
                writer.write_object_value("icon", @icon)
                writer.write_number_value("key", @key)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sortOn", @sort_on)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sortOn property value. Represents the type of sorting of this condition. The possible values are: Value, CellColor, FontColor, Icon.
            ## @return a string
            ## 
            def sort_on
                return @sort_on
            end
            ## 
            ## Sets the sortOn property value. Represents the type of sorting of this condition. The possible values are: Value, CellColor, FontColor, Icon.
            ## @param value Value to set for the sort_on property.
            ## @return a void
            ## 
            def sort_on=(value)
                @sort_on = value
            end
        end
    end
end
