require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The Windows Autopilot Deployment Profile settings used by the device for the out-of-box experience. Supports: $select, $top, $skip. $Search, $orderBy and $filter are not supported.
        class OutOfBoxExperienceSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The deviceUsageType property
            @device_usage_type
            ## 
            # When TRUE, the link that allows user to start over with a different account on company sign-in is hidden. When false, the link that allows user to start over with a different account on company sign-in is available. Default value is FALSE.
            @escape_link_hidden
            ## 
            # When TRUE, EULA is hidden to the end user during OOBE. When FALSE, EULA is shown to the end user during OOBE. Default value is FALSE.
            @eula_hidden
            ## 
            # When TRUE, the keyboard selection page is hidden to the end user during OOBE if Language and Region are set. When FALSE, the keyboard selection page is skipped during OOBE.
            @keyboard_selection_page_skipped
            ## 
            # The OdataType property
            @odata_type
            ## 
            # When TRUE, privacy settings is hidden to the end user during OOBE. When FALSE, privacy settings is shown to the end user during OOBE. Default value is FALSE.
            @privacy_settings_hidden
            ## 
            # The userType property
            @user_type
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
            ## Instantiates a new OutOfBoxExperienceSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a out_of_box_experience_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OutOfBoxExperienceSetting.new
            end
            ## 
            ## Gets the deviceUsageType property value. The deviceUsageType property
            ## @return a windows_device_usage_type
            ## 
            def device_usage_type
                return @device_usage_type
            end
            ## 
            ## Sets the deviceUsageType property value. The deviceUsageType property
            ## @param value Value to set for the deviceUsageType property.
            ## @return a void
            ## 
            def device_usage_type=(value)
                @device_usage_type = value
            end
            ## 
            ## Gets the escapeLinkHidden property value. When TRUE, the link that allows user to start over with a different account on company sign-in is hidden. When false, the link that allows user to start over with a different account on company sign-in is available. Default value is FALSE.
            ## @return a boolean
            ## 
            def escape_link_hidden
                return @escape_link_hidden
            end
            ## 
            ## Sets the escapeLinkHidden property value. When TRUE, the link that allows user to start over with a different account on company sign-in is hidden. When false, the link that allows user to start over with a different account on company sign-in is available. Default value is FALSE.
            ## @param value Value to set for the escapeLinkHidden property.
            ## @return a void
            ## 
            def escape_link_hidden=(value)
                @escape_link_hidden = value
            end
            ## 
            ## Gets the eulaHidden property value. When TRUE, EULA is hidden to the end user during OOBE. When FALSE, EULA is shown to the end user during OOBE. Default value is FALSE.
            ## @return a boolean
            ## 
            def eula_hidden
                return @eula_hidden
            end
            ## 
            ## Sets the eulaHidden property value. When TRUE, EULA is hidden to the end user during OOBE. When FALSE, EULA is shown to the end user during OOBE. Default value is FALSE.
            ## @param value Value to set for the eulaHidden property.
            ## @return a void
            ## 
            def eula_hidden=(value)
                @eula_hidden = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceUsageType" => lambda {|n| @device_usage_type = n.get_enum_value(MicrosoftGraph::Models::WindowsDeviceUsageType) },
                    "escapeLinkHidden" => lambda {|n| @escape_link_hidden = n.get_boolean_value() },
                    "eulaHidden" => lambda {|n| @eula_hidden = n.get_boolean_value() },
                    "keyboardSelectionPageSkipped" => lambda {|n| @keyboard_selection_page_skipped = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "privacySettingsHidden" => lambda {|n| @privacy_settings_hidden = n.get_boolean_value() },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraph::Models::WindowsUserType) },
                }
            end
            ## 
            ## Gets the keyboardSelectionPageSkipped property value. When TRUE, the keyboard selection page is hidden to the end user during OOBE if Language and Region are set. When FALSE, the keyboard selection page is skipped during OOBE.
            ## @return a boolean
            ## 
            def keyboard_selection_page_skipped
                return @keyboard_selection_page_skipped
            end
            ## 
            ## Sets the keyboardSelectionPageSkipped property value. When TRUE, the keyboard selection page is hidden to the end user during OOBE if Language and Region are set. When FALSE, the keyboard selection page is skipped during OOBE.
            ## @param value Value to set for the keyboardSelectionPageSkipped property.
            ## @return a void
            ## 
            def keyboard_selection_page_skipped=(value)
                @keyboard_selection_page_skipped = value
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
            ## Gets the privacySettingsHidden property value. When TRUE, privacy settings is hidden to the end user during OOBE. When FALSE, privacy settings is shown to the end user during OOBE. Default value is FALSE.
            ## @return a boolean
            ## 
            def privacy_settings_hidden
                return @privacy_settings_hidden
            end
            ## 
            ## Sets the privacySettingsHidden property value. When TRUE, privacy settings is hidden to the end user during OOBE. When FALSE, privacy settings is shown to the end user during OOBE. Default value is FALSE.
            ## @param value Value to set for the privacySettingsHidden property.
            ## @return a void
            ## 
            def privacy_settings_hidden=(value)
                @privacy_settings_hidden = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("deviceUsageType", @device_usage_type)
                writer.write_boolean_value("escapeLinkHidden", @escape_link_hidden)
                writer.write_boolean_value("eulaHidden", @eula_hidden)
                writer.write_boolean_value("keyboardSelectionPageSkipped", @keyboard_selection_page_skipped)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("privacySettingsHidden", @privacy_settings_hidden)
                writer.write_enum_value("userType", @user_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userType property value. The userType property
            ## @return a windows_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. The userType property
            ## @param value Value to set for the userType property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
