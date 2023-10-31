require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RemoteDesktopSecurityConfiguration < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Determines if Microsoft Entra ID RDS authentication protocol for RDP is enabled.
            @is_remote_desktop_protocol_enabled
            ## 
            # The collection of target device groups that are associated with the RDS security configuration that will be enabled for SSO when a client connects to the target device over RDP using the new Microsoft Entra ID RDS authentication protocol.
            @target_device_groups
            ## 
            ## Instantiates a new remoteDesktopSecurityConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a remote_desktop_security_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RemoteDesktopSecurityConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isRemoteDesktopProtocolEnabled" => lambda {|n| @is_remote_desktop_protocol_enabled = n.get_boolean_value() },
                    "targetDeviceGroups" => lambda {|n| @target_device_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TargetDeviceGroup.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isRemoteDesktopProtocolEnabled property value. Determines if Microsoft Entra ID RDS authentication protocol for RDP is enabled.
            ## @return a boolean
            ## 
            def is_remote_desktop_protocol_enabled
                return @is_remote_desktop_protocol_enabled
            end
            ## 
            ## Sets the isRemoteDesktopProtocolEnabled property value. Determines if Microsoft Entra ID RDS authentication protocol for RDP is enabled.
            ## @param value Value to set for the isRemoteDesktopProtocolEnabled property.
            ## @return a void
            ## 
            def is_remote_desktop_protocol_enabled=(value)
                @is_remote_desktop_protocol_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isRemoteDesktopProtocolEnabled", @is_remote_desktop_protocol_enabled)
                writer.write_collection_of_object_values("targetDeviceGroups", @target_device_groups)
            end
            ## 
            ## Gets the targetDeviceGroups property value. The collection of target device groups that are associated with the RDS security configuration that will be enabled for SSO when a client connects to the target device over RDP using the new Microsoft Entra ID RDS authentication protocol.
            ## @return a target_device_group
            ## 
            def target_device_groups
                return @target_device_groups
            end
            ## 
            ## Sets the targetDeviceGroups property value. The collection of target device groups that are associated with the RDS security configuration that will be enabled for SSO when a client connects to the target device over RDP using the new Microsoft Entra ID RDS authentication protocol.
            ## @param value Value to set for the targetDeviceGroups property.
            ## @return a void
            ## 
            def target_device_groups=(value)
                @target_device_groups = value
            end
        end
    end
end
