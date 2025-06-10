require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPC < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Microsoft Entra device ID for the Cloud PC, also known as the Azure Active Directory (Azure AD) device ID, that consists of 32 characters in a GUID format. Generated on a VM joined to Microsoft Entra ID. Read-only.
            @aad_device_id
            ## 
            # The display name for the Cloud PC. Maximum length is 64 characters. Read-only. You can use the cloudPC: rename API to modify the Cloud PC name.
            @display_name
            ## 
            # The date and time when the grace period ends and reprovisioning or deprovisioning happen. Required only if the status is inGracePeriod. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @grace_period_end_date_time
            ## 
            # The name of the operating system image used for the Cloud PC. Maximum length is 50 characters. Only letters (A-Z, a-z), numbers (0-9), and special characters (-,,.) are allowed for this property. The property value can't begin or end with an underscore. Read-only.
            @image_display_name
            ## 
            # The last modified date and time of the Cloud PC. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # The Intune enrolled device ID for the Cloud PC that consists of 32 characters in a GUID format. The managedDeviceId property of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs aren't Intune-enrolled automatically by Windows 365. Read-only.
            @managed_device_id
            ## 
            # The Intune enrolled device name for the Cloud PC. The managedDeviceName property of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs aren't Intune-enrolled automatically by Windows 365. Read-only.
            @managed_device_name
            ## 
            # The on-premises connection that applied during the provisioning of Cloud PCs. Read-only.
            @on_premises_connection_name
            ## 
            # The provisioning policy ID for the Cloud PC that consists of 32 characters in a GUID format. A policy defines the type of Cloud PC the user wants to create. Read-only.
            @provisioning_policy_id
            ## 
            # The provisioning policy that applied during the provisioning of Cloud PCs. Maximum length is 120 characters. Read-only.
            @provisioning_policy_name
            ## 
            # The type of licenses to be used when provisioning Cloud PCs using this policy. Possible values are: dedicated, shared, unknownFutureValue. The default value is dedicated.
            @provisioning_type
            ## 
            # The service plan ID for the Cloud PC that consists of 32 characters in a GUID format. For more information about service plans, see Product names and service plan identifiers for licensing. Read-only.
            @service_plan_id
            ## 
            # The service plan name for the customer-facing Cloud PC entity. Read-only.
            @service_plan_name
            ## 
            # The user principal name (UPN) of the user assigned to the Cloud PC. Maximum length is 113 characters. For more information on username policies, see Password policies and account restrictions in Microsoft Entra ID. Read-only.
            @user_principal_name
            ## 
            ## Gets the aadDeviceId property value. The Microsoft Entra device ID for the Cloud PC, also known as the Azure Active Directory (Azure AD) device ID, that consists of 32 characters in a GUID format. Generated on a VM joined to Microsoft Entra ID. Read-only.
            ## @return a string
            ## 
            def aad_device_id
                return @aad_device_id
            end
            ## 
            ## Sets the aadDeviceId property value. The Microsoft Entra device ID for the Cloud PC, also known as the Azure Active Directory (Azure AD) device ID, that consists of 32 characters in a GUID format. Generated on a VM joined to Microsoft Entra ID. Read-only.
            ## @param value Value to set for the aadDeviceId property.
            ## @return a void
            ## 
            def aad_device_id=(value)
                @aad_device_id = value
            end
            ## 
            ## Instantiates a new CloudPC and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_p_c
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPC.new
            end
            ## 
            ## Gets the displayName property value. The display name for the Cloud PC. Maximum length is 64 characters. Read-only. You can use the cloudPC: rename API to modify the Cloud PC name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the Cloud PC. Maximum length is 64 characters. Read-only. You can use the cloudPC: rename API to modify the Cloud PC name.
            ## @param value Value to set for the displayName property.
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
                    "aadDeviceId" => lambda {|n| @aad_device_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "gracePeriodEndDateTime" => lambda {|n| @grace_period_end_date_time = n.get_date_time_value() },
                    "imageDisplayName" => lambda {|n| @image_display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                    "onPremisesConnectionName" => lambda {|n| @on_premises_connection_name = n.get_string_value() },
                    "provisioningPolicyId" => lambda {|n| @provisioning_policy_id = n.get_string_value() },
                    "provisioningPolicyName" => lambda {|n| @provisioning_policy_name = n.get_string_value() },
                    "provisioningType" => lambda {|n| @provisioning_type = n.get_enum_value(MicrosoftGraph::Models::CloudPcProvisioningType) },
                    "servicePlanId" => lambda {|n| @service_plan_id = n.get_string_value() },
                    "servicePlanName" => lambda {|n| @service_plan_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the gracePeriodEndDateTime property value. The date and time when the grace period ends and reprovisioning or deprovisioning happen. Required only if the status is inGracePeriod. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def grace_period_end_date_time
                return @grace_period_end_date_time
            end
            ## 
            ## Sets the gracePeriodEndDateTime property value. The date and time when the grace period ends and reprovisioning or deprovisioning happen. Required only if the status is inGracePeriod. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the gracePeriodEndDateTime property.
            ## @return a void
            ## 
            def grace_period_end_date_time=(value)
                @grace_period_end_date_time = value
            end
            ## 
            ## Gets the imageDisplayName property value. The name of the operating system image used for the Cloud PC. Maximum length is 50 characters. Only letters (A-Z, a-z), numbers (0-9), and special characters (-,,.) are allowed for this property. The property value can't begin or end with an underscore. Read-only.
            ## @return a string
            ## 
            def image_display_name
                return @image_display_name
            end
            ## 
            ## Sets the imageDisplayName property value. The name of the operating system image used for the Cloud PC. Maximum length is 50 characters. Only letters (A-Z, a-z), numbers (0-9), and special characters (-,,.) are allowed for this property. The property value can't begin or end with an underscore. Read-only.
            ## @param value Value to set for the imageDisplayName property.
            ## @return a void
            ## 
            def image_display_name=(value)
                @image_display_name = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The last modified date and time of the Cloud PC. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The last modified date and time of the Cloud PC. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the managedDeviceId property value. The Intune enrolled device ID for the Cloud PC that consists of 32 characters in a GUID format. The managedDeviceId property of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs aren't Intune-enrolled automatically by Windows 365. Read-only.
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. The Intune enrolled device ID for the Cloud PC that consists of 32 characters in a GUID format. The managedDeviceId property of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs aren't Intune-enrolled automatically by Windows 365. Read-only.
            ## @param value Value to set for the managedDeviceId property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the managedDeviceName property value. The Intune enrolled device name for the Cloud PC. The managedDeviceName property of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs aren't Intune-enrolled automatically by Windows 365. Read-only.
            ## @return a string
            ## 
            def managed_device_name
                return @managed_device_name
            end
            ## 
            ## Sets the managedDeviceName property value. The Intune enrolled device name for the Cloud PC. The managedDeviceName property of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs aren't Intune-enrolled automatically by Windows 365. Read-only.
            ## @param value Value to set for the managedDeviceName property.
            ## @return a void
            ## 
            def managed_device_name=(value)
                @managed_device_name = value
            end
            ## 
            ## Gets the onPremisesConnectionName property value. The on-premises connection that applied during the provisioning of Cloud PCs. Read-only.
            ## @return a string
            ## 
            def on_premises_connection_name
                return @on_premises_connection_name
            end
            ## 
            ## Sets the onPremisesConnectionName property value. The on-premises connection that applied during the provisioning of Cloud PCs. Read-only.
            ## @param value Value to set for the onPremisesConnectionName property.
            ## @return a void
            ## 
            def on_premises_connection_name=(value)
                @on_premises_connection_name = value
            end
            ## 
            ## Gets the provisioningPolicyId property value. The provisioning policy ID for the Cloud PC that consists of 32 characters in a GUID format. A policy defines the type of Cloud PC the user wants to create. Read-only.
            ## @return a string
            ## 
            def provisioning_policy_id
                return @provisioning_policy_id
            end
            ## 
            ## Sets the provisioningPolicyId property value. The provisioning policy ID for the Cloud PC that consists of 32 characters in a GUID format. A policy defines the type of Cloud PC the user wants to create. Read-only.
            ## @param value Value to set for the provisioningPolicyId property.
            ## @return a void
            ## 
            def provisioning_policy_id=(value)
                @provisioning_policy_id = value
            end
            ## 
            ## Gets the provisioningPolicyName property value. The provisioning policy that applied during the provisioning of Cloud PCs. Maximum length is 120 characters. Read-only.
            ## @return a string
            ## 
            def provisioning_policy_name
                return @provisioning_policy_name
            end
            ## 
            ## Sets the provisioningPolicyName property value. The provisioning policy that applied during the provisioning of Cloud PCs. Maximum length is 120 characters. Read-only.
            ## @param value Value to set for the provisioningPolicyName property.
            ## @return a void
            ## 
            def provisioning_policy_name=(value)
                @provisioning_policy_name = value
            end
            ## 
            ## Gets the provisioningType property value. The type of licenses to be used when provisioning Cloud PCs using this policy. Possible values are: dedicated, shared, unknownFutureValue. The default value is dedicated.
            ## @return a cloud_pc_provisioning_type
            ## 
            def provisioning_type
                return @provisioning_type
            end
            ## 
            ## Sets the provisioningType property value. The type of licenses to be used when provisioning Cloud PCs using this policy. Possible values are: dedicated, shared, unknownFutureValue. The default value is dedicated.
            ## @param value Value to set for the provisioningType property.
            ## @return a void
            ## 
            def provisioning_type=(value)
                @provisioning_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("aadDeviceId", @aad_device_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("gracePeriodEndDateTime", @grace_period_end_date_time)
                writer.write_string_value("imageDisplayName", @image_display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_string_value("managedDeviceName", @managed_device_name)
                writer.write_string_value("onPremisesConnectionName", @on_premises_connection_name)
                writer.write_string_value("provisioningPolicyId", @provisioning_policy_id)
                writer.write_string_value("provisioningPolicyName", @provisioning_policy_name)
                writer.write_enum_value("provisioningType", @provisioning_type)
                writer.write_string_value("servicePlanId", @service_plan_id)
                writer.write_string_value("servicePlanName", @service_plan_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the servicePlanId property value. The service plan ID for the Cloud PC that consists of 32 characters in a GUID format. For more information about service plans, see Product names and service plan identifiers for licensing. Read-only.
            ## @return a string
            ## 
            def service_plan_id
                return @service_plan_id
            end
            ## 
            ## Sets the servicePlanId property value. The service plan ID for the Cloud PC that consists of 32 characters in a GUID format. For more information about service plans, see Product names and service plan identifiers for licensing. Read-only.
            ## @param value Value to set for the servicePlanId property.
            ## @return a void
            ## 
            def service_plan_id=(value)
                @service_plan_id = value
            end
            ## 
            ## Gets the servicePlanName property value. The service plan name for the customer-facing Cloud PC entity. Read-only.
            ## @return a string
            ## 
            def service_plan_name
                return @service_plan_name
            end
            ## 
            ## Sets the servicePlanName property value. The service plan name for the customer-facing Cloud PC entity. Read-only.
            ## @param value Value to set for the servicePlanName property.
            ## @return a void
            ## 
            def service_plan_name=(value)
                @service_plan_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name (UPN) of the user assigned to the Cloud PC. Maximum length is 113 characters. For more information on username policies, see Password policies and account restrictions in Microsoft Entra ID. Read-only.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name (UPN) of the user assigned to the Cloud PC. Maximum length is 113 characters. For more information on username policies, see Password policies and account restrictions in Microsoft Entra ID. Read-only.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
