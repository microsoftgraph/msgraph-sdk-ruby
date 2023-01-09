require 'microsoft_kiota_abstractions'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './clean_windows_device'

module MicrosoftGraph::DeviceManagement::ManagedDevices::Item::CleanWindowsDevice
    class CleanWindowsDevicePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The keepUserData property
        @keep_user_data
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
        ## Instantiates a new cleanWindowsDevicePostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a clean_windows_device_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CleanWindowsDevicePostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "keepUserData" => lambda {|n| @keep_user_data = n.get_boolean_value() },
            }
        end
        ## 
        ## Gets the keepUserData property value. The keepUserData property
        ## @return a boolean
        ## 
        def keep_user_data
            return @keep_user_data
        end
        ## 
        ## Sets the keepUserData property value. The keepUserData property
        ## @param value Value to set for the keepUserData property.
        ## @return a void
        ## 
        def keep_user_data=(value)
            @keep_user_data = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("keepUserData", @keep_user_data)
            writer.write_additional_data(@additional_data)
        end
    end
end
