require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics Work From Anywhere metrics devices summary.
        class UserExperienceAnalyticsWorkFromAnywhereDevicesSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The user experience analytics work from anywhere Autopilot devices summary. Read-only.
            @autopilot_devices_summary
            ## 
            # The user experience analytics work from anywhere Cloud Identity devices summary. Read-only.
            @cloud_identity_devices_summary
            ## 
            # The user experience analytics work from anywhere Cloud management devices summary. Read-only.
            @cloud_management_devices_summary
            ## 
            # Total number of co-managed devices. Read-only. Valid values -2147483648 to 2147483647
            @co_managed_devices
            ## 
            # The count of intune devices that are not autopilot registerd. Read-only. Valid values -2147483648 to 2147483647
            @devices_not_autopilot_registered
            ## 
            # The count of intune devices not autopilot profile assigned. Read-only. Valid values -2147483648 to 2147483647
            @devices_without_autopilot_profile_assigned
            ## 
            # The count of devices that are not cloud identity. Read-only. Valid values -2147483648 to 2147483647
            @devices_without_cloud_identity
            ## 
            # The count of intune devices that are not autopilot registerd. Read-only. Valid values -2147483648 to 2147483647
            @intune_devices
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Total count of tenant attach devices. Read-only. Valid values -2147483648 to 2147483647
            @tenant_attach_devices
            ## 
            # The total count of devices. Read-only. Valid values -2147483648 to 2147483647
            @total_devices
            ## 
            # The count of Windows 10 devices that have unsupported OS versions. Read-only. Valid values -2147483648 to 2147483647
            @unsupported_o_sversion_devices
            ## 
            # The count of windows 10 devices. Read-only. Valid values -2147483648 to 2147483647
            @windows10_devices
            ## 
            # The user experience analytics work from anywhere Windows 10 devices summary. Read-only.
            @windows10_devices_summary
            ## 
            # The count of windows 10 devices that are Intune and co-managed. Read-only. Valid values -2147483648 to 2147483647
            @windows10_devices_without_tenant_attach
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
            ## Gets the autopilotDevicesSummary property value. The user experience analytics work from anywhere Autopilot devices summary. Read-only.
            ## @return a user_experience_analytics_autopilot_devices_summary
            ## 
            def autopilot_devices_summary
                return @autopilot_devices_summary
            end
            ## 
            ## Sets the autopilotDevicesSummary property value. The user experience analytics work from anywhere Autopilot devices summary. Read-only.
            ## @param value Value to set for the autopilotDevicesSummary property.
            ## @return a void
            ## 
            def autopilot_devices_summary=(value)
                @autopilot_devices_summary = value
            end
            ## 
            ## Gets the cloudIdentityDevicesSummary property value. The user experience analytics work from anywhere Cloud Identity devices summary. Read-only.
            ## @return a user_experience_analytics_cloud_identity_devices_summary
            ## 
            def cloud_identity_devices_summary
                return @cloud_identity_devices_summary
            end
            ## 
            ## Sets the cloudIdentityDevicesSummary property value. The user experience analytics work from anywhere Cloud Identity devices summary. Read-only.
            ## @param value Value to set for the cloudIdentityDevicesSummary property.
            ## @return a void
            ## 
            def cloud_identity_devices_summary=(value)
                @cloud_identity_devices_summary = value
            end
            ## 
            ## Gets the cloudManagementDevicesSummary property value. The user experience analytics work from anywhere Cloud management devices summary. Read-only.
            ## @return a user_experience_analytics_cloud_management_devices_summary
            ## 
            def cloud_management_devices_summary
                return @cloud_management_devices_summary
            end
            ## 
            ## Sets the cloudManagementDevicesSummary property value. The user experience analytics work from anywhere Cloud management devices summary. Read-only.
            ## @param value Value to set for the cloudManagementDevicesSummary property.
            ## @return a void
            ## 
            def cloud_management_devices_summary=(value)
                @cloud_management_devices_summary = value
            end
            ## 
            ## Gets the coManagedDevices property value. Total number of co-managed devices. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def co_managed_devices
                return @co_managed_devices
            end
            ## 
            ## Sets the coManagedDevices property value. Total number of co-managed devices. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the coManagedDevices property.
            ## @return a void
            ## 
            def co_managed_devices=(value)
                @co_managed_devices = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsWorkFromAnywhereDevicesSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_work_from_anywhere_devices_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsWorkFromAnywhereDevicesSummary.new
            end
            ## 
            ## Gets the devicesNotAutopilotRegistered property value. The count of intune devices that are not autopilot registerd. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def devices_not_autopilot_registered
                return @devices_not_autopilot_registered
            end
            ## 
            ## Sets the devicesNotAutopilotRegistered property value. The count of intune devices that are not autopilot registerd. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the devicesNotAutopilotRegistered property.
            ## @return a void
            ## 
            def devices_not_autopilot_registered=(value)
                @devices_not_autopilot_registered = value
            end
            ## 
            ## Gets the devicesWithoutAutopilotProfileAssigned property value. The count of intune devices not autopilot profile assigned. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def devices_without_autopilot_profile_assigned
                return @devices_without_autopilot_profile_assigned
            end
            ## 
            ## Sets the devicesWithoutAutopilotProfileAssigned property value. The count of intune devices not autopilot profile assigned. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the devicesWithoutAutopilotProfileAssigned property.
            ## @return a void
            ## 
            def devices_without_autopilot_profile_assigned=(value)
                @devices_without_autopilot_profile_assigned = value
            end
            ## 
            ## Gets the devicesWithoutCloudIdentity property value. The count of devices that are not cloud identity. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def devices_without_cloud_identity
                return @devices_without_cloud_identity
            end
            ## 
            ## Sets the devicesWithoutCloudIdentity property value. The count of devices that are not cloud identity. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the devicesWithoutCloudIdentity property.
            ## @return a void
            ## 
            def devices_without_cloud_identity=(value)
                @devices_without_cloud_identity = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "autopilotDevicesSummary" => lambda {|n| @autopilot_devices_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAutopilotDevicesSummary.create_from_discriminator_value(pn) }) },
                    "cloudIdentityDevicesSummary" => lambda {|n| @cloud_identity_devices_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsCloudIdentityDevicesSummary.create_from_discriminator_value(pn) }) },
                    "cloudManagementDevicesSummary" => lambda {|n| @cloud_management_devices_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsCloudManagementDevicesSummary.create_from_discriminator_value(pn) }) },
                    "coManagedDevices" => lambda {|n| @co_managed_devices = n.get_number_value() },
                    "devicesNotAutopilotRegistered" => lambda {|n| @devices_not_autopilot_registered = n.get_number_value() },
                    "devicesWithoutAutopilotProfileAssigned" => lambda {|n| @devices_without_autopilot_profile_assigned = n.get_number_value() },
                    "devicesWithoutCloudIdentity" => lambda {|n| @devices_without_cloud_identity = n.get_number_value() },
                    "intuneDevices" => lambda {|n| @intune_devices = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tenantAttachDevices" => lambda {|n| @tenant_attach_devices = n.get_number_value() },
                    "totalDevices" => lambda {|n| @total_devices = n.get_number_value() },
                    "unsupportedOSversionDevices" => lambda {|n| @unsupported_o_sversion_devices = n.get_number_value() },
                    "windows10Devices" => lambda {|n| @windows10_devices = n.get_number_value() },
                    "windows10DevicesSummary" => lambda {|n| @windows10_devices_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsWindows10DevicesSummary.create_from_discriminator_value(pn) }) },
                    "windows10DevicesWithoutTenantAttach" => lambda {|n| @windows10_devices_without_tenant_attach = n.get_number_value() },
                }
            end
            ## 
            ## Gets the intuneDevices property value. The count of intune devices that are not autopilot registerd. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def intune_devices
                return @intune_devices
            end
            ## 
            ## Sets the intuneDevices property value. The count of intune devices that are not autopilot registerd. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the intuneDevices property.
            ## @return a void
            ## 
            def intune_devices=(value)
                @intune_devices = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("autopilotDevicesSummary", @autopilot_devices_summary)
                writer.write_object_value("cloudIdentityDevicesSummary", @cloud_identity_devices_summary)
                writer.write_object_value("cloudManagementDevicesSummary", @cloud_management_devices_summary)
                writer.write_number_value("coManagedDevices", @co_managed_devices)
                writer.write_number_value("devicesNotAutopilotRegistered", @devices_not_autopilot_registered)
                writer.write_number_value("devicesWithoutAutopilotProfileAssigned", @devices_without_autopilot_profile_assigned)
                writer.write_number_value("devicesWithoutCloudIdentity", @devices_without_cloud_identity)
                writer.write_number_value("intuneDevices", @intune_devices)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("tenantAttachDevices", @tenant_attach_devices)
                writer.write_number_value("totalDevices", @total_devices)
                writer.write_number_value("unsupportedOSversionDevices", @unsupported_o_sversion_devices)
                writer.write_number_value("windows10Devices", @windows10_devices)
                writer.write_object_value("windows10DevicesSummary", @windows10_devices_summary)
                writer.write_number_value("windows10DevicesWithoutTenantAttach", @windows10_devices_without_tenant_attach)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tenantAttachDevices property value. Total count of tenant attach devices. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def tenant_attach_devices
                return @tenant_attach_devices
            end
            ## 
            ## Sets the tenantAttachDevices property value. Total count of tenant attach devices. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the tenantAttachDevices property.
            ## @return a void
            ## 
            def tenant_attach_devices=(value)
                @tenant_attach_devices = value
            end
            ## 
            ## Gets the totalDevices property value. The total count of devices. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def total_devices
                return @total_devices
            end
            ## 
            ## Sets the totalDevices property value. The total count of devices. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the totalDevices property.
            ## @return a void
            ## 
            def total_devices=(value)
                @total_devices = value
            end
            ## 
            ## Gets the unsupportedOSversionDevices property value. The count of Windows 10 devices that have unsupported OS versions. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def unsupported_o_sversion_devices
                return @unsupported_o_sversion_devices
            end
            ## 
            ## Sets the unsupportedOSversionDevices property value. The count of Windows 10 devices that have unsupported OS versions. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the unsupportedOSversionDevices property.
            ## @return a void
            ## 
            def unsupported_o_sversion_devices=(value)
                @unsupported_o_sversion_devices = value
            end
            ## 
            ## Gets the windows10Devices property value. The count of windows 10 devices. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def windows10_devices
                return @windows10_devices
            end
            ## 
            ## Sets the windows10Devices property value. The count of windows 10 devices. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the windows10Devices property.
            ## @return a void
            ## 
            def windows10_devices=(value)
                @windows10_devices = value
            end
            ## 
            ## Gets the windows10DevicesSummary property value. The user experience analytics work from anywhere Windows 10 devices summary. Read-only.
            ## @return a user_experience_analytics_windows10_devices_summary
            ## 
            def windows10_devices_summary
                return @windows10_devices_summary
            end
            ## 
            ## Sets the windows10DevicesSummary property value. The user experience analytics work from anywhere Windows 10 devices summary. Read-only.
            ## @param value Value to set for the windows10DevicesSummary property.
            ## @return a void
            ## 
            def windows10_devices_summary=(value)
                @windows10_devices_summary = value
            end
            ## 
            ## Gets the windows10DevicesWithoutTenantAttach property value. The count of windows 10 devices that are Intune and co-managed. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def windows10_devices_without_tenant_attach
                return @windows10_devices_without_tenant_attach
            end
            ## 
            ## Sets the windows10DevicesWithoutTenantAttach property value. The count of windows 10 devices that are Intune and co-managed. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the windows10DevicesWithoutTenantAttach property.
            ## @return a void
            ## 
            def windows10_devices_without_tenant_attach=(value)
                @windows10_devices_without_tenant_attach = value
            end
        end
    end
end
