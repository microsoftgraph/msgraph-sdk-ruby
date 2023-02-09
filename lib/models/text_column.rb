require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TextColumn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Whether to allow multiple lines of text.
            @allow_multiple_lines
            ## 
            # Whether updates to this column should replace existing text, or append to it.
            @append_changes_to_existing_text
            ## 
            # The size of the text box.
            @lines_for_editing
            ## 
            # The maximum number of characters for the value.
            @max_length
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The type of text being stored. Must be one of plain or richText
            @text_type
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
            ## Gets the allowMultipleLines property value. Whether to allow multiple lines of text.
            ## @return a boolean
            ## 
            def allow_multiple_lines
                return @allow_multiple_lines
            end
            ## 
            ## Sets the allowMultipleLines property value. Whether to allow multiple lines of text.
            ## @param value Value to set for the allow_multiple_lines property.
            ## @return a void
            ## 
            def allow_multiple_lines=(value)
                @allow_multiple_lines = value
            end
            ## 
            ## Gets the appendChangesToExistingText property value. Whether updates to this column should replace existing text, or append to it.
            ## @return a boolean
            ## 
            def append_changes_to_existing_text
                return @append_changes_to_existing_text
            end
            ## 
            ## Sets the appendChangesToExistingText property value. Whether updates to this column should replace existing text, or append to it.
            ## @param value Value to set for the append_changes_to_existing_text property.
            ## @return a void
            ## 
            def append_changes_to_existing_text=(value)
                @append_changes_to_existing_text = value
            end
            ## 
            ## Instantiates a new textColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a text_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TextColumn.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowMultipleLines" => lambda {|n| @allow_multiple_lines = n.get_boolean_value() },
                    "appendChangesToExistingText" => lambda {|n| @append_changes_to_existing_text = n.get_boolean_value() },
                    "linesForEditing" => lambda {|n| @lines_for_editing = n.get_number_value() },
                    "maxLength" => lambda {|n| @max_length = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "textType" => lambda {|n| @text_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the linesForEditing property value. The size of the text box.
            ## @return a integer
            ## 
            def lines_for_editing
                return @lines_for_editing
            end
            ## 
            ## Sets the linesForEditing property value. The size of the text box.
            ## @param value Value to set for the lines_for_editing property.
            ## @return a void
            ## 
            def lines_for_editing=(value)
                @lines_for_editing = value
            end
            ## 
            ## Gets the maxLength property value. The maximum number of characters for the value.
            ## @return a integer
            ## 
            def max_length
                return @max_length
            end
            ## 
            ## Sets the maxLength property value. The maximum number of characters for the value.
            ## @param value Value to set for the max_length property.
            ## @return a void
            ## 
            def max_length=(value)
                @max_length = value
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
                writer.write_boolean_value("allowMultipleLines", @allow_multiple_lines)
                writer.write_boolean_value("appendChangesToExistingText", @append_changes_to_existing_text)
                writer.write_number_value("linesForEditing", @lines_for_editing)
                writer.write_number_value("maxLength", @max_length)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("textType", @text_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the textType property value. The type of text being stored. Must be one of plain or richText
            ## @return a string
            ## 
            def text_type
                return @text_type
            end
            ## 
            ## Sets the textType property value. The type of text being stored. Must be one of plain or richText
            ## @param value Value to set for the text_type property.
            ## @return a void
            ## 
            def text_type=(value)
                @text_type = value
            end
        end
    end
end
