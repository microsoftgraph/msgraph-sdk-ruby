require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Entity which represents a connection to device management partner.
        class DeviceManagementPartner < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Partner display name
            @display_name
            ## 
            # User groups that specifies whether enrollment is through partner.
            @groups_requiring_partner_enrollment
            ## 
            # Whether device management partner is configured or not
            @is_configured
            ## 
            # Timestamp of last heartbeat after admin enabled option Connect to Device management Partner
            @last_heartbeat_date_time
            ## 
            # Partner App Type.
            @partner_app_type
            ## 
            # Partner state of this tenant.
            @partner_state
            ## 
            # Partner Single tenant App id
            @single_tenant_app_id
            ## 
            # DateTime in UTC when PartnerDevices will be marked as NonCompliant
            @when_partner_devices_will_be_marked_as_non_compliant_date_time
            ## 
            # DateTime in UTC when PartnerDevices will be removed
            @when_partner_devices_will_be_removed_date_time
            ## 
            ## Instantiates a new deviceManagementPartner and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_partner
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementPartner.new
            end
            ## 
            ## Gets the displayName property value. Partner display name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Partner display name
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
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "groupsRequiringPartnerEnrollment" => lambda {|n| @groups_requiring_partner_enrollment = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceManagementPartnerAssignment.create_from_discriminator_value(pn) }) },
                    "isConfigured" => lambda {|n| @is_configured = n.get_boolean_value() },
                    "lastHeartbeatDateTime" => lambda {|n| @last_heartbeat_date_time = n.get_date_time_value() },
                    "partnerAppType" => lambda {|n| @partner_app_type = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementPartnerAppType) },
                    "partnerState" => lambda {|n| @partner_state = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementPartnerTenantState) },
                    "singleTenantAppId" => lambda {|n| @single_tenant_app_id = n.get_string_value() },
                    "whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime" => lambda {|n| @when_partner_devices_will_be_marked_as_non_compliant_date_time = n.get_date_time_value() },
                    "whenPartnerDevicesWillBeRemovedDateTime" => lambda {|n| @when_partner_devices_will_be_removed_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the groupsRequiringPartnerEnrollment property value. User groups that specifies whether enrollment is through partner.
            ## @return a device_management_partner_assignment
            ## 
            def groups_requiring_partner_enrollment
                return @groups_requiring_partner_enrollment
            end
            ## 
            ## Sets the groupsRequiringPartnerEnrollment property value. User groups that specifies whether enrollment is through partner.
            ## @param value Value to set for the groups_requiring_partner_enrollment property.
            ## @return a void
            ## 
            def groups_requiring_partner_enrollment=(value)
                @groups_requiring_partner_enrollment = value
            end
            ## 
            ## Gets the isConfigured property value. Whether device management partner is configured or not
            ## @return a boolean
            ## 
            def is_configured
                return @is_configured
            end
            ## 
            ## Sets the isConfigured property value. Whether device management partner is configured or not
            ## @param value Value to set for the is_configured property.
            ## @return a void
            ## 
            def is_configured=(value)
                @is_configured = value
            end
            ## 
            ## Gets the lastHeartbeatDateTime property value. Timestamp of last heartbeat after admin enabled option Connect to Device management Partner
            ## @return a date_time
            ## 
            def last_heartbeat_date_time
                return @last_heartbeat_date_time
            end
            ## 
            ## Sets the lastHeartbeatDateTime property value. Timestamp of last heartbeat after admin enabled option Connect to Device management Partner
            ## @param value Value to set for the last_heartbeat_date_time property.
            ## @return a void
            ## 
            def last_heartbeat_date_time=(value)
                @last_heartbeat_date_time = value
            end
            ## 
            ## Gets the partnerAppType property value. Partner App Type.
            ## @return a device_management_partner_app_type
            ## 
            def partner_app_type
                return @partner_app_type
            end
            ## 
            ## Sets the partnerAppType property value. Partner App Type.
            ## @param value Value to set for the partner_app_type property.
            ## @return a void
            ## 
            def partner_app_type=(value)
                @partner_app_type = value
            end
            ## 
            ## Gets the partnerState property value. Partner state of this tenant.
            ## @return a device_management_partner_tenant_state
            ## 
            def partner_state
                return @partner_state
            end
            ## 
            ## Sets the partnerState property value. Partner state of this tenant.
            ## @param value Value to set for the partner_state property.
            ## @return a void
            ## 
            def partner_state=(value)
                @partner_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("groupsRequiringPartnerEnrollment", @groups_requiring_partner_enrollment)
                writer.write_boolean_value("isConfigured", @is_configured)
                writer.write_date_time_value("lastHeartbeatDateTime", @last_heartbeat_date_time)
                writer.write_enum_value("partnerAppType", @partner_app_type)
                writer.write_enum_value("partnerState", @partner_state)
                writer.write_string_value("singleTenantAppId", @single_tenant_app_id)
                writer.write_date_time_value("whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime", @when_partner_devices_will_be_marked_as_non_compliant_date_time)
                writer.write_date_time_value("whenPartnerDevicesWillBeRemovedDateTime", @when_partner_devices_will_be_removed_date_time)
            end
            ## 
            ## Gets the singleTenantAppId property value. Partner Single tenant App id
            ## @return a string
            ## 
            def single_tenant_app_id
                return @single_tenant_app_id
            end
            ## 
            ## Sets the singleTenantAppId property value. Partner Single tenant App id
            ## @param value Value to set for the single_tenant_app_id property.
            ## @return a void
            ## 
            def single_tenant_app_id=(value)
                @single_tenant_app_id = value
            end
            ## 
            ## Gets the whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime property value. DateTime in UTC when PartnerDevices will be marked as NonCompliant
            ## @return a date_time
            ## 
            def when_partner_devices_will_be_marked_as_non_compliant_date_time
                return @when_partner_devices_will_be_marked_as_non_compliant_date_time
            end
            ## 
            ## Sets the whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime property value. DateTime in UTC when PartnerDevices will be marked as NonCompliant
            ## @param value Value to set for the when_partner_devices_will_be_marked_as_non_compliant_date_time property.
            ## @return a void
            ## 
            def when_partner_devices_will_be_marked_as_non_compliant_date_time=(value)
                @when_partner_devices_will_be_marked_as_non_compliant_date_time = value
            end
            ## 
            ## Gets the whenPartnerDevicesWillBeRemovedDateTime property value. DateTime in UTC when PartnerDevices will be removed
            ## @return a date_time
            ## 
            def when_partner_devices_will_be_removed_date_time
                return @when_partner_devices_will_be_removed_date_time
            end
            ## 
            ## Sets the whenPartnerDevicesWillBeRemovedDateTime property value. DateTime in UTC when PartnerDevices will be removed
            ## @param value Value to set for the when_partner_devices_will_be_removed_date_time property.
            ## @return a void
            ## 
            def when_partner_devices_will_be_removed_date_time=(value)
                @when_partner_devices_will_be_removed_date_time = value
            end
        end
    end
end
