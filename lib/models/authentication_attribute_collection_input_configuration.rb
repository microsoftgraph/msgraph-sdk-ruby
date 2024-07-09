require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationAttributeCollectionInputConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The built-in or custom attribute for which a value is being collected.
            @attribute
            ## 
            # The default value of the attribute displayed to the end user.
            @default_value
            ## 
            # Whether the attribute is editable by the end user.
            @editable
            ## 
            # Whether the attribute is displayed to the end user.
            @hidden
            ## 
            # The inputType property
            @input_type
            ## 
            # The label of the attribute field that is displayed to end user, unless overridden.
            @label
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The option values for certain multiple-option input types.
            @options
            ## 
            # Whether the field is required.
            @required
            ## 
            # The regex for the value of the field.
            @validation_reg_ex
            ## 
            # Whether the value collected is stored.
            @write_to_directory
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
            ## Gets the attribute property value. The built-in or custom attribute for which a value is being collected.
            ## @return a string
            ## 
            def attribute
                return @attribute
            end
            ## 
            ## Sets the attribute property value. The built-in or custom attribute for which a value is being collected.
            ## @param value Value to set for the attribute property.
            ## @return a void
            ## 
            def attribute=(value)
                @attribute = value
            end
            ## 
            ## Instantiates a new AuthenticationAttributeCollectionInputConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_attribute_collection_input_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationAttributeCollectionInputConfiguration.new
            end
            ## 
            ## Gets the defaultValue property value. The default value of the attribute displayed to the end user.
            ## @return a string
            ## 
            def default_value
                return @default_value
            end
            ## 
            ## Sets the defaultValue property value. The default value of the attribute displayed to the end user.
            ## @param value Value to set for the defaultValue property.
            ## @return a void
            ## 
            def default_value=(value)
                @default_value = value
            end
            ## 
            ## Gets the editable property value. Whether the attribute is editable by the end user.
            ## @return a boolean
            ## 
            def editable
                return @editable
            end
            ## 
            ## Sets the editable property value. Whether the attribute is editable by the end user.
            ## @param value Value to set for the editable property.
            ## @return a void
            ## 
            def editable=(value)
                @editable = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attribute" => lambda {|n| @attribute = n.get_string_value() },
                    "defaultValue" => lambda {|n| @default_value = n.get_string_value() },
                    "editable" => lambda {|n| @editable = n.get_boolean_value() },
                    "hidden" => lambda {|n| @hidden = n.get_boolean_value() },
                    "inputType" => lambda {|n| @input_type = n.get_enum_value(MicrosoftGraph::Models::AuthenticationAttributeCollectionInputType) },
                    "label" => lambda {|n| @label = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "options" => lambda {|n| @options = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationAttributeCollectionOptionConfiguration.create_from_discriminator_value(pn) }) },
                    "required" => lambda {|n| @required = n.get_boolean_value() },
                    "validationRegEx" => lambda {|n| @validation_reg_ex = n.get_string_value() },
                    "writeToDirectory" => lambda {|n| @write_to_directory = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the hidden property value. Whether the attribute is displayed to the end user.
            ## @return a boolean
            ## 
            def hidden
                return @hidden
            end
            ## 
            ## Sets the hidden property value. Whether the attribute is displayed to the end user.
            ## @param value Value to set for the hidden property.
            ## @return a void
            ## 
            def hidden=(value)
                @hidden = value
            end
            ## 
            ## Gets the inputType property value. The inputType property
            ## @return a authentication_attribute_collection_input_type
            ## 
            def input_type
                return @input_type
            end
            ## 
            ## Sets the inputType property value. The inputType property
            ## @param value Value to set for the inputType property.
            ## @return a void
            ## 
            def input_type=(value)
                @input_type = value
            end
            ## 
            ## Gets the label property value. The label of the attribute field that is displayed to end user, unless overridden.
            ## @return a string
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. The label of the attribute field that is displayed to end user, unless overridden.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
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
            ## Gets the options property value. The option values for certain multiple-option input types.
            ## @return a authentication_attribute_collection_option_configuration
            ## 
            def options
                return @options
            end
            ## 
            ## Sets the options property value. The option values for certain multiple-option input types.
            ## @param value Value to set for the options property.
            ## @return a void
            ## 
            def options=(value)
                @options = value
            end
            ## 
            ## Gets the required property value. Whether the field is required.
            ## @return a boolean
            ## 
            def required
                return @required
            end
            ## 
            ## Sets the required property value. Whether the field is required.
            ## @param value Value to set for the required property.
            ## @return a void
            ## 
            def required=(value)
                @required = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("attribute", @attribute)
                writer.write_string_value("defaultValue", @default_value)
                writer.write_boolean_value("editable", @editable)
                writer.write_boolean_value("hidden", @hidden)
                writer.write_enum_value("inputType", @input_type)
                writer.write_string_value("label", @label)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("options", @options)
                writer.write_boolean_value("required", @required)
                writer.write_string_value("validationRegEx", @validation_reg_ex)
                writer.write_boolean_value("writeToDirectory", @write_to_directory)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the validationRegEx property value. The regex for the value of the field.
            ## @return a string
            ## 
            def validation_reg_ex
                return @validation_reg_ex
            end
            ## 
            ## Sets the validationRegEx property value. The regex for the value of the field.
            ## @param value Value to set for the validationRegEx property.
            ## @return a void
            ## 
            def validation_reg_ex=(value)
                @validation_reg_ex = value
            end
            ## 
            ## Gets the writeToDirectory property value. Whether the value collected is stored.
            ## @return a boolean
            ## 
            def write_to_directory
                return @write_to_directory
            end
            ## 
            ## Sets the writeToDirectory property value. Whether the value collected is stored.
            ## @param value Value to set for the writeToDirectory property.
            ## @return a void
            ## 
            def write_to_directory=(value)
                @write_to_directory = value
            end
        end
    end
end
