require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPC < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The aadDeviceId property
            @aad_device_id
            ## 
            # The displayName property
            @display_name
            ## 
            # The gracePeriodEndDateTime property
            @grace_period_end_date_time
            ## 
            # The imageDisplayName property
            @image_display_name
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The managedDeviceId property
            @managed_device_id
            ## 
            # The managedDeviceName property
            @managed_device_name
            ## 
            # The onPremisesConnectionName property
            @on_premises_connection_name
            ## 
            # The provisioningPolicyId property
            @provisioning_policy_id
            ## 
            # The provisioningPolicyName property
            @provisioning_policy_name
            ## 
            # The provisioningType property
            @provisioning_type
            ## 
            # The servicePlanId property
            @service_plan_id
            ## 
            # The servicePlanName property
            @service_plan_name
            ## 
            # The userPrincipalName property
            @user_principal_name
            ## 
            ## Gets the aadDeviceId property value. The aadDeviceId property
            ## @return a string
            ## 
            def aad_device_id
                return @aad_device_id
            end
            ## 
            ## Sets the aadDeviceId property value. The aadDeviceId property
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
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
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
            ## Gets the gracePeriodEndDateTime property value. The gracePeriodEndDateTime property
            ## @return a date_time
            ## 
            def grace_period_end_date_time
                return @grace_period_end_date_time
            end
            ## 
            ## Sets the gracePeriodEndDateTime property value. The gracePeriodEndDateTime property
            ## @param value Value to set for the gracePeriodEndDateTime property.
            ## @return a void
            ## 
            def grace_period_end_date_time=(value)
                @grace_period_end_date_time = value
            end
            ## 
            ## Gets the imageDisplayName property value. The imageDisplayName property
            ## @return a string
            ## 
            def image_display_name
                return @image_display_name
            end
            ## 
            ## Sets the imageDisplayName property value. The imageDisplayName property
            ## @param value Value to set for the imageDisplayName property.
            ## @return a void
            ## 
            def image_display_name=(value)
                @image_display_name = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the managedDeviceId property value. The managedDeviceId property
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. The managedDeviceId property
            ## @param value Value to set for the managedDeviceId property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the managedDeviceName property value. The managedDeviceName property
            ## @return a string
            ## 
            def managed_device_name
                return @managed_device_name
            end
            ## 
            ## Sets the managedDeviceName property value. The managedDeviceName property
            ## @param value Value to set for the managedDeviceName property.
            ## @return a void
            ## 
            def managed_device_name=(value)
                @managed_device_name = value
            end
            ## 
            ## Gets the onPremisesConnectionName property value. The onPremisesConnectionName property
            ## @return a string
            ## 
            def on_premises_connection_name
                return @on_premises_connection_name
            end
            ## 
            ## Sets the onPremisesConnectionName property value. The onPremisesConnectionName property
            ## @param value Value to set for the onPremisesConnectionName property.
            ## @return a void
            ## 
            def on_premises_connection_name=(value)
                @on_premises_connection_name = value
            end
            ## 
            ## Gets the provisioningPolicyId property value. The provisioningPolicyId property
            ## @return a string
            ## 
            def provisioning_policy_id
                return @provisioning_policy_id
            end
            ## 
            ## Sets the provisioningPolicyId property value. The provisioningPolicyId property
            ## @param value Value to set for the provisioningPolicyId property.
            ## @return a void
            ## 
            def provisioning_policy_id=(value)
                @provisioning_policy_id = value
            end
            ## 
            ## Gets the provisioningPolicyName property value. The provisioningPolicyName property
            ## @return a string
            ## 
            def provisioning_policy_name
                return @provisioning_policy_name
            end
            ## 
            ## Sets the provisioningPolicyName property value. The provisioningPolicyName property
            ## @param value Value to set for the provisioningPolicyName property.
            ## @return a void
            ## 
            def provisioning_policy_name=(value)
                @provisioning_policy_name = value
            end
            ## 
            ## Gets the provisioningType property value. The provisioningType property
            ## @return a cloud_pc_provisioning_type
            ## 
            def provisioning_type
                return @provisioning_type
            end
            ## 
            ## Sets the provisioningType property value. The provisioningType property
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
            ## Gets the servicePlanId property value. The servicePlanId property
            ## @return a string
            ## 
            def service_plan_id
                return @service_plan_id
            end
            ## 
            ## Sets the servicePlanId property value. The servicePlanId property
            ## @param value Value to set for the servicePlanId property.
            ## @return a void
            ## 
            def service_plan_id=(value)
                @service_plan_id = value
            end
            ## 
            ## Gets the servicePlanName property value. The servicePlanName property
            ## @return a string
            ## 
            def service_plan_name
                return @service_plan_name
            end
            ## 
            ## Sets the servicePlanName property value. The servicePlanName property
            ## @param value Value to set for the servicePlanName property.
            ## @return a void
            ## 
            def service_plan_name=(value)
                @service_plan_name = value
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
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
