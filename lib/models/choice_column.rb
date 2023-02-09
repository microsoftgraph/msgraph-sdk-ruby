require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChoiceColumn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If true, allows custom values that aren't in the configured choices.
            @allow_text_entry
            ## 
            # The list of values available for this column.
            @choices
            ## 
            # How the choices are to be presented in the UX. Must be one of checkBoxes, dropDownMenu, or radioButtons
            @display_as
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the allowTextEntry property value. If true, allows custom values that aren't in the configured choices.
            ## @return a boolean
            ## 
            def allow_text_entry
                return @allow_text_entry
            end
            ## 
            ## Sets the allowTextEntry property value. If true, allows custom values that aren't in the configured choices.
            ## @param value Value to set for the allow_text_entry property.
            ## @return a void
            ## 
            def allow_text_entry=(value)
                @allow_text_entry = value
            end
            ## 
            ## Gets the choices property value. The list of values available for this column.
            ## @return a string
            ## 
            def choices
                return @choices
            end
            ## 
            ## Sets the choices property value. The list of values available for this column.
            ## @param value Value to set for the choices property.
            ## @return a void
            ## 
            def choices=(value)
                @choices = value
            end
            ## 
            ## Instantiates a new choiceColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a choice_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChoiceColumn.new
            end
            ## 
            ## Gets the displayAs property value. How the choices are to be presented in the UX. Must be one of checkBoxes, dropDownMenu, or radioButtons
            ## @return a string
            ## 
            def display_as
                return @display_as
            end
            ## 
            ## Sets the displayAs property value. How the choices are to be presented in the UX. Must be one of checkBoxes, dropDownMenu, or radioButtons
            ## @param value Value to set for the display_as property.
            ## @return a void
            ## 
            def display_as=(value)
                @display_as = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowTextEntry" => lambda {|n| @allow_text_entry = n.get_boolean_value() },
                    "choices" => lambda {|n| @choices = n.get_collection_of_primitive_values(String) },
                    "displayAs" => lambda {|n| @display_as = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
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
                writer.write_boolean_value("allowTextEntry", @allow_text_entry)
                writer.write_collection_of_primitive_values("choices", @choices)
                writer.write_string_value("displayAs", @display_as)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
