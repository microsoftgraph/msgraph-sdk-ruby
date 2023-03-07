require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/update_windows_device_account_action_parameter'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './update_windows_device_account'

module MicrosoftGraph
    module DeviceManagement
        module ManagedDevices
            module Item
                module UpdateWindowsDeviceAccount
                    class UpdateWindowsDeviceAccountPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The updateWindowsDeviceAccountActionParameter property
                        @update_windows_device_account_action_parameter
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
                        ## Instantiates a new updateWindowsDeviceAccountPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a update_windows_device_account_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UpdateWindowsDeviceAccountPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "updateWindowsDeviceAccountActionParameter" => lambda {|n| @update_windows_device_account_action_parameter = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UpdateWindowsDeviceAccountActionParameter.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("updateWindowsDeviceAccountActionParameter", @update_windows_device_account_action_parameter)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the updateWindowsDeviceAccountActionParameter property value. The updateWindowsDeviceAccountActionParameter property
                        ## @return a update_windows_device_account_action_parameter
                        ## 
                        def update_windows_device_account_action_parameter
                            return @update_windows_device_account_action_parameter
                        end
                        ## 
                        ## Sets the updateWindowsDeviceAccountActionParameter property value. The updateWindowsDeviceAccountActionParameter property
                        ## @param value Value to set for the update_windows_device_account_action_parameter property.
                        ## @return a void
                        ## 
                        def update_windows_device_account_action_parameter=(value)
                            @update_windows_device_account_action_parameter = value
                        end
                    end
                end
            end
        end
    end
end
