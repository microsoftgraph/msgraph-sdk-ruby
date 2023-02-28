require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/teleconference_device_quality'
require_relative '../../communications'
require_relative '../calls'
require_relative './log_teleconference_device_quality'

module MicrosoftGraph
    module Communications
        module Calls
            module LogTeleconferenceDeviceQuality
                class LogTeleconferenceDeviceQualityPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The quality property
                    @quality
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
                    ## Instantiates a new logTeleconferenceDeviceQualityPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a log_teleconference_device_quality_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LogTeleconferenceDeviceQualityPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "quality" => lambda {|n| @quality = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeleconferenceDeviceQuality.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Gets the quality property value. The quality property
                    ## @return a teleconference_device_quality
                    ## 
                    def quality
                        return @quality
                    end
                    ## 
                    ## Sets the quality property value. The quality property
                    ## @param value Value to set for the quality property.
                    ## @return a void
                    ## 
                    def quality=(value)
                        @quality = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("quality", @quality)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
