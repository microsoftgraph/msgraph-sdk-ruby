require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../device_management'
require_relative '../../windows_autopilot_device_identities'
require_relative '../item'
require_relative './update_device_properties'

module MicrosoftGraph
    module DeviceManagement
        module WindowsAutopilotDeviceIdentities
            module Item
                module UpdateDeviceProperties
                    class UpdateDevicePropertiesPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The addressableUserName property
                        @addressable_user_name
                        ## 
                        # The displayName property
                        @display_name
                        ## 
                        # The groupTag property
                        @group_tag
                        ## 
                        # The userPrincipalName property
                        @user_principal_name
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
                        ## Gets the addressableUserName property value. The addressableUserName property
                        ## @return a string
                        ## 
                        def addressable_user_name
                            return @addressable_user_name
                        end
                        ## 
                        ## Sets the addressableUserName property value. The addressableUserName property
                        ## @param value Value to set for the addressable_user_name property.
                        ## @return a void
                        ## 
                        def addressable_user_name=(value)
                            @addressable_user_name = value
                        end
                        ## 
                        ## Instantiates a new updateDevicePropertiesPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a update_device_properties_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UpdateDevicePropertiesPostRequestBody.new
                        end
                        ## 
                        ## Gets the displayName property value. The displayName property
                        ## @return a string
                        ## 
                        def display_name
                            return @display_name
                        end
                        ## 
                        ## Sets the displayName property value. The displayName property
                        ## @param value Value to set for the display_name property.
                        ## @return a void
                        ## 
                        def display_name=(value)
                            @display_name = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "addressableUserName" => lambda {|n| @addressable_user_name = n.get_string_value() },
                                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                                "groupTag" => lambda {|n| @group_tag = n.get_string_value() },
                                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the groupTag property value. The groupTag property
                        ## @return a string
                        ## 
                        def group_tag
                            return @group_tag
                        end
                        ## 
                        ## Sets the groupTag property value. The groupTag property
                        ## @param value Value to set for the group_tag property.
                        ## @return a void
                        ## 
                        def group_tag=(value)
                            @group_tag = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("addressableUserName", @addressable_user_name)
                            writer.write_string_value("displayName", @display_name)
                            writer.write_string_value("groupTag", @group_tag)
                            writer.write_string_value("userPrincipalName", @user_principal_name)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the userPrincipalName property value. The userPrincipalName property
                        ## @return a string
                        ## 
                        def user_principal_name
                            return @user_principal_name
                        end
                        ## 
                        ## Sets the userPrincipalName property value. The userPrincipalName property
                        ## @param value Value to set for the user_principal_name property.
                        ## @return a void
                        ## 
                        def user_principal_name=(value)
                            @user_principal_name = value
                        end
                    end
                end
            end
        end
    end
end
