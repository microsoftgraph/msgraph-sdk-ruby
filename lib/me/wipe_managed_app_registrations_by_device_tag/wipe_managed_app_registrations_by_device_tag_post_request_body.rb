require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../me'
require_relative './wipe_managed_app_registrations_by_device_tag'

module MicrosoftGraph
    module Me
        module WipeManagedAppRegistrationsByDeviceTag
            class WipeManagedAppRegistrationsByDeviceTagPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The deviceTag property
                @device_tag
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
                ## Instantiates a new wipeManagedAppRegistrationsByDeviceTagPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a wipe_managed_app_registrations_by_device_tag_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WipeManagedAppRegistrationsByDeviceTagPostRequestBody.new
                end
                ## 
                ## Gets the deviceTag property value. The deviceTag property
                ## @return a string
                ## 
                def device_tag
                    return @device_tag
                end
                ## 
                ## Sets the deviceTag property value. The deviceTag property
                ## @param value Value to set for the device_tag property.
                ## @return a void
                ## 
                def device_tag=(value)
                    @device_tag = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "deviceTag" => lambda {|n| @device_tag = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("deviceTag", @device_tag)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
