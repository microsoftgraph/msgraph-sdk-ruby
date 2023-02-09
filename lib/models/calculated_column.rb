require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CalculatedColumn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # For dateTime output types, the format of the value. Must be one of dateOnly or dateTime.
            @format
            ## 
            # The formula used to compute the value for this column.
            @formula
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The output type used to format values in this column. Must be one of boolean, currency, dateTime, number, or text.
            @output_type
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
            ## Instantiates a new calculatedColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a calculated_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CalculatedColumn.new
            end
            ## 
            ## Gets the format property value. For dateTime output types, the format of the value. Must be one of dateOnly or dateTime.
            ## @return a string
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. For dateTime output types, the format of the value. Must be one of dateOnly or dateTime.
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## Gets the formula property value. The formula used to compute the value for this column.
            ## @return a string
            ## 
            def formula
                return @formula
            end
            ## 
            ## Sets the formula property value. The formula used to compute the value for this column.
            ## @param value Value to set for the formula property.
            ## @return a void
            ## 
            def formula=(value)
                @formula = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "format" => lambda {|n| @format = n.get_string_value() },
                    "formula" => lambda {|n| @formula = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "outputType" => lambda {|n| @output_type = n.get_string_value() },
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
            ## Gets the outputType property value. The output type used to format values in this column. Must be one of boolean, currency, dateTime, number, or text.
            ## @return a string
            ## 
            def output_type
                return @output_type
            end
            ## 
            ## Sets the outputType property value. The output type used to format values in this column. Must be one of boolean, currency, dateTime, number, or text.
            ## @param value Value to set for the output_type property.
            ## @return a void
            ## 
            def output_type=(value)
                @output_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("format", @format)
                writer.write_string_value("formula", @formula)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("outputType", @output_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
