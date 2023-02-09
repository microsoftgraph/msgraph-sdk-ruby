require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device operating system summary.
        class DeviceOperatingSystemSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The count of Corporate work profile Android devices. Also known as Corporate Owned Personally Enabled (COPE). Valid values -1 to 2147483647
            @android_corporate_work_profile_count
            ## 
            # Number of android device count.
            @android_count
            ## 
            # Number of dedicated Android devices.
            @android_dedicated_count
            ## 
            # Number of device admin Android devices.
            @android_device_admin_count
            ## 
            # Number of fully managed Android devices.
            @android_fully_managed_count
            ## 
            # Number of work profile Android devices.
            @android_work_profile_count
            ## 
            # Number of ConfigMgr managed devices.
            @config_mgr_device_count
            ## 
            # Number of iOS device count.
            @ios_count
            ## 
            # Number of Mac OS X device count.
            @mac_o_s_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Number of unknown device count.
            @unknown_count
            ## 
            # Number of Windows device count.
            @windows_count
            ## 
            # Number of Windows mobile device count.
            @windows_mobile_count
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
            ## Gets the androidCorporateWorkProfileCount property value. The count of Corporate work profile Android devices. Also known as Corporate Owned Personally Enabled (COPE). Valid values -1 to 2147483647
            ## @return a integer
            ## 
            def android_corporate_work_profile_count
                return @android_corporate_work_profile_count
            end
            ## 
            ## Sets the androidCorporateWorkProfileCount property value. The count of Corporate work profile Android devices. Also known as Corporate Owned Personally Enabled (COPE). Valid values -1 to 2147483647
            ## @param value Value to set for the android_corporate_work_profile_count property.
            ## @return a void
            ## 
            def android_corporate_work_profile_count=(value)
                @android_corporate_work_profile_count = value
            end
            ## 
            ## Gets the androidCount property value. Number of android device count.
            ## @return a integer
            ## 
            def android_count
                return @android_count
            end
            ## 
            ## Sets the androidCount property value. Number of android device count.
            ## @param value Value to set for the android_count property.
            ## @return a void
            ## 
            def android_count=(value)
                @android_count = value
            end
            ## 
            ## Gets the androidDedicatedCount property value. Number of dedicated Android devices.
            ## @return a integer
            ## 
            def android_dedicated_count
                return @android_dedicated_count
            end
            ## 
            ## Sets the androidDedicatedCount property value. Number of dedicated Android devices.
            ## @param value Value to set for the android_dedicated_count property.
            ## @return a void
            ## 
            def android_dedicated_count=(value)
                @android_dedicated_count = value
            end
            ## 
            ## Gets the androidDeviceAdminCount property value. Number of device admin Android devices.
            ## @return a integer
            ## 
            def android_device_admin_count
                return @android_device_admin_count
            end
            ## 
            ## Sets the androidDeviceAdminCount property value. Number of device admin Android devices.
            ## @param value Value to set for the android_device_admin_count property.
            ## @return a void
            ## 
            def android_device_admin_count=(value)
                @android_device_admin_count = value
            end
            ## 
            ## Gets the androidFullyManagedCount property value. Number of fully managed Android devices.
            ## @return a integer
            ## 
            def android_fully_managed_count
                return @android_fully_managed_count
            end
            ## 
            ## Sets the androidFullyManagedCount property value. Number of fully managed Android devices.
            ## @param value Value to set for the android_fully_managed_count property.
            ## @return a void
            ## 
            def android_fully_managed_count=(value)
                @android_fully_managed_count = value
            end
            ## 
            ## Gets the androidWorkProfileCount property value. Number of work profile Android devices.
            ## @return a integer
            ## 
            def android_work_profile_count
                return @android_work_profile_count
            end
            ## 
            ## Sets the androidWorkProfileCount property value. Number of work profile Android devices.
            ## @param value Value to set for the android_work_profile_count property.
            ## @return a void
            ## 
            def android_work_profile_count=(value)
                @android_work_profile_count = value
            end
            ## 
            ## Gets the configMgrDeviceCount property value. Number of ConfigMgr managed devices.
            ## @return a integer
            ## 
            def config_mgr_device_count
                return @config_mgr_device_count
            end
            ## 
            ## Sets the configMgrDeviceCount property value. Number of ConfigMgr managed devices.
            ## @param value Value to set for the config_mgr_device_count property.
            ## @return a void
            ## 
            def config_mgr_device_count=(value)
                @config_mgr_device_count = value
            end
            ## 
            ## Instantiates a new deviceOperatingSystemSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_operating_system_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceOperatingSystemSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "androidCorporateWorkProfileCount" => lambda {|n| @android_corporate_work_profile_count = n.get_number_value() },
                    "androidCount" => lambda {|n| @android_count = n.get_number_value() },
                    "androidDedicatedCount" => lambda {|n| @android_dedicated_count = n.get_number_value() },
                    "androidDeviceAdminCount" => lambda {|n| @android_device_admin_count = n.get_number_value() },
                    "androidFullyManagedCount" => lambda {|n| @android_fully_managed_count = n.get_number_value() },
                    "androidWorkProfileCount" => lambda {|n| @android_work_profile_count = n.get_number_value() },
                    "configMgrDeviceCount" => lambda {|n| @config_mgr_device_count = n.get_number_value() },
                    "iosCount" => lambda {|n| @ios_count = n.get_number_value() },
                    "macOSCount" => lambda {|n| @mac_o_s_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "unknownCount" => lambda {|n| @unknown_count = n.get_number_value() },
                    "windowsCount" => lambda {|n| @windows_count = n.get_number_value() },
                    "windowsMobileCount" => lambda {|n| @windows_mobile_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the iosCount property value. Number of iOS device count.
            ## @return a integer
            ## 
            def ios_count
                return @ios_count
            end
            ## 
            ## Sets the iosCount property value. Number of iOS device count.
            ## @param value Value to set for the ios_count property.
            ## @return a void
            ## 
            def ios_count=(value)
                @ios_count = value
            end
            ## 
            ## Gets the macOSCount property value. Number of Mac OS X device count.
            ## @return a integer
            ## 
            def mac_o_s_count
                return @mac_o_s_count
            end
            ## 
            ## Sets the macOSCount property value. Number of Mac OS X device count.
            ## @param value Value to set for the mac_o_s_count property.
            ## @return a void
            ## 
            def mac_o_s_count=(value)
                @mac_o_s_count = value
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
                writer.write_number_value("androidCorporateWorkProfileCount", @android_corporate_work_profile_count)
                writer.write_number_value("androidCount", @android_count)
                writer.write_number_value("androidDedicatedCount", @android_dedicated_count)
                writer.write_number_value("androidDeviceAdminCount", @android_device_admin_count)
                writer.write_number_value("androidFullyManagedCount", @android_fully_managed_count)
                writer.write_number_value("androidWorkProfileCount", @android_work_profile_count)
                writer.write_number_value("configMgrDeviceCount", @config_mgr_device_count)
                writer.write_number_value("iosCount", @ios_count)
                writer.write_number_value("macOSCount", @mac_o_s_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("unknownCount", @unknown_count)
                writer.write_number_value("windowsCount", @windows_count)
                writer.write_number_value("windowsMobileCount", @windows_mobile_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the unknownCount property value. Number of unknown device count.
            ## @return a integer
            ## 
            def unknown_count
                return @unknown_count
            end
            ## 
            ## Sets the unknownCount property value. Number of unknown device count.
            ## @param value Value to set for the unknown_count property.
            ## @return a void
            ## 
            def unknown_count=(value)
                @unknown_count = value
            end
            ## 
            ## Gets the windowsCount property value. Number of Windows device count.
            ## @return a integer
            ## 
            def windows_count
                return @windows_count
            end
            ## 
            ## Sets the windowsCount property value. Number of Windows device count.
            ## @param value Value to set for the windows_count property.
            ## @return a void
            ## 
            def windows_count=(value)
                @windows_count = value
            end
            ## 
            ## Gets the windowsMobileCount property value. Number of Windows mobile device count.
            ## @return a integer
            ## 
            def windows_mobile_count
                return @windows_mobile_count
            end
            ## 
            ## Sets the windowsMobileCount property value. Number of Windows mobile device count.
            ## @param value Value to set for the windows_mobile_count property.
            ## @return a void
            ## 
            def windows_mobile_count=(value)
                @windows_mobile_count = value
            end
        end
    end
end
