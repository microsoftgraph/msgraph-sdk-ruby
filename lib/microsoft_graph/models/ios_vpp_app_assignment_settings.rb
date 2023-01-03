require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class IosVppAppAssignmentSettings < MicrosoftGraph::Models::MobileAppAssignmentSettings
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Whether or not to use device licensing.
        @use_device_licensing
        ## 
        # The VPN Configuration Id to apply for this app.
        @vpn_configuration_id
        ## 
        ## Instantiates a new IosVppAppAssignmentSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.iosVppAppAssignmentSettings"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ios_vpp_app_assignment_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosVppAppAssignmentSettings.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "useDeviceLicensing" => lambda {|n| @use_device_licensing = n.get_boolean_value() },
                "vpnConfigurationId" => lambda {|n| @vpn_configuration_id = n.get_string_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("useDeviceLicensing", @use_device_licensing)
            writer.write_string_value("vpnConfigurationId", @vpn_configuration_id)
        end
        ## 
        ## Gets the useDeviceLicensing property value. Whether or not to use device licensing.
        ## @return a boolean
        ## 
        def use_device_licensing
            return @use_device_licensing
        end
        ## 
        ## Sets the useDeviceLicensing property value. Whether or not to use device licensing.
        ## @param value Value to set for the useDeviceLicensing property.
        ## @return a void
        ## 
        def use_device_licensing=(value)
            @use_device_licensing = value
        end
        ## 
        ## Gets the vpnConfigurationId property value. The VPN Configuration Id to apply for this app.
        ## @return a string
        ## 
        def vpn_configuration_id
            return @vpn_configuration_id
        end
        ## 
        ## Sets the vpnConfigurationId property value. The VPN Configuration Id to apply for this app.
        ## @param value Value to set for the vpnConfigurationId property.
        ## @return a void
        ## 
        def vpn_configuration_id=(value)
            @vpn_configuration_id = value
        end
    end
end
