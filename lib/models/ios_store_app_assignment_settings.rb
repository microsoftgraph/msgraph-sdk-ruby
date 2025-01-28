require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties used to assign an iOS Store mobile app to a group.
        class IosStoreAppAssignmentSettings < MicrosoftGraph::Models::MobileAppAssignmentSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, indicates that the app can be uninstalled by the user. When FALSE, indicates that the app cannot be uninstalled by the user. By default, this property is set to null which internally is treated as TRUE.
            @is_removable
            ## 
            # When TRUE, indicates that the app should be uninstalled when the device is removed from Intune. When FALSE, indicates that the app will not be uninstalled when the device is removed from Intune. By default, property is set to null which internally is treated as TRUE.
            @uninstall_on_device_removal
            ## 
            # This is the unique identifier (Id) of the VPN Configuration to apply to the app.
            @vpn_configuration_id
            ## 
            ## Instantiates a new IosStoreAppAssignmentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosStoreAppAssignmentSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_store_app_assignment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosStoreAppAssignmentSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isRemovable" => lambda {|n| @is_removable = n.get_boolean_value() },
                    "uninstallOnDeviceRemoval" => lambda {|n| @uninstall_on_device_removal = n.get_boolean_value() },
                    "vpnConfigurationId" => lambda {|n| @vpn_configuration_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isRemovable property value. When TRUE, indicates that the app can be uninstalled by the user. When FALSE, indicates that the app cannot be uninstalled by the user. By default, this property is set to null which internally is treated as TRUE.
            ## @return a boolean
            ## 
            def is_removable
                return @is_removable
            end
            ## 
            ## Sets the isRemovable property value. When TRUE, indicates that the app can be uninstalled by the user. When FALSE, indicates that the app cannot be uninstalled by the user. By default, this property is set to null which internally is treated as TRUE.
            ## @param value Value to set for the isRemovable property.
            ## @return a void
            ## 
            def is_removable=(value)
                @is_removable = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isRemovable", @is_removable)
                writer.write_boolean_value("uninstallOnDeviceRemoval", @uninstall_on_device_removal)
                writer.write_string_value("vpnConfigurationId", @vpn_configuration_id)
            end
            ## 
            ## Gets the uninstallOnDeviceRemoval property value. When TRUE, indicates that the app should be uninstalled when the device is removed from Intune. When FALSE, indicates that the app will not be uninstalled when the device is removed from Intune. By default, property is set to null which internally is treated as TRUE.
            ## @return a boolean
            ## 
            def uninstall_on_device_removal
                return @uninstall_on_device_removal
            end
            ## 
            ## Sets the uninstallOnDeviceRemoval property value. When TRUE, indicates that the app should be uninstalled when the device is removed from Intune. When FALSE, indicates that the app will not be uninstalled when the device is removed from Intune. By default, property is set to null which internally is treated as TRUE.
            ## @param value Value to set for the uninstallOnDeviceRemoval property.
            ## @return a void
            ## 
            def uninstall_on_device_removal=(value)
                @uninstall_on_device_removal = value
            end
            ## 
            ## Gets the vpnConfigurationId property value. This is the unique identifier (Id) of the VPN Configuration to apply to the app.
            ## @return a string
            ## 
            def vpn_configuration_id
                return @vpn_configuration_id
            end
            ## 
            ## Sets the vpnConfigurationId property value. This is the unique identifier (Id) of the VPN Configuration to apply to the app.
            ## @param value Value to set for the vpnConfigurationId property.
            ## @return a void
            ## 
            def vpn_configuration_id=(value)
                @vpn_configuration_id = value
            end
        end
    end
end
