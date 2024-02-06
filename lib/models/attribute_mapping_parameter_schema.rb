require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttributeMappingParameterSchema
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The given parameter can be provided multiple times (for example, multiple input strings in the Concatenate(string,string,...) function).
            @allow_multiple_occurrences
            ## 
            # Parameter name.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # true if the parameter is required; otherwise false.
            @required
            ## 
            # The type property
            @type
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
            ## Gets the allowMultipleOccurrences property value. The given parameter can be provided multiple times (for example, multiple input strings in the Concatenate(string,string,...) function).
            ## @return a boolean
            ## 
            def allow_multiple_occurrences
                return @allow_multiple_occurrences
            end
            ## 
            ## Sets the allowMultipleOccurrences property value. The given parameter can be provided multiple times (for example, multiple input strings in the Concatenate(string,string,...) function).
            ## @param value Value to set for the allowMultipleOccurrences property.
            ## @return a void
            ## 
            def allow_multiple_occurrences=(value)
                @allow_multiple_occurrences = value
            end
            ## 
            ## Instantiates a new attributeMappingParameterSchema and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attribute_mapping_parameter_schema
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttributeMappingParameterSchema.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowMultipleOccurrences" => lambda {|n| @allow_multiple_occurrences = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "required" => lambda {|n| @required = n.get_boolean_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::AttributeType) },
                }
            end
            ## 
            ## Gets the name property value. Parameter name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Parameter name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the required property value. true if the parameter is required; otherwise false.
            ## @return a boolean
            ## 
            def required
                return @required
            end
            ## 
            ## Sets the required property value. true if the parameter is required; otherwise false.
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
                writer.write_boolean_value("allowMultipleOccurrences", @allow_multiple_occurrences) unless @allow_multiple_occurrences.nil?
                writer.write_string_value("name", @name) unless @name.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_boolean_value("required", @required) unless @required.nil?
                writer.write_enum_value("type", @type) unless @type.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a attribute_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
