require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics summary of Devices not windows autopilot ready.
        class UserExperienceAnalyticsAutopilotDevicesSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The count of intune devices that are not autopilot registerd. Read-only.
            @devices_not_autopilot_registered
            ## 
            # The count of intune devices not autopilot profile assigned. Read-only.
            @devices_without_autopilot_profile_assigned
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The count of windows 10 devices that are Intune and co-managed. Read-only.
            @total_windows10_devices_without_tenant_attached
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsAutopilotDevicesSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_autopilot_devices_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAutopilotDevicesSummary.new
            end
            ## 
            ## Gets the devicesNotAutopilotRegistered property value. The count of intune devices that are not autopilot registerd. Read-only.
            ## @return a integer
            ## 
            def devices_not_autopilot_registered
                return @devices_not_autopilot_registered
            end
            ## 
            ## Sets the devicesNotAutopilotRegistered property value. The count of intune devices that are not autopilot registerd. Read-only.
            ## @param value Value to set for the devices_not_autopilot_registered property.
            ## @return a void
            ## 
            def devices_not_autopilot_registered=(value)
                @devices_not_autopilot_registered = value
            end
            ## 
            ## Gets the devicesWithoutAutopilotProfileAssigned property value. The count of intune devices not autopilot profile assigned. Read-only.
            ## @return a integer
            ## 
            def devices_without_autopilot_profile_assigned
                return @devices_without_autopilot_profile_assigned
            end
            ## 
            ## Sets the devicesWithoutAutopilotProfileAssigned property value. The count of intune devices not autopilot profile assigned. Read-only.
            ## @param value Value to set for the devices_without_autopilot_profile_assigned property.
            ## @return a void
            ## 
            def devices_without_autopilot_profile_assigned=(value)
                @devices_without_autopilot_profile_assigned = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "devicesNotAutopilotRegistered" => lambda {|n| @devices_not_autopilot_registered = n.get_number_value() },
                    "devicesWithoutAutopilotProfileAssigned" => lambda {|n| @devices_without_autopilot_profile_assigned = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "totalWindows10DevicesWithoutTenantAttached" => lambda {|n| @total_windows10_devices_without_tenant_attached = n.get_number_value() },
                }
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_number_value("devicesNotAutopilotRegistered", @devices_not_autopilot_registered)
                writer.write_number_value("devicesWithoutAutopilotProfileAssigned", @devices_without_autopilot_profile_assigned)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("totalWindows10DevicesWithoutTenantAttached", @total_windows10_devices_without_tenant_attached)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalWindows10DevicesWithoutTenantAttached property value. The count of windows 10 devices that are Intune and co-managed. Read-only.
            ## @return a integer
            ## 
            def total_windows10_devices_without_tenant_attached
                return @total_windows10_devices_without_tenant_attached
            end
            ## 
            ## Sets the totalWindows10DevicesWithoutTenantAttached property value. The count of windows 10 devices that are Intune and co-managed. Read-only.
            ## @param value Value to set for the total_windows10_devices_without_tenant_attached property.
            ## @return a void
            ## 
            def total_windows10_devices_without_tenant_attached=(value)
                @total_windows10_devices_without_tenant_attached = value
            end
        end
    end
end
