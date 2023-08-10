require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics device for work from anywhere report.
        class UserExperienceAnalyticsWorkFromAnywhereDevice < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, indicates the intune device's autopilot profile is assigned. When FALSE, indicates it's not Assigned. Supports: $select, $OrderBy. Read-only.
            @auto_pilot_profile_assigned
            ## 
            # When TRUE, indicates the intune device's autopilot is registered. When FALSE, indicates it's not registered. Supports: $select, $OrderBy. Read-only.
            @auto_pilot_registered
            ## 
            # The Azure Active Directory (Azure AD) device Id. Supports: $select, $OrderBy. Read-only.
            @azure_ad_device_id
            ## 
            # The work from anywhere device's Azure Active Directory (Azure AD) join type. Supports: $select, $OrderBy. Read-only.
            @azure_ad_join_type
            ## 
            # When TRUE, indicates the device's Azure Active Directory (Azure AD) is registered. When False, indicates it's not registered. Supports: $select, $OrderBy. Read-only.
            @azure_ad_registered
            ## 
            # Indicates per device cloud identity score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @cloud_identity_score
            ## 
            # Indicates per device cloud management score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @cloud_management_score
            ## 
            # Indicates per device cloud provisioning score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @cloud_provisioning_score
            ## 
            # When TRUE, indicates the device's compliance policy is set to intune. When FALSE, indicates it's not set to intune. Supports: $select, $OrderBy. Read-only.
            @compliance_policy_set_to_intune
            ## 
            # The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            @device_id
            ## 
            # The name of the device. Supports: $select, $OrderBy. Read-only.
            @device_name
            ## 
            # The healthStatus property
            @health_status
            ## 
            # When TRUE, indicates the device's Cloud Management Gateway for Configuration Manager is enabled. When FALSE, indicates it's not enabled. Supports: $select, $OrderBy. Read-only.
            @is_cloud_managed_gateway_enabled
            ## 
            # The management agent of the device. Supports: $select, $OrderBy. Read-only.
            @managed_by
            ## 
            # The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            @manufacturer
            ## 
            # The model name of the device. Supports: $select, $OrderBy. Read-only.
            @model
            ## 
            # When TRUE, indicates OS check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @os_check_failed
            ## 
            # The OS description of the device. Supports: $select, $OrderBy. Read-only.
            @os_description
            ## 
            # The OS version of the device. Supports: $select, $OrderBy. Read-only.
            @os_version
            ## 
            # When TRUE, indicates the device's other workloads is set to intune. When FALSE, indicates it's not set to intune. Supports: $select, $OrderBy. Read-only.
            @other_workloads_set_to_intune
            ## 
            # Ownership of the device. Supports: $select, $OrderBy. Read-only.
            @ownership
            ## 
            # When TRUE, indicates processor hardware core count check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @processor_core_count_check_failed
            ## 
            # When TRUE, indicates processor hardware family check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @processor_family_check_failed
            ## 
            # When TRUE, indicates processor hardware speed check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @processor_speed_check_failed
            ## 
            # When TRUE, indicates processor hardware 64-bit architecture check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @processor64_bit_check_failed
            ## 
            # When TRUE, indicates RAM hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @ram_check_failed
            ## 
            # When TRUE, indicates secure boot hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @secure_boot_check_failed
            ## 
            # The serial number of the device. Supports: $select, $OrderBy. Read-only.
            @serial_number
            ## 
            # When TRUE, indicates storage hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @storage_check_failed
            ## 
            # When TRUE, indicates the device is Tenant Attached. When FALSE, indicates it's not Tenant Attached. Supports: $select, $OrderBy. Read-only.
            @tenant_attached
            ## 
            # When TRUE, indicates Trusted Platform Module (TPM) hardware check failed for device to the latest version of upgrade to windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            @tpm_check_failed
            ## 
            # Work From Anywhere windows device upgrade eligibility status.
            @upgrade_eligibility
            ## 
            # Indicates per device windows score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @windows_score
            ## 
            # Indicates work from anywhere per device overall score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @work_from_anywhere_score
            ## 
            ## Gets the autoPilotProfileAssigned property value. When TRUE, indicates the intune device's autopilot profile is assigned. When FALSE, indicates it's not Assigned. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def auto_pilot_profile_assigned
                return @auto_pilot_profile_assigned
            end
            ## 
            ## Sets the autoPilotProfileAssigned property value. When TRUE, indicates the intune device's autopilot profile is assigned. When FALSE, indicates it's not Assigned. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the autoPilotProfileAssigned property.
            ## @return a void
            ## 
            def auto_pilot_profile_assigned=(value)
                @auto_pilot_profile_assigned = value
            end
            ## 
            ## Gets the autoPilotRegistered property value. When TRUE, indicates the intune device's autopilot is registered. When FALSE, indicates it's not registered. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def auto_pilot_registered
                return @auto_pilot_registered
            end
            ## 
            ## Sets the autoPilotRegistered property value. When TRUE, indicates the intune device's autopilot is registered. When FALSE, indicates it's not registered. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the autoPilotRegistered property.
            ## @return a void
            ## 
            def auto_pilot_registered=(value)
                @auto_pilot_registered = value
            end
            ## 
            ## Gets the azureAdDeviceId property value. The Azure Active Directory (Azure AD) device Id. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def azure_ad_device_id
                return @azure_ad_device_id
            end
            ## 
            ## Sets the azureAdDeviceId property value. The Azure Active Directory (Azure AD) device Id. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the azureAdDeviceId property.
            ## @return a void
            ## 
            def azure_ad_device_id=(value)
                @azure_ad_device_id = value
            end
            ## 
            ## Gets the azureAdJoinType property value. The work from anywhere device's Azure Active Directory (Azure AD) join type. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def azure_ad_join_type
                return @azure_ad_join_type
            end
            ## 
            ## Sets the azureAdJoinType property value. The work from anywhere device's Azure Active Directory (Azure AD) join type. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the azureAdJoinType property.
            ## @return a void
            ## 
            def azure_ad_join_type=(value)
                @azure_ad_join_type = value
            end
            ## 
            ## Gets the azureAdRegistered property value. When TRUE, indicates the device's Azure Active Directory (Azure AD) is registered. When False, indicates it's not registered. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def azure_ad_registered
                return @azure_ad_registered
            end
            ## 
            ## Sets the azureAdRegistered property value. When TRUE, indicates the device's Azure Active Directory (Azure AD) is registered. When False, indicates it's not registered. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the azureAdRegistered property.
            ## @return a void
            ## 
            def azure_ad_registered=(value)
                @azure_ad_registered = value
            end
            ## 
            ## Gets the cloudIdentityScore property value. Indicates per device cloud identity score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def cloud_identity_score
                return @cloud_identity_score
            end
            ## 
            ## Sets the cloudIdentityScore property value. Indicates per device cloud identity score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the cloudIdentityScore property.
            ## @return a void
            ## 
            def cloud_identity_score=(value)
                @cloud_identity_score = value
            end
            ## 
            ## Gets the cloudManagementScore property value. Indicates per device cloud management score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def cloud_management_score
                return @cloud_management_score
            end
            ## 
            ## Sets the cloudManagementScore property value. Indicates per device cloud management score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the cloudManagementScore property.
            ## @return a void
            ## 
            def cloud_management_score=(value)
                @cloud_management_score = value
            end
            ## 
            ## Gets the cloudProvisioningScore property value. Indicates per device cloud provisioning score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def cloud_provisioning_score
                return @cloud_provisioning_score
            end
            ## 
            ## Sets the cloudProvisioningScore property value. Indicates per device cloud provisioning score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the cloudProvisioningScore property.
            ## @return a void
            ## 
            def cloud_provisioning_score=(value)
                @cloud_provisioning_score = value
            end
            ## 
            ## Gets the compliancePolicySetToIntune property value. When TRUE, indicates the device's compliance policy is set to intune. When FALSE, indicates it's not set to intune. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def compliance_policy_set_to_intune
                return @compliance_policy_set_to_intune
            end
            ## 
            ## Sets the compliancePolicySetToIntune property value. When TRUE, indicates the device's compliance policy is set to intune. When FALSE, indicates it's not set to intune. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the compliancePolicySetToIntune property.
            ## @return a void
            ## 
            def compliance_policy_set_to_intune=(value)
                @compliance_policy_set_to_intune = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsWorkFromAnywhereDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_work_from_anywhere_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsWorkFromAnywhereDevice.new
            end
            ## 
            ## Gets the deviceId property value. The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. The name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "autoPilotProfileAssigned" => lambda {|n| @auto_pilot_profile_assigned = n.get_boolean_value() },
                    "autoPilotRegistered" => lambda {|n| @auto_pilot_registered = n.get_boolean_value() },
                    "azureAdDeviceId" => lambda {|n| @azure_ad_device_id = n.get_string_value() },
                    "azureAdJoinType" => lambda {|n| @azure_ad_join_type = n.get_string_value() },
                    "azureAdRegistered" => lambda {|n| @azure_ad_registered = n.get_boolean_value() },
                    "cloudIdentityScore" => lambda {|n| @cloud_identity_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cloudManagementScore" => lambda {|n| @cloud_management_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cloudProvisioningScore" => lambda {|n| @cloud_provisioning_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "compliancePolicySetToIntune" => lambda {|n| @compliance_policy_set_to_intune = n.get_boolean_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraph::Models::UserExperienceAnalyticsHealthState) },
                    "isCloudManagedGatewayEnabled" => lambda {|n| @is_cloud_managed_gateway_enabled = n.get_boolean_value() },
                    "managedBy" => lambda {|n| @managed_by = n.get_string_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "osCheckFailed" => lambda {|n| @os_check_failed = n.get_boolean_value() },
                    "osDescription" => lambda {|n| @os_description = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "otherWorkloadsSetToIntune" => lambda {|n| @other_workloads_set_to_intune = n.get_boolean_value() },
                    "ownership" => lambda {|n| @ownership = n.get_string_value() },
                    "processorCoreCountCheckFailed" => lambda {|n| @processor_core_count_check_failed = n.get_boolean_value() },
                    "processorFamilyCheckFailed" => lambda {|n| @processor_family_check_failed = n.get_boolean_value() },
                    "processorSpeedCheckFailed" => lambda {|n| @processor_speed_check_failed = n.get_boolean_value() },
                    "processor64BitCheckFailed" => lambda {|n| @processor64_bit_check_failed = n.get_boolean_value() },
                    "ramCheckFailed" => lambda {|n| @ram_check_failed = n.get_boolean_value() },
                    "secureBootCheckFailed" => lambda {|n| @secure_boot_check_failed = n.get_boolean_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "storageCheckFailed" => lambda {|n| @storage_check_failed = n.get_boolean_value() },
                    "tenantAttached" => lambda {|n| @tenant_attached = n.get_boolean_value() },
                    "tpmCheckFailed" => lambda {|n| @tpm_check_failed = n.get_boolean_value() },
                    "upgradeEligibility" => lambda {|n| @upgrade_eligibility = n.get_enum_value(MicrosoftGraph::Models::OperatingSystemUpgradeEligibility) },
                    "windowsScore" => lambda {|n| @windows_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "workFromAnywhereScore" => lambda {|n| @work_from_anywhere_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the healthStatus property value. The healthStatus property
            ## @return a user_experience_analytics_health_state
            ## 
            def health_status
                return @health_status
            end
            ## 
            ## Sets the healthStatus property value. The healthStatus property
            ## @param value Value to set for the healthStatus property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the isCloudManagedGatewayEnabled property value. When TRUE, indicates the device's Cloud Management Gateway for Configuration Manager is enabled. When FALSE, indicates it's not enabled. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def is_cloud_managed_gateway_enabled
                return @is_cloud_managed_gateway_enabled
            end
            ## 
            ## Sets the isCloudManagedGatewayEnabled property value. When TRUE, indicates the device's Cloud Management Gateway for Configuration Manager is enabled. When FALSE, indicates it's not enabled. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the isCloudManagedGatewayEnabled property.
            ## @return a void
            ## 
            def is_cloud_managed_gateway_enabled=(value)
                @is_cloud_managed_gateway_enabled = value
            end
            ## 
            ## Gets the managedBy property value. The management agent of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def managed_by
                return @managed_by
            end
            ## 
            ## Sets the managedBy property value. The management agent of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the managedBy property.
            ## @return a void
            ## 
            def managed_by=(value)
                @managed_by = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The model name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the osCheckFailed property value. When TRUE, indicates OS check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def os_check_failed
                return @os_check_failed
            end
            ## 
            ## Sets the osCheckFailed property value. When TRUE, indicates OS check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the osCheckFailed property.
            ## @return a void
            ## 
            def os_check_failed=(value)
                @os_check_failed = value
            end
            ## 
            ## Gets the osDescription property value. The OS description of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def os_description
                return @os_description
            end
            ## 
            ## Sets the osDescription property value. The OS description of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the osDescription property.
            ## @return a void
            ## 
            def os_description=(value)
                @os_description = value
            end
            ## 
            ## Gets the osVersion property value. The OS version of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The OS version of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the otherWorkloadsSetToIntune property value. When TRUE, indicates the device's other workloads is set to intune. When FALSE, indicates it's not set to intune. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def other_workloads_set_to_intune
                return @other_workloads_set_to_intune
            end
            ## 
            ## Sets the otherWorkloadsSetToIntune property value. When TRUE, indicates the device's other workloads is set to intune. When FALSE, indicates it's not set to intune. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the otherWorkloadsSetToIntune property.
            ## @return a void
            ## 
            def other_workloads_set_to_intune=(value)
                @other_workloads_set_to_intune = value
            end
            ## 
            ## Gets the ownership property value. Ownership of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def ownership
                return @ownership
            end
            ## 
            ## Sets the ownership property value. Ownership of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the ownership property.
            ## @return a void
            ## 
            def ownership=(value)
                @ownership = value
            end
            ## 
            ## Gets the processorCoreCountCheckFailed property value. When TRUE, indicates processor hardware core count check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def processor_core_count_check_failed
                return @processor_core_count_check_failed
            end
            ## 
            ## Sets the processorCoreCountCheckFailed property value. When TRUE, indicates processor hardware core count check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the processorCoreCountCheckFailed property.
            ## @return a void
            ## 
            def processor_core_count_check_failed=(value)
                @processor_core_count_check_failed = value
            end
            ## 
            ## Gets the processorFamilyCheckFailed property value. When TRUE, indicates processor hardware family check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def processor_family_check_failed
                return @processor_family_check_failed
            end
            ## 
            ## Sets the processorFamilyCheckFailed property value. When TRUE, indicates processor hardware family check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the processorFamilyCheckFailed property.
            ## @return a void
            ## 
            def processor_family_check_failed=(value)
                @processor_family_check_failed = value
            end
            ## 
            ## Gets the processorSpeedCheckFailed property value. When TRUE, indicates processor hardware speed check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def processor_speed_check_failed
                return @processor_speed_check_failed
            end
            ## 
            ## Sets the processorSpeedCheckFailed property value. When TRUE, indicates processor hardware speed check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the processorSpeedCheckFailed property.
            ## @return a void
            ## 
            def processor_speed_check_failed=(value)
                @processor_speed_check_failed = value
            end
            ## 
            ## Gets the processor64BitCheckFailed property value. When TRUE, indicates processor hardware 64-bit architecture check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def processor64_bit_check_failed
                return @processor64_bit_check_failed
            end
            ## 
            ## Sets the processor64BitCheckFailed property value. When TRUE, indicates processor hardware 64-bit architecture check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the processor64BitCheckFailed property.
            ## @return a void
            ## 
            def processor64_bit_check_failed=(value)
                @processor64_bit_check_failed = value
            end
            ## 
            ## Gets the ramCheckFailed property value. When TRUE, indicates RAM hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def ram_check_failed
                return @ram_check_failed
            end
            ## 
            ## Sets the ramCheckFailed property value. When TRUE, indicates RAM hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the ramCheckFailed property.
            ## @return a void
            ## 
            def ram_check_failed=(value)
                @ram_check_failed = value
            end
            ## 
            ## Gets the secureBootCheckFailed property value. When TRUE, indicates secure boot hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def secure_boot_check_failed
                return @secure_boot_check_failed
            end
            ## 
            ## Sets the secureBootCheckFailed property value. When TRUE, indicates secure boot hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the secureBootCheckFailed property.
            ## @return a void
            ## 
            def secure_boot_check_failed=(value)
                @secure_boot_check_failed = value
            end
            ## 
            ## Gets the serialNumber property value. The serial number of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. The serial number of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("autoPilotProfileAssigned", @auto_pilot_profile_assigned)
                writer.write_boolean_value("autoPilotRegistered", @auto_pilot_registered)
                writer.write_string_value("azureAdDeviceId", @azure_ad_device_id)
                writer.write_string_value("azureAdJoinType", @azure_ad_join_type)
                writer.write_boolean_value("azureAdRegistered", @azure_ad_registered)
                writer.write_object_value("cloudIdentityScore", @cloud_identity_score)
                writer.write_object_value("cloudManagementScore", @cloud_management_score)
                writer.write_object_value("cloudProvisioningScore", @cloud_provisioning_score)
                writer.write_boolean_value("compliancePolicySetToIntune", @compliance_policy_set_to_intune)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_boolean_value("isCloudManagedGatewayEnabled", @is_cloud_managed_gateway_enabled)
                writer.write_string_value("managedBy", @managed_by)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_boolean_value("osCheckFailed", @os_check_failed)
                writer.write_string_value("osDescription", @os_description)
                writer.write_string_value("osVersion", @os_version)
                writer.write_boolean_value("otherWorkloadsSetToIntune", @other_workloads_set_to_intune)
                writer.write_string_value("ownership", @ownership)
                writer.write_boolean_value("processorCoreCountCheckFailed", @processor_core_count_check_failed)
                writer.write_boolean_value("processorFamilyCheckFailed", @processor_family_check_failed)
                writer.write_boolean_value("processorSpeedCheckFailed", @processor_speed_check_failed)
                writer.write_boolean_value("processor64BitCheckFailed", @processor64_bit_check_failed)
                writer.write_boolean_value("ramCheckFailed", @ram_check_failed)
                writer.write_boolean_value("secureBootCheckFailed", @secure_boot_check_failed)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_boolean_value("storageCheckFailed", @storage_check_failed)
                writer.write_boolean_value("tenantAttached", @tenant_attached)
                writer.write_boolean_value("tpmCheckFailed", @tpm_check_failed)
                writer.write_enum_value("upgradeEligibility", @upgrade_eligibility)
                writer.write_object_value("windowsScore", @windows_score)
                writer.write_object_value("workFromAnywhereScore", @work_from_anywhere_score)
            end
            ## 
            ## Gets the storageCheckFailed property value. When TRUE, indicates storage hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def storage_check_failed
                return @storage_check_failed
            end
            ## 
            ## Sets the storageCheckFailed property value. When TRUE, indicates storage hardware check failed for device to upgrade to the latest version of windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the storageCheckFailed property.
            ## @return a void
            ## 
            def storage_check_failed=(value)
                @storage_check_failed = value
            end
            ## 
            ## Gets the tenantAttached property value. When TRUE, indicates the device is Tenant Attached. When FALSE, indicates it's not Tenant Attached. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def tenant_attached
                return @tenant_attached
            end
            ## 
            ## Sets the tenantAttached property value. When TRUE, indicates the device is Tenant Attached. When FALSE, indicates it's not Tenant Attached. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the tenantAttached property.
            ## @return a void
            ## 
            def tenant_attached=(value)
                @tenant_attached = value
            end
            ## 
            ## Gets the tpmCheckFailed property value. When TRUE, indicates Trusted Platform Module (TPM) hardware check failed for device to the latest version of upgrade to windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def tpm_check_failed
                return @tpm_check_failed
            end
            ## 
            ## Sets the tpmCheckFailed property value. When TRUE, indicates Trusted Platform Module (TPM) hardware check failed for device to the latest version of upgrade to windows. When FALSE, indicates the check succeeded. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the tpmCheckFailed property.
            ## @return a void
            ## 
            def tpm_check_failed=(value)
                @tpm_check_failed = value
            end
            ## 
            ## Gets the upgradeEligibility property value. Work From Anywhere windows device upgrade eligibility status.
            ## @return a operating_system_upgrade_eligibility
            ## 
            def upgrade_eligibility
                return @upgrade_eligibility
            end
            ## 
            ## Sets the upgradeEligibility property value. Work From Anywhere windows device upgrade eligibility status.
            ## @param value Value to set for the upgradeEligibility property.
            ## @return a void
            ## 
            def upgrade_eligibility=(value)
                @upgrade_eligibility = value
            end
            ## 
            ## Gets the windowsScore property value. Indicates per device windows score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def windows_score
                return @windows_score
            end
            ## 
            ## Sets the windowsScore property value. Indicates per device windows score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the windowsScore property.
            ## @return a void
            ## 
            def windows_score=(value)
                @windows_score = value
            end
            ## 
            ## Gets the workFromAnywhereScore property value. Indicates work from anywhere per device overall score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def work_from_anywhere_score
                return @work_from_anywhere_score
            end
            ## 
            ## Sets the workFromAnywhereScore property value. Indicates work from anywhere per device overall score. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the workFromAnywhereScore property.
            ## @return a void
            ## 
            def work_from_anywhere_score=(value)
                @work_from_anywhere_score = value
            end
        end
    end
end
