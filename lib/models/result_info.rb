require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ResultInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The result code.
            @code
            ## 
            # The message.
            @message
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The result sub-code.
            @subcode
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
            ## Gets the code property value. The result code.
            ## @return a integer
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. The result code.
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new resultInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a result_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ResultInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "code" => lambda {|n| @code = n.get_number_value() },
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "subcode" => lambda {|n| @subcode = n.get_number_value() },
                }
            end
            ## 
            ## Gets the message property value. The message.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. The message.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
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
                writer.write_number_value("code", @code)
                writer.write_string_value("message", @message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("subcode", @subcode)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the subcode property value. The result sub-code.
            ## @return a integer
            ## 
            def subcode
                return @subcode
            end
            ## 
            ## Sets the subcode property value. The result sub-code.
            ## @param value Value to set for the subcode property.
            ## @return a void
            ## 
            def subcode=(value)
                @subcode = value
            end
        end
    end
end
