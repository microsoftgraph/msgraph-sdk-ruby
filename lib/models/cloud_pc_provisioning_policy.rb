require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcProvisioningPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alternateResourceUrl property
            @alternate_resource_url
            ## 
            # The assignments property
            @assignments
            ## 
            # The cloudPcGroupDisplayName property
            @cloud_pc_group_display_name
            ## 
            # The cloudPcNamingTemplate property
            @cloud_pc_naming_template
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The domainJoinConfigurations property
            @domain_join_configurations
            ## 
            # The enableSingleSignOn property
            @enable_single_sign_on
            ## 
            # The gracePeriodInHours property
            @grace_period_in_hours
            ## 
            # The imageDisplayName property
            @image_display_name
            ## 
            # The imageId property
            @image_id
            ## 
            # The imageType property
            @image_type
            ## 
            # The localAdminEnabled property
            @local_admin_enabled
            ## 
            # The microsoftManagedDesktop property
            @microsoft_managed_desktop
            ## 
            # The provisioningType property
            @provisioning_type
            ## 
            # The windowsSetting property
            @windows_setting
            ## 
            ## Gets the alternateResourceUrl property value. The alternateResourceUrl property
            ## @return a string
            ## 
            def alternate_resource_url
                return @alternate_resource_url
            end
            ## 
            ## Sets the alternateResourceUrl property value. The alternateResourceUrl property
            ## @param value Value to set for the alternateResourceUrl property.
            ## @return a void
            ## 
            def alternate_resource_url=(value)
                @alternate_resource_url = value
            end
            ## 
            ## Gets the assignments property value. The assignments property
            ## @return a cloud_pc_provisioning_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The assignments property
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the cloudPcGroupDisplayName property value. The cloudPcGroupDisplayName property
            ## @return a string
            ## 
            def cloud_pc_group_display_name
                return @cloud_pc_group_display_name
            end
            ## 
            ## Sets the cloudPcGroupDisplayName property value. The cloudPcGroupDisplayName property
            ## @param value Value to set for the cloudPcGroupDisplayName property.
            ## @return a void
            ## 
            def cloud_pc_group_display_name=(value)
                @cloud_pc_group_display_name = value
            end
            ## 
            ## Gets the cloudPcNamingTemplate property value. The cloudPcNamingTemplate property
            ## @return a string
            ## 
            def cloud_pc_naming_template
                return @cloud_pc_naming_template
            end
            ## 
            ## Sets the cloudPcNamingTemplate property value. The cloudPcNamingTemplate property
            ## @param value Value to set for the cloudPcNamingTemplate property.
            ## @return a void
            ## 
            def cloud_pc_naming_template=(value)
                @cloud_pc_naming_template = value
            end
            ## 
            ## Instantiates a new CloudPcProvisioningPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_provisioning_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcProvisioningPolicy.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
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
            ## Gets the domainJoinConfigurations property value. The domainJoinConfigurations property
            ## @return a cloud_pc_domain_join_configuration
            ## 
            def domain_join_configurations
                return @domain_join_configurations
            end
            ## 
            ## Sets the domainJoinConfigurations property value. The domainJoinConfigurations property
            ## @param value Value to set for the domainJoinConfigurations property.
            ## @return a void
            ## 
            def domain_join_configurations=(value)
                @domain_join_configurations = value
            end
            ## 
            ## Gets the enableSingleSignOn property value. The enableSingleSignOn property
            ## @return a boolean
            ## 
            def enable_single_sign_on
                return @enable_single_sign_on
            end
            ## 
            ## Sets the enableSingleSignOn property value. The enableSingleSignOn property
            ## @param value Value to set for the enableSingleSignOn property.
            ## @return a void
            ## 
            def enable_single_sign_on=(value)
                @enable_single_sign_on = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alternateResourceUrl" => lambda {|n| @alternate_resource_url = n.get_string_value() },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcProvisioningPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "cloudPcGroupDisplayName" => lambda {|n| @cloud_pc_group_display_name = n.get_string_value() },
                    "cloudPcNamingTemplate" => lambda {|n| @cloud_pc_naming_template = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "domainJoinConfigurations" => lambda {|n| @domain_join_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcDomainJoinConfiguration.create_from_discriminator_value(pn) }) },
                    "enableSingleSignOn" => lambda {|n| @enable_single_sign_on = n.get_boolean_value() },
                    "gracePeriodInHours" => lambda {|n| @grace_period_in_hours = n.get_number_value() },
                    "imageDisplayName" => lambda {|n| @image_display_name = n.get_string_value() },
                    "imageId" => lambda {|n| @image_id = n.get_string_value() },
                    "imageType" => lambda {|n| @image_type = n.get_enum_value(MicrosoftGraph::Models::CloudPcProvisioningPolicyImageType) },
                    "localAdminEnabled" => lambda {|n| @local_admin_enabled = n.get_boolean_value() },
                    "microsoftManagedDesktop" => lambda {|n| @microsoft_managed_desktop = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MicrosoftManagedDesktop.create_from_discriminator_value(pn) }) },
                    "provisioningType" => lambda {|n| @provisioning_type = n.get_enum_value(MicrosoftGraph::Models::CloudPcProvisioningType) },
                    "windowsSetting" => lambda {|n| @windows_setting = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CloudPcWindowsSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the gracePeriodInHours property value. The gracePeriodInHours property
            ## @return a integer
            ## 
            def grace_period_in_hours
                return @grace_period_in_hours
            end
            ## 
            ## Sets the gracePeriodInHours property value. The gracePeriodInHours property
            ## @param value Value to set for the gracePeriodInHours property.
            ## @return a void
            ## 
            def grace_period_in_hours=(value)
                @grace_period_in_hours = value
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
            ## Gets the imageId property value. The imageId property
            ## @return a string
            ## 
            def image_id
                return @image_id
            end
            ## 
            ## Sets the imageId property value. The imageId property
            ## @param value Value to set for the imageId property.
            ## @return a void
            ## 
            def image_id=(value)
                @image_id = value
            end
            ## 
            ## Gets the imageType property value. The imageType property
            ## @return a cloud_pc_provisioning_policy_image_type
            ## 
            def image_type
                return @image_type
            end
            ## 
            ## Sets the imageType property value. The imageType property
            ## @param value Value to set for the imageType property.
            ## @return a void
            ## 
            def image_type=(value)
                @image_type = value
            end
            ## 
            ## Gets the localAdminEnabled property value. The localAdminEnabled property
            ## @return a boolean
            ## 
            def local_admin_enabled
                return @local_admin_enabled
            end
            ## 
            ## Sets the localAdminEnabled property value. The localAdminEnabled property
            ## @param value Value to set for the localAdminEnabled property.
            ## @return a void
            ## 
            def local_admin_enabled=(value)
                @local_admin_enabled = value
            end
            ## 
            ## Gets the microsoftManagedDesktop property value. The microsoftManagedDesktop property
            ## @return a microsoft_managed_desktop
            ## 
            def microsoft_managed_desktop
                return @microsoft_managed_desktop
            end
            ## 
            ## Sets the microsoftManagedDesktop property value. The microsoftManagedDesktop property
            ## @param value Value to set for the microsoftManagedDesktop property.
            ## @return a void
            ## 
            def microsoft_managed_desktop=(value)
                @microsoft_managed_desktop = value
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
                writer.write_string_value("alternateResourceUrl", @alternate_resource_url)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_string_value("cloudPcGroupDisplayName", @cloud_pc_group_display_name)
                writer.write_string_value("cloudPcNamingTemplate", @cloud_pc_naming_template)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("domainJoinConfigurations", @domain_join_configurations)
                writer.write_boolean_value("enableSingleSignOn", @enable_single_sign_on)
                writer.write_number_value("gracePeriodInHours", @grace_period_in_hours)
                writer.write_string_value("imageDisplayName", @image_display_name)
                writer.write_string_value("imageId", @image_id)
                writer.write_enum_value("imageType", @image_type)
                writer.write_boolean_value("localAdminEnabled", @local_admin_enabled)
                writer.write_object_value("microsoftManagedDesktop", @microsoft_managed_desktop)
                writer.write_enum_value("provisioningType", @provisioning_type)
                writer.write_object_value("windowsSetting", @windows_setting)
            end
            ## 
            ## Gets the windowsSetting property value. The windowsSetting property
            ## @return a cloud_pc_windows_setting
            ## 
            def windows_setting
                return @windows_setting
            end
            ## 
            ## Sets the windowsSetting property value. The windowsSetting property
            ## @param value Value to set for the windowsSetting property.
            ## @return a void
            ## 
            def windows_setting=(value)
                @windows_setting = value
            end
        end
    end
end
