require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityOcrSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether or not OCR is enabled for the case.
            @is_enabled
            ## 
            # Maximum image size that will be processed in KB).
            @max_image_size
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The timeout duration for the OCR engine. A longer timeout might increase success of OCR, but might add to the total processing time.
            @timeout
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
            ## Instantiates a new securityOcrSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ocr_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityOcrSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "maxImageSize" => lambda {|n| @max_image_size = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "timeout" => lambda {|n| @timeout = n.get_duration_value() },
                }
            end
            ## 
            ## Gets the isEnabled property value. Indicates whether or not OCR is enabled for the case.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Indicates whether or not OCR is enabled for the case.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the maxImageSize property value. Maximum image size that will be processed in KB).
            ## @return a integer
            ## 
            def max_image_size
                return @max_image_size
            end
            ## 
            ## Sets the maxImageSize property value. Maximum image size that will be processed in KB).
            ## @param value Value to set for the maxImageSize property.
            ## @return a void
            ## 
            def max_image_size=(value)
                @max_image_size = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isEnabled", @is_enabled) unless @is_enabled.nil?
                writer.write_number_value("maxImageSize", @max_image_size) unless @max_image_size.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_duration_value("timeout", @timeout) unless @timeout.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the timeout property value. The timeout duration for the OCR engine. A longer timeout might increase success of OCR, but might add to the total processing time.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def timeout
                return @timeout
            end
            ## 
            ## Sets the timeout property value. The timeout duration for the OCR engine. A longer timeout might increase success of OCR, but might add to the total processing time.
            ## @param value Value to set for the timeout property.
            ## @return a void
            ## 
            def timeout=(value)
                @timeout = value
            end
        end
    end
end
