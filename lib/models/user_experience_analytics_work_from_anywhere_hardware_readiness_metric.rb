require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics hardware readiness entity contains account level information about hardware blockers for windows upgrade.
        class UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The percentage of devices for which OS check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @os_check_failed_percentage
            ## 
            # The percentage of devices for which processor hardware core count check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @processor_core_count_check_failed_percentage
            ## 
            # The percentage of devices for which processor hardware family check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @processor_family_check_failed_percentage
            ## 
            # The percentage of devices for which processor hardware speed check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @processor_speed_check_failed_percentage
            ## 
            # The percentage of devices for which processor hardware 64-bit architecture check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @processor64_bit_check_failed_percentage
            ## 
            # The percentage of devices for which RAM hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @ram_check_failed_percentage
            ## 
            # The percentage of devices for which secure boot hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @secure_boot_check_failed_percentage
            ## 
            # The percentage of devices for which storage hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @storage_check_failed_percentage
            ## 
            # The count of total devices in an organization. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @total_device_count
            ## 
            # The percentage of devices for which Trusted Platform Module (TPM) hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @tpm_check_failed_percentage
            ## 
            # The count of devices in an organization eligible for windows upgrade. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @upgrade_eligible_device_count
            ## 
            ## Instantiates a new userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_work_from_anywhere_hardware_readiness_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "osCheckFailedPercentage" => lambda {|n| @os_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "processorCoreCountCheckFailedPercentage" => lambda {|n| @processor_core_count_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "processorFamilyCheckFailedPercentage" => lambda {|n| @processor_family_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "processorSpeedCheckFailedPercentage" => lambda {|n| @processor_speed_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "processor64BitCheckFailedPercentage" => lambda {|n| @processor64_bit_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "ramCheckFailedPercentage" => lambda {|n| @ram_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "secureBootCheckFailedPercentage" => lambda {|n| @secure_boot_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "storageCheckFailedPercentage" => lambda {|n| @storage_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "totalDeviceCount" => lambda {|n| @total_device_count = n.get_number_value() },
                    "tpmCheckFailedPercentage" => lambda {|n| @tpm_check_failed_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "upgradeEligibleDeviceCount" => lambda {|n| @upgrade_eligible_device_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the osCheckFailedPercentage property value. The percentage of devices for which OS check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def os_check_failed_percentage
                return @os_check_failed_percentage
            end
            ## 
            ## Sets the osCheckFailedPercentage property value. The percentage of devices for which OS check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the osCheckFailedPercentage property.
            ## @return a void
            ## 
            def os_check_failed_percentage=(value)
                @os_check_failed_percentage = value
            end
            ## 
            ## Gets the processorCoreCountCheckFailedPercentage property value. The percentage of devices for which processor hardware core count check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def processor_core_count_check_failed_percentage
                return @processor_core_count_check_failed_percentage
            end
            ## 
            ## Sets the processorCoreCountCheckFailedPercentage property value. The percentage of devices for which processor hardware core count check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the processorCoreCountCheckFailedPercentage property.
            ## @return a void
            ## 
            def processor_core_count_check_failed_percentage=(value)
                @processor_core_count_check_failed_percentage = value
            end
            ## 
            ## Gets the processorFamilyCheckFailedPercentage property value. The percentage of devices for which processor hardware family check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def processor_family_check_failed_percentage
                return @processor_family_check_failed_percentage
            end
            ## 
            ## Sets the processorFamilyCheckFailedPercentage property value. The percentage of devices for which processor hardware family check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the processorFamilyCheckFailedPercentage property.
            ## @return a void
            ## 
            def processor_family_check_failed_percentage=(value)
                @processor_family_check_failed_percentage = value
            end
            ## 
            ## Gets the processorSpeedCheckFailedPercentage property value. The percentage of devices for which processor hardware speed check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def processor_speed_check_failed_percentage
                return @processor_speed_check_failed_percentage
            end
            ## 
            ## Sets the processorSpeedCheckFailedPercentage property value. The percentage of devices for which processor hardware speed check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the processorSpeedCheckFailedPercentage property.
            ## @return a void
            ## 
            def processor_speed_check_failed_percentage=(value)
                @processor_speed_check_failed_percentage = value
            end
            ## 
            ## Gets the processor64BitCheckFailedPercentage property value. The percentage of devices for which processor hardware 64-bit architecture check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def processor64_bit_check_failed_percentage
                return @processor64_bit_check_failed_percentage
            end
            ## 
            ## Sets the processor64BitCheckFailedPercentage property value. The percentage of devices for which processor hardware 64-bit architecture check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the processor64BitCheckFailedPercentage property.
            ## @return a void
            ## 
            def processor64_bit_check_failed_percentage=(value)
                @processor64_bit_check_failed_percentage = value
            end
            ## 
            ## Gets the ramCheckFailedPercentage property value. The percentage of devices for which RAM hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def ram_check_failed_percentage
                return @ram_check_failed_percentage
            end
            ## 
            ## Sets the ramCheckFailedPercentage property value. The percentage of devices for which RAM hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the ramCheckFailedPercentage property.
            ## @return a void
            ## 
            def ram_check_failed_percentage=(value)
                @ram_check_failed_percentage = value
            end
            ## 
            ## Gets the secureBootCheckFailedPercentage property value. The percentage of devices for which secure boot hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def secure_boot_check_failed_percentage
                return @secure_boot_check_failed_percentage
            end
            ## 
            ## Sets the secureBootCheckFailedPercentage property value. The percentage of devices for which secure boot hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the secureBootCheckFailedPercentage property.
            ## @return a void
            ## 
            def secure_boot_check_failed_percentage=(value)
                @secure_boot_check_failed_percentage = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("osCheckFailedPercentage", @os_check_failed_percentage)
                writer.write_object_value("processorCoreCountCheckFailedPercentage", @processor_core_count_check_failed_percentage)
                writer.write_object_value("processorFamilyCheckFailedPercentage", @processor_family_check_failed_percentage)
                writer.write_object_value("processorSpeedCheckFailedPercentage", @processor_speed_check_failed_percentage)
                writer.write_object_value("processor64BitCheckFailedPercentage", @processor64_bit_check_failed_percentage)
                writer.write_object_value("ramCheckFailedPercentage", @ram_check_failed_percentage)
                writer.write_object_value("secureBootCheckFailedPercentage", @secure_boot_check_failed_percentage)
                writer.write_object_value("storageCheckFailedPercentage", @storage_check_failed_percentage)
                writer.write_number_value("totalDeviceCount", @total_device_count)
                writer.write_object_value("tpmCheckFailedPercentage", @tpm_check_failed_percentage)
                writer.write_number_value("upgradeEligibleDeviceCount", @upgrade_eligible_device_count)
            end
            ## 
            ## Gets the storageCheckFailedPercentage property value. The percentage of devices for which storage hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def storage_check_failed_percentage
                return @storage_check_failed_percentage
            end
            ## 
            ## Sets the storageCheckFailedPercentage property value. The percentage of devices for which storage hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the storageCheckFailedPercentage property.
            ## @return a void
            ## 
            def storage_check_failed_percentage=(value)
                @storage_check_failed_percentage = value
            end
            ## 
            ## Gets the totalDeviceCount property value. The count of total devices in an organization. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def total_device_count
                return @total_device_count
            end
            ## 
            ## Sets the totalDeviceCount property value. The count of total devices in an organization. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the totalDeviceCount property.
            ## @return a void
            ## 
            def total_device_count=(value)
                @total_device_count = value
            end
            ## 
            ## Gets the tpmCheckFailedPercentage property value. The percentage of devices for which Trusted Platform Module (TPM) hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def tpm_check_failed_percentage
                return @tpm_check_failed_percentage
            end
            ## 
            ## Sets the tpmCheckFailedPercentage property value. The percentage of devices for which Trusted Platform Module (TPM) hardware check has failed. Valid values 0 to 100. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the tpmCheckFailedPercentage property.
            ## @return a void
            ## 
            def tpm_check_failed_percentage=(value)
                @tpm_check_failed_percentage = value
            end
            ## 
            ## Gets the upgradeEligibleDeviceCount property value. The count of devices in an organization eligible for windows upgrade. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def upgrade_eligible_device_count
                return @upgrade_eligible_device_count
            end
            ## 
            ## Sets the upgradeEligibleDeviceCount property value. The count of devices in an organization eligible for windows upgrade. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the upgradeEligibleDeviceCount property.
            ## @return a void
            ## 
            def upgrade_eligible_device_count=(value)
                @upgrade_eligible_device_count = value
            end
        end
    end
end
