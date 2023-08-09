require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience work from anywhere Cloud management devices summary.
        class UserExperienceAnalyticsCloudManagementDevicesSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Total number of  co-managed devices. Read-only.
            @co_managed_device_count
            ## 
            # The count of intune devices that are not autopilot registerd. Read-only.
            @intune_device_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Total count of tenant attach devices. Read-only.
            @tenant_attach_device_count
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the coManagedDeviceCount property value. Total number of  co-managed devices. Read-only.
            ## @return a integer
            ## 
            def co_managed_device_count
                return @co_managed_device_count
            end
            ## 
            ## Sets the coManagedDeviceCount property value. Total number of  co-managed devices. Read-only.
            ## @param value Value to set for the coManagedDeviceCount property.
            ## @return a void
            ## 
            def co_managed_device_count=(value)
                @co_managed_device_count = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsCloudManagementDevicesSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_cloud_management_devices_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsCloudManagementDevicesSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "coManagedDeviceCount" => lambda {|n| @co_managed_device_count = n.get_number_value() },
                    "intuneDeviceCount" => lambda {|n| @intune_device_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tenantAttachDeviceCount" => lambda {|n| @tenant_attach_device_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the intuneDeviceCount property value. The count of intune devices that are not autopilot registerd. Read-only.
            ## @return a integer
            ## 
            def intune_device_count
                return @intune_device_count
            end
            ## 
            ## Sets the intuneDeviceCount property value. The count of intune devices that are not autopilot registerd. Read-only.
            ## @param value Value to set for the intuneDeviceCount property.
            ## @return a void
            ## 
            def intune_device_count=(value)
                @intune_device_count = value
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
                writer.write_number_value("coManagedDeviceCount", @co_managed_device_count)
                writer.write_number_value("intuneDeviceCount", @intune_device_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("tenantAttachDeviceCount", @tenant_attach_device_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tenantAttachDeviceCount property value. Total count of tenant attach devices. Read-only.
            ## @return a integer
            ## 
            def tenant_attach_device_count
                return @tenant_attach_device_count
            end
            ## 
            ## Sets the tenantAttachDeviceCount property value. Total count of tenant attach devices. Read-only.
            ## @param value Value to set for the tenantAttachDeviceCount property.
            ## @return a void
            ## 
            def tenant_attach_device_count=(value)
                @tenant_attach_device_count = value
            end
        end
    end
end
