require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Devices that are managed or pre-enrolled through Intune
        class ManagedDevice < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The code that allows the Activation Lock on managed device to be bypassed. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity in LIST call. Individual GET call with select query options is needed to retrieve actual values. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            @activation_lock_bypass_code
            ## 
            # Android security patch level. This property is read-only.
            @android_security_patch_level
            ## 
            # The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
            @azure_a_d_device_id
            ## 
            # Whether the device is Azure Active Directory registered. This property is read-only.
            @azure_a_d_registered
            ## 
            # The DateTime when device compliance grace period expires. This property is read-only.
            @compliance_grace_period_expiration_date_time
            ## 
            # Compliance state.
            @compliance_state
            ## 
            # ConfigrMgr client enabled features. This property is read-only.
            @configuration_manager_client_enabled_features
            ## 
            # List of ComplexType deviceActionResult objects. This property is read-only.
            @device_action_results
            ## 
            # Device category
            @device_category
            ## 
            # Device category display name. This property is read-only.
            @device_category_display_name
            ## 
            # Device compliance policy states for this device.
            @device_compliance_policy_states
            ## 
            # Device configuration states for this device.
            @device_configuration_states
            ## 
            # Possible ways of adding a mobile device to management.
            @device_enrollment_type
            ## 
            # The device health attestation state. This property is read-only.
            @device_health_attestation_state
            ## 
            # Name of the device. This property is read-only.
            @device_name
            ## 
            # Device registration status.
            @device_registration_state
            ## 
            # Whether the device is Exchange ActiveSync activated. This property is read-only.
            @eas_activated
            ## 
            # Exchange ActivationSync activation time of the device. This property is read-only.
            @eas_activation_date_time
            ## 
            # Exchange ActiveSync Id of the device. This property is read-only.
            @eas_device_id
            ## 
            # Email(s) for the user associated with the device. This property is read-only.
            @email_address
            ## 
            # Enrollment time of the device. This property is read-only.
            @enrolled_date_time
            ## 
            # Indicates Ethernet MAC Address of the device. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity. Individual get call with select query options is needed to retrieve actual values. Example: deviceManagement/managedDevices({managedDeviceId})?$select=ethernetMacAddress Supports: $select. $Search is not supported. Read-only. This property is read-only.
            @ethernet_mac_address
            ## 
            # Device Exchange Access State.
            @exchange_access_state
            ## 
            # Device Exchange Access State Reason.
            @exchange_access_state_reason
            ## 
            # Last time the device contacted Exchange. This property is read-only.
            @exchange_last_successful_sync_date_time
            ## 
            # Free Storage in Bytes. Default value is 0. Read-only. This property is read-only.
            @free_storage_space_in_bytes
            ## 
            # Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            @iccid
            ## 
            # IMEI. This property is read-only.
            @imei
            ## 
            # Device encryption status. This property is read-only.
            @is_encrypted
            ## 
            # Device supervised status. This property is read-only.
            @is_supervised
            ## 
            # whether the device is jail broken or rooted. This property is read-only.
            @jail_broken
            ## 
            # The date and time that the device last completed a successful sync with Intune. This property is read-only.
            @last_sync_date_time
            ## 
            # Automatically generated name to identify a device. Can be overwritten to a user friendly name.
            @managed_device_name
            ## 
            # Owner type of device.
            @managed_device_owner_type
            ## 
            # The managementAgent property
            @management_agent
            ## 
            # Reports device management certificate expiration date. This property is read-only.
            @management_certificate_expiration_date
            ## 
            # Manufacturer of the device. This property is read-only.
            @manufacturer
            ## 
            # MEID. This property is read-only.
            @meid
            ## 
            # Model of the device. This property is read-only.
            @model
            ## 
            # Notes on the device created by IT Admin. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select.  $Search is not supported.
            @notes
            ## 
            # Operating system of the device. Windows, iOS, etc. This property is read-only.
            @operating_system
            ## 
            # Operating system version of the device. This property is read-only.
            @os_version
            ## 
            # Available health states for the Device Health API
            @partner_reported_threat_state
            ## 
            # Phone number of the device. This property is read-only.
            @phone_number
            ## 
            # Total Memory in Bytes. Return default value 0 in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. Default value is 0. Read-only. This property is read-only.
            @physical_memory_in_bytes
            ## 
            # An error string that identifies issues when creating Remote Assistance session objects. This property is read-only.
            @remote_assistance_session_error_details
            ## 
            # Url that allows a Remote Assistance session to be established with the device. This property is read-only.
            @remote_assistance_session_url
            ## 
            # Reports if the managed iOS device is user approval enrollment. This property is read-only.
            @require_user_enrollment_approval
            ## 
            # SerialNumber. This property is read-only.
            @serial_number
            ## 
            # Subscriber Carrier. This property is read-only.
            @subscriber_carrier
            ## 
            # Total Storage in Bytes. This property is read-only.
            @total_storage_space_in_bytes
            ## 
            # Unique Device Identifier for iOS and macOS devices. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            @udid
            ## 
            # User display name. This property is read-only.
            @user_display_name
            ## 
            # Unique Identifier for the user associated with the device. This property is read-only.
            @user_id
            ## 
            # Device user principal name. This property is read-only.
            @user_principal_name
            ## 
            # The primary users associated with the managed device.
            @users
            ## 
            # Wi-Fi MAC. This property is read-only.
            @wi_fi_mac_address
            ## 
            ## Gets the activationLockBypassCode property value. The code that allows the Activation Lock on managed device to be bypassed. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity in LIST call. Individual GET call with select query options is needed to retrieve actual values. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            ## @return a string
            ## 
            def activation_lock_bypass_code
                return @activation_lock_bypass_code
            end
            ## 
            ## Sets the activationLockBypassCode property value. The code that allows the Activation Lock on managed device to be bypassed. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity in LIST call. Individual GET call with select query options is needed to retrieve actual values. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            ## @param value Value to set for the activation_lock_bypass_code property.
            ## @return a void
            ## 
            def activation_lock_bypass_code=(value)
                @activation_lock_bypass_code = value
            end
            ## 
            ## Gets the androidSecurityPatchLevel property value. Android security patch level. This property is read-only.
            ## @return a string
            ## 
            def android_security_patch_level
                return @android_security_patch_level
            end
            ## 
            ## Sets the androidSecurityPatchLevel property value. Android security patch level. This property is read-only.
            ## @param value Value to set for the android_security_patch_level property.
            ## @return a void
            ## 
            def android_security_patch_level=(value)
                @android_security_patch_level = value
            end
            ## 
            ## Gets the azureADDeviceId property value. The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
            ## @return a string
            ## 
            def azure_a_d_device_id
                return @azure_a_d_device_id
            end
            ## 
            ## Sets the azureADDeviceId property value. The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
            ## @param value Value to set for the azure_a_d_device_id property.
            ## @return a void
            ## 
            def azure_a_d_device_id=(value)
                @azure_a_d_device_id = value
            end
            ## 
            ## Gets the azureADRegistered property value. Whether the device is Azure Active Directory registered. This property is read-only.
            ## @return a boolean
            ## 
            def azure_a_d_registered
                return @azure_a_d_registered
            end
            ## 
            ## Sets the azureADRegistered property value. Whether the device is Azure Active Directory registered. This property is read-only.
            ## @param value Value to set for the azure_a_d_registered property.
            ## @return a void
            ## 
            def azure_a_d_registered=(value)
                @azure_a_d_registered = value
            end
            ## 
            ## Gets the complianceGracePeriodExpirationDateTime property value. The DateTime when device compliance grace period expires. This property is read-only.
            ## @return a date_time
            ## 
            def compliance_grace_period_expiration_date_time
                return @compliance_grace_period_expiration_date_time
            end
            ## 
            ## Sets the complianceGracePeriodExpirationDateTime property value. The DateTime when device compliance grace period expires. This property is read-only.
            ## @param value Value to set for the compliance_grace_period_expiration_date_time property.
            ## @return a void
            ## 
            def compliance_grace_period_expiration_date_time=(value)
                @compliance_grace_period_expiration_date_time = value
            end
            ## 
            ## Gets the complianceState property value. Compliance state.
            ## @return a compliance_state
            ## 
            def compliance_state
                return @compliance_state
            end
            ## 
            ## Sets the complianceState property value. Compliance state.
            ## @param value Value to set for the compliance_state property.
            ## @return a void
            ## 
            def compliance_state=(value)
                @compliance_state = value
            end
            ## 
            ## Gets the configurationManagerClientEnabledFeatures property value. ConfigrMgr client enabled features. This property is read-only.
            ## @return a configuration_manager_client_enabled_features
            ## 
            def configuration_manager_client_enabled_features
                return @configuration_manager_client_enabled_features
            end
            ## 
            ## Sets the configurationManagerClientEnabledFeatures property value. ConfigrMgr client enabled features. This property is read-only.
            ## @param value Value to set for the configuration_manager_client_enabled_features property.
            ## @return a void
            ## 
            def configuration_manager_client_enabled_features=(value)
                @configuration_manager_client_enabled_features = value
            end
            ## 
            ## Instantiates a new managedDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDevice.new
            end
            ## 
            ## Gets the deviceActionResults property value. List of ComplexType deviceActionResult objects. This property is read-only.
            ## @return a device_action_result
            ## 
            def device_action_results
                return @device_action_results
            end
            ## 
            ## Sets the deviceActionResults property value. List of ComplexType deviceActionResult objects. This property is read-only.
            ## @param value Value to set for the device_action_results property.
            ## @return a void
            ## 
            def device_action_results=(value)
                @device_action_results = value
            end
            ## 
            ## Gets the deviceCategory property value. Device category
            ## @return a device_category
            ## 
            def device_category
                return @device_category
            end
            ## 
            ## Sets the deviceCategory property value. Device category
            ## @param value Value to set for the device_category property.
            ## @return a void
            ## 
            def device_category=(value)
                @device_category = value
            end
            ## 
            ## Gets the deviceCategoryDisplayName property value. Device category display name. This property is read-only.
            ## @return a string
            ## 
            def device_category_display_name
                return @device_category_display_name
            end
            ## 
            ## Sets the deviceCategoryDisplayName property value. Device category display name. This property is read-only.
            ## @param value Value to set for the device_category_display_name property.
            ## @return a void
            ## 
            def device_category_display_name=(value)
                @device_category_display_name = value
            end
            ## 
            ## Gets the deviceCompliancePolicyStates property value. Device compliance policy states for this device.
            ## @return a device_compliance_policy_state
            ## 
            def device_compliance_policy_states
                return @device_compliance_policy_states
            end
            ## 
            ## Sets the deviceCompliancePolicyStates property value. Device compliance policy states for this device.
            ## @param value Value to set for the device_compliance_policy_states property.
            ## @return a void
            ## 
            def device_compliance_policy_states=(value)
                @device_compliance_policy_states = value
            end
            ## 
            ## Gets the deviceConfigurationStates property value. Device configuration states for this device.
            ## @return a device_configuration_state
            ## 
            def device_configuration_states
                return @device_configuration_states
            end
            ## 
            ## Sets the deviceConfigurationStates property value. Device configuration states for this device.
            ## @param value Value to set for the device_configuration_states property.
            ## @return a void
            ## 
            def device_configuration_states=(value)
                @device_configuration_states = value
            end
            ## 
            ## Gets the deviceEnrollmentType property value. Possible ways of adding a mobile device to management.
            ## @return a device_enrollment_type
            ## 
            def device_enrollment_type
                return @device_enrollment_type
            end
            ## 
            ## Sets the deviceEnrollmentType property value. Possible ways of adding a mobile device to management.
            ## @param value Value to set for the device_enrollment_type property.
            ## @return a void
            ## 
            def device_enrollment_type=(value)
                @device_enrollment_type = value
            end
            ## 
            ## Gets the deviceHealthAttestationState property value. The device health attestation state. This property is read-only.
            ## @return a device_health_attestation_state
            ## 
            def device_health_attestation_state
                return @device_health_attestation_state
            end
            ## 
            ## Sets the deviceHealthAttestationState property value. The device health attestation state. This property is read-only.
            ## @param value Value to set for the device_health_attestation_state property.
            ## @return a void
            ## 
            def device_health_attestation_state=(value)
                @device_health_attestation_state = value
            end
            ## 
            ## Gets the deviceName property value. Name of the device. This property is read-only.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Name of the device. This property is read-only.
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the deviceRegistrationState property value. Device registration status.
            ## @return a device_registration_state
            ## 
            def device_registration_state
                return @device_registration_state
            end
            ## 
            ## Sets the deviceRegistrationState property value. Device registration status.
            ## @param value Value to set for the device_registration_state property.
            ## @return a void
            ## 
            def device_registration_state=(value)
                @device_registration_state = value
            end
            ## 
            ## Gets the easActivated property value. Whether the device is Exchange ActiveSync activated. This property is read-only.
            ## @return a boolean
            ## 
            def eas_activated
                return @eas_activated
            end
            ## 
            ## Sets the easActivated property value. Whether the device is Exchange ActiveSync activated. This property is read-only.
            ## @param value Value to set for the eas_activated property.
            ## @return a void
            ## 
            def eas_activated=(value)
                @eas_activated = value
            end
            ## 
            ## Gets the easActivationDateTime property value. Exchange ActivationSync activation time of the device. This property is read-only.
            ## @return a date_time
            ## 
            def eas_activation_date_time
                return @eas_activation_date_time
            end
            ## 
            ## Sets the easActivationDateTime property value. Exchange ActivationSync activation time of the device. This property is read-only.
            ## @param value Value to set for the eas_activation_date_time property.
            ## @return a void
            ## 
            def eas_activation_date_time=(value)
                @eas_activation_date_time = value
            end
            ## 
            ## Gets the easDeviceId property value. Exchange ActiveSync Id of the device. This property is read-only.
            ## @return a string
            ## 
            def eas_device_id
                return @eas_device_id
            end
            ## 
            ## Sets the easDeviceId property value. Exchange ActiveSync Id of the device. This property is read-only.
            ## @param value Value to set for the eas_device_id property.
            ## @return a void
            ## 
            def eas_device_id=(value)
                @eas_device_id = value
            end
            ## 
            ## Gets the emailAddress property value. Email(s) for the user associated with the device. This property is read-only.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. Email(s) for the user associated with the device. This property is read-only.
            ## @param value Value to set for the email_address property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## Gets the enrolledDateTime property value. Enrollment time of the device. This property is read-only.
            ## @return a date_time
            ## 
            def enrolled_date_time
                return @enrolled_date_time
            end
            ## 
            ## Sets the enrolledDateTime property value. Enrollment time of the device. This property is read-only.
            ## @param value Value to set for the enrolled_date_time property.
            ## @return a void
            ## 
            def enrolled_date_time=(value)
                @enrolled_date_time = value
            end
            ## 
            ## Gets the ethernetMacAddress property value. Indicates Ethernet MAC Address of the device. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity. Individual get call with select query options is needed to retrieve actual values. Example: deviceManagement/managedDevices({managedDeviceId})?$select=ethernetMacAddress Supports: $select. $Search is not supported. Read-only. This property is read-only.
            ## @return a string
            ## 
            def ethernet_mac_address
                return @ethernet_mac_address
            end
            ## 
            ## Sets the ethernetMacAddress property value. Indicates Ethernet MAC Address of the device. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity. Individual get call with select query options is needed to retrieve actual values. Example: deviceManagement/managedDevices({managedDeviceId})?$select=ethernetMacAddress Supports: $select. $Search is not supported. Read-only. This property is read-only.
            ## @param value Value to set for the ethernet_mac_address property.
            ## @return a void
            ## 
            def ethernet_mac_address=(value)
                @ethernet_mac_address = value
            end
            ## 
            ## Gets the exchangeAccessState property value. Device Exchange Access State.
            ## @return a device_management_exchange_access_state
            ## 
            def exchange_access_state
                return @exchange_access_state
            end
            ## 
            ## Sets the exchangeAccessState property value. Device Exchange Access State.
            ## @param value Value to set for the exchange_access_state property.
            ## @return a void
            ## 
            def exchange_access_state=(value)
                @exchange_access_state = value
            end
            ## 
            ## Gets the exchangeAccessStateReason property value. Device Exchange Access State Reason.
            ## @return a device_management_exchange_access_state_reason
            ## 
            def exchange_access_state_reason
                return @exchange_access_state_reason
            end
            ## 
            ## Sets the exchangeAccessStateReason property value. Device Exchange Access State Reason.
            ## @param value Value to set for the exchange_access_state_reason property.
            ## @return a void
            ## 
            def exchange_access_state_reason=(value)
                @exchange_access_state_reason = value
            end
            ## 
            ## Gets the exchangeLastSuccessfulSyncDateTime property value. Last time the device contacted Exchange. This property is read-only.
            ## @return a date_time
            ## 
            def exchange_last_successful_sync_date_time
                return @exchange_last_successful_sync_date_time
            end
            ## 
            ## Sets the exchangeLastSuccessfulSyncDateTime property value. Last time the device contacted Exchange. This property is read-only.
            ## @param value Value to set for the exchange_last_successful_sync_date_time property.
            ## @return a void
            ## 
            def exchange_last_successful_sync_date_time=(value)
                @exchange_last_successful_sync_date_time = value
            end
            ## 
            ## Gets the freeStorageSpaceInBytes property value. Free Storage in Bytes. Default value is 0. Read-only. This property is read-only.
            ## @return a int64
            ## 
            def free_storage_space_in_bytes
                return @free_storage_space_in_bytes
            end
            ## 
            ## Sets the freeStorageSpaceInBytes property value. Free Storage in Bytes. Default value is 0. Read-only. This property is read-only.
            ## @param value Value to set for the free_storage_space_in_bytes property.
            ## @return a void
            ## 
            def free_storage_space_in_bytes=(value)
                @free_storage_space_in_bytes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activationLockBypassCode" => lambda {|n| @activation_lock_bypass_code = n.get_string_value() },
                    "androidSecurityPatchLevel" => lambda {|n| @android_security_patch_level = n.get_string_value() },
                    "azureADDeviceId" => lambda {|n| @azure_a_d_device_id = n.get_string_value() },
                    "azureADRegistered" => lambda {|n| @azure_a_d_registered = n.get_boolean_value() },
                    "complianceGracePeriodExpirationDateTime" => lambda {|n| @compliance_grace_period_expiration_date_time = n.get_date_time_value() },
                    "complianceState" => lambda {|n| @compliance_state = n.get_enum_value(MicrosoftGraph::Models::ComplianceState) },
                    "configurationManagerClientEnabledFeatures" => lambda {|n| @configuration_manager_client_enabled_features = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConfigurationManagerClientEnabledFeatures.create_from_discriminator_value(pn) }) },
                    "deviceActionResults" => lambda {|n| @device_action_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceActionResult.create_from_discriminator_value(pn) }) },
                    "deviceCategory" => lambda {|n| @device_category = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceCategory.create_from_discriminator_value(pn) }) },
                    "deviceCategoryDisplayName" => lambda {|n| @device_category_display_name = n.get_string_value() },
                    "deviceCompliancePolicyStates" => lambda {|n| @device_compliance_policy_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceCompliancePolicyState.create_from_discriminator_value(pn) }) },
                    "deviceConfigurationStates" => lambda {|n| @device_configuration_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceConfigurationState.create_from_discriminator_value(pn) }) },
                    "deviceEnrollmentType" => lambda {|n| @device_enrollment_type = n.get_enum_value(MicrosoftGraph::Models::DeviceEnrollmentType) },
                    "deviceHealthAttestationState" => lambda {|n| @device_health_attestation_state = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceHealthAttestationState.create_from_discriminator_value(pn) }) },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "deviceRegistrationState" => lambda {|n| @device_registration_state = n.get_enum_value(MicrosoftGraph::Models::DeviceRegistrationState) },
                    "easActivated" => lambda {|n| @eas_activated = n.get_boolean_value() },
                    "easActivationDateTime" => lambda {|n| @eas_activation_date_time = n.get_date_time_value() },
                    "easDeviceId" => lambda {|n| @eas_device_id = n.get_string_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "enrolledDateTime" => lambda {|n| @enrolled_date_time = n.get_date_time_value() },
                    "ethernetMacAddress" => lambda {|n| @ethernet_mac_address = n.get_string_value() },
                    "exchangeAccessState" => lambda {|n| @exchange_access_state = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementExchangeAccessState) },
                    "exchangeAccessStateReason" => lambda {|n| @exchange_access_state_reason = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementExchangeAccessStateReason) },
                    "exchangeLastSuccessfulSyncDateTime" => lambda {|n| @exchange_last_successful_sync_date_time = n.get_date_time_value() },
                    "freeStorageSpaceInBytes" => lambda {|n| @free_storage_space_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "iccid" => lambda {|n| @iccid = n.get_string_value() },
                    "imei" => lambda {|n| @imei = n.get_string_value() },
                    "isEncrypted" => lambda {|n| @is_encrypted = n.get_boolean_value() },
                    "isSupervised" => lambda {|n| @is_supervised = n.get_boolean_value() },
                    "jailBroken" => lambda {|n| @jail_broken = n.get_string_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                    "managedDeviceOwnerType" => lambda {|n| @managed_device_owner_type = n.get_enum_value(MicrosoftGraph::Models::ManagedDeviceOwnerType) },
                    "managementAgent" => lambda {|n| @management_agent = n.get_enum_value(MicrosoftGraph::Models::ManagementAgentType) },
                    "managementCertificateExpirationDate" => lambda {|n| @management_certificate_expiration_date = n.get_date_time_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "meid" => lambda {|n| @meid = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "partnerReportedThreatState" => lambda {|n| @partner_reported_threat_state = n.get_enum_value(MicrosoftGraph::Models::ManagedDevicePartnerReportedHealthState) },
                    "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                    "physicalMemoryInBytes" => lambda {|n| @physical_memory_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "remoteAssistanceSessionErrorDetails" => lambda {|n| @remote_assistance_session_error_details = n.get_string_value() },
                    "remoteAssistanceSessionUrl" => lambda {|n| @remote_assistance_session_url = n.get_string_value() },
                    "requireUserEnrollmentApproval" => lambda {|n| @require_user_enrollment_approval = n.get_boolean_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "subscriberCarrier" => lambda {|n| @subscriber_carrier = n.get_string_value() },
                    "totalStorageSpaceInBytes" => lambda {|n| @total_storage_space_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "udid" => lambda {|n| @udid = n.get_string_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "users" => lambda {|n| @users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "wiFiMacAddress" => lambda {|n| @wi_fi_mac_address = n.get_string_value() },
                })
            end
            ## 
            ## Gets the iccid property value. Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            ## @return a string
            ## 
            def iccid
                return @iccid
            end
            ## 
            ## Sets the iccid property value. Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            ## @param value Value to set for the iccid property.
            ## @return a void
            ## 
            def iccid=(value)
                @iccid = value
            end
            ## 
            ## Gets the imei property value. IMEI. This property is read-only.
            ## @return a string
            ## 
            def imei
                return @imei
            end
            ## 
            ## Sets the imei property value. IMEI. This property is read-only.
            ## @param value Value to set for the imei property.
            ## @return a void
            ## 
            def imei=(value)
                @imei = value
            end
            ## 
            ## Gets the isEncrypted property value. Device encryption status. This property is read-only.
            ## @return a boolean
            ## 
            def is_encrypted
                return @is_encrypted
            end
            ## 
            ## Sets the isEncrypted property value. Device encryption status. This property is read-only.
            ## @param value Value to set for the is_encrypted property.
            ## @return a void
            ## 
            def is_encrypted=(value)
                @is_encrypted = value
            end
            ## 
            ## Gets the isSupervised property value. Device supervised status. This property is read-only.
            ## @return a boolean
            ## 
            def is_supervised
                return @is_supervised
            end
            ## 
            ## Sets the isSupervised property value. Device supervised status. This property is read-only.
            ## @param value Value to set for the is_supervised property.
            ## @return a void
            ## 
            def is_supervised=(value)
                @is_supervised = value
            end
            ## 
            ## Gets the jailBroken property value. whether the device is jail broken or rooted. This property is read-only.
            ## @return a string
            ## 
            def jail_broken
                return @jail_broken
            end
            ## 
            ## Sets the jailBroken property value. whether the device is jail broken or rooted. This property is read-only.
            ## @param value Value to set for the jail_broken property.
            ## @return a void
            ## 
            def jail_broken=(value)
                @jail_broken = value
            end
            ## 
            ## Gets the lastSyncDateTime property value. The date and time that the device last completed a successful sync with Intune. This property is read-only.
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. The date and time that the device last completed a successful sync with Intune. This property is read-only.
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Gets the managedDeviceName property value. Automatically generated name to identify a device. Can be overwritten to a user friendly name.
            ## @return a string
            ## 
            def managed_device_name
                return @managed_device_name
            end
            ## 
            ## Sets the managedDeviceName property value. Automatically generated name to identify a device. Can be overwritten to a user friendly name.
            ## @param value Value to set for the managed_device_name property.
            ## @return a void
            ## 
            def managed_device_name=(value)
                @managed_device_name = value
            end
            ## 
            ## Gets the managedDeviceOwnerType property value. Owner type of device.
            ## @return a managed_device_owner_type
            ## 
            def managed_device_owner_type
                return @managed_device_owner_type
            end
            ## 
            ## Sets the managedDeviceOwnerType property value. Owner type of device.
            ## @param value Value to set for the managed_device_owner_type property.
            ## @return a void
            ## 
            def managed_device_owner_type=(value)
                @managed_device_owner_type = value
            end
            ## 
            ## Gets the managementAgent property value. The managementAgent property
            ## @return a management_agent_type
            ## 
            def management_agent
                return @management_agent
            end
            ## 
            ## Sets the managementAgent property value. The managementAgent property
            ## @param value Value to set for the management_agent property.
            ## @return a void
            ## 
            def management_agent=(value)
                @management_agent = value
            end
            ## 
            ## Gets the managementCertificateExpirationDate property value. Reports device management certificate expiration date. This property is read-only.
            ## @return a date_time
            ## 
            def management_certificate_expiration_date
                return @management_certificate_expiration_date
            end
            ## 
            ## Sets the managementCertificateExpirationDate property value. Reports device management certificate expiration date. This property is read-only.
            ## @param value Value to set for the management_certificate_expiration_date property.
            ## @return a void
            ## 
            def management_certificate_expiration_date=(value)
                @management_certificate_expiration_date = value
            end
            ## 
            ## Gets the manufacturer property value. Manufacturer of the device. This property is read-only.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. Manufacturer of the device. This property is read-only.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the meid property value. MEID. This property is read-only.
            ## @return a string
            ## 
            def meid
                return @meid
            end
            ## 
            ## Sets the meid property value. MEID. This property is read-only.
            ## @param value Value to set for the meid property.
            ## @return a void
            ## 
            def meid=(value)
                @meid = value
            end
            ## 
            ## Gets the model property value. Model of the device. This property is read-only.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. Model of the device. This property is read-only.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the notes property value. Notes on the device created by IT Admin. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select.  $Search is not supported.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Notes on the device created by IT Admin. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select.  $Search is not supported.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the operatingSystem property value. Operating system of the device. Windows, iOS, etc. This property is read-only.
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. Operating system of the device. Windows, iOS, etc. This property is read-only.
            ## @param value Value to set for the operating_system property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the osVersion property value. Operating system version of the device. This property is read-only.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. Operating system version of the device. This property is read-only.
            ## @param value Value to set for the os_version property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the partnerReportedThreatState property value. Available health states for the Device Health API
            ## @return a managed_device_partner_reported_health_state
            ## 
            def partner_reported_threat_state
                return @partner_reported_threat_state
            end
            ## 
            ## Sets the partnerReportedThreatState property value. Available health states for the Device Health API
            ## @param value Value to set for the partner_reported_threat_state property.
            ## @return a void
            ## 
            def partner_reported_threat_state=(value)
                @partner_reported_threat_state = value
            end
            ## 
            ## Gets the phoneNumber property value. Phone number of the device. This property is read-only.
            ## @return a string
            ## 
            def phone_number
                return @phone_number
            end
            ## 
            ## Sets the phoneNumber property value. Phone number of the device. This property is read-only.
            ## @param value Value to set for the phone_number property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Gets the physicalMemoryInBytes property value. Total Memory in Bytes. Return default value 0 in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. Default value is 0. Read-only. This property is read-only.
            ## @return a int64
            ## 
            def physical_memory_in_bytes
                return @physical_memory_in_bytes
            end
            ## 
            ## Sets the physicalMemoryInBytes property value. Total Memory in Bytes. Return default value 0 in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. Default value is 0. Read-only. This property is read-only.
            ## @param value Value to set for the physical_memory_in_bytes property.
            ## @return a void
            ## 
            def physical_memory_in_bytes=(value)
                @physical_memory_in_bytes = value
            end
            ## 
            ## Gets the remoteAssistanceSessionErrorDetails property value. An error string that identifies issues when creating Remote Assistance session objects. This property is read-only.
            ## @return a string
            ## 
            def remote_assistance_session_error_details
                return @remote_assistance_session_error_details
            end
            ## 
            ## Sets the remoteAssistanceSessionErrorDetails property value. An error string that identifies issues when creating Remote Assistance session objects. This property is read-only.
            ## @param value Value to set for the remote_assistance_session_error_details property.
            ## @return a void
            ## 
            def remote_assistance_session_error_details=(value)
                @remote_assistance_session_error_details = value
            end
            ## 
            ## Gets the remoteAssistanceSessionUrl property value. Url that allows a Remote Assistance session to be established with the device. This property is read-only.
            ## @return a string
            ## 
            def remote_assistance_session_url
                return @remote_assistance_session_url
            end
            ## 
            ## Sets the remoteAssistanceSessionUrl property value. Url that allows a Remote Assistance session to be established with the device. This property is read-only.
            ## @param value Value to set for the remote_assistance_session_url property.
            ## @return a void
            ## 
            def remote_assistance_session_url=(value)
                @remote_assistance_session_url = value
            end
            ## 
            ## Gets the requireUserEnrollmentApproval property value. Reports if the managed iOS device is user approval enrollment. This property is read-only.
            ## @return a boolean
            ## 
            def require_user_enrollment_approval
                return @require_user_enrollment_approval
            end
            ## 
            ## Sets the requireUserEnrollmentApproval property value. Reports if the managed iOS device is user approval enrollment. This property is read-only.
            ## @param value Value to set for the require_user_enrollment_approval property.
            ## @return a void
            ## 
            def require_user_enrollment_approval=(value)
                @require_user_enrollment_approval = value
            end
            ## 
            ## Gets the serialNumber property value. SerialNumber. This property is read-only.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. SerialNumber. This property is read-only.
            ## @param value Value to set for the serial_number property.
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
                writer.write_enum_value("complianceState", @compliance_state)
                writer.write_object_value("deviceCategory", @device_category)
                writer.write_collection_of_object_values("deviceCompliancePolicyStates", @device_compliance_policy_states)
                writer.write_collection_of_object_values("deviceConfigurationStates", @device_configuration_states)
                writer.write_enum_value("deviceEnrollmentType", @device_enrollment_type)
                writer.write_enum_value("deviceRegistrationState", @device_registration_state)
                writer.write_enum_value("exchangeAccessState", @exchange_access_state)
                writer.write_enum_value("exchangeAccessStateReason", @exchange_access_state_reason)
                writer.write_string_value("managedDeviceName", @managed_device_name)
                writer.write_enum_value("managedDeviceOwnerType", @managed_device_owner_type)
                writer.write_enum_value("managementAgent", @management_agent)
                writer.write_string_value("notes", @notes)
                writer.write_enum_value("partnerReportedThreatState", @partner_reported_threat_state)
                writer.write_collection_of_object_values("users", @users)
            end
            ## 
            ## Gets the subscriberCarrier property value. Subscriber Carrier. This property is read-only.
            ## @return a string
            ## 
            def subscriber_carrier
                return @subscriber_carrier
            end
            ## 
            ## Sets the subscriberCarrier property value. Subscriber Carrier. This property is read-only.
            ## @param value Value to set for the subscriber_carrier property.
            ## @return a void
            ## 
            def subscriber_carrier=(value)
                @subscriber_carrier = value
            end
            ## 
            ## Gets the totalStorageSpaceInBytes property value. Total Storage in Bytes. This property is read-only.
            ## @return a int64
            ## 
            def total_storage_space_in_bytes
                return @total_storage_space_in_bytes
            end
            ## 
            ## Sets the totalStorageSpaceInBytes property value. Total Storage in Bytes. This property is read-only.
            ## @param value Value to set for the total_storage_space_in_bytes property.
            ## @return a void
            ## 
            def total_storage_space_in_bytes=(value)
                @total_storage_space_in_bytes = value
            end
            ## 
            ## Gets the udid property value. Unique Device Identifier for iOS and macOS devices. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            ## @return a string
            ## 
            def udid
                return @udid
            end
            ## 
            ## Sets the udid property value. Unique Device Identifier for iOS and macOS devices. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
            ## @param value Value to set for the udid property.
            ## @return a void
            ## 
            def udid=(value)
                @udid = value
            end
            ## 
            ## Gets the userDisplayName property value. User display name. This property is read-only.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. User display name. This property is read-only.
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userId property value. Unique Identifier for the user associated with the device. This property is read-only.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. Unique Identifier for the user associated with the device. This property is read-only.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. Device user principal name. This property is read-only.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. Device user principal name. This property is read-only.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the users property value. The primary users associated with the managed device.
            ## @return a user
            ## 
            def users
                return @users
            end
            ## 
            ## Sets the users property value. The primary users associated with the managed device.
            ## @param value Value to set for the users property.
            ## @return a void
            ## 
            def users=(value)
                @users = value
            end
            ## 
            ## Gets the wiFiMacAddress property value. Wi-Fi MAC. This property is read-only.
            ## @return a string
            ## 
            def wi_fi_mac_address
                return @wi_fi_mac_address
            end
            ## 
            ## Sets the wiFiMacAddress property value. Wi-Fi MAC. This property is read-only.
            ## @param value Value to set for the wi_fi_mac_address property.
            ## @return a void
            ## 
            def wi_fi_mac_address=(value)
                @wi_fi_mac_address = value
            end
        end
    end
end
