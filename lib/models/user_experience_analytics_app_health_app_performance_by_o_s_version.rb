require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics application performance entity contains app performance details by OS version.
        class UserExperienceAnalyticsAppHealthAppPerformanceByOSVersion < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of devices where the application has been active. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @active_device_count
            ## 
            # The number of crashes for the application. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @app_crash_count
            ## 
            # The friendly name of the application. Possible values are: Outlook, Excel. Supports: $select, $OrderBy. Read-only.
            @app_display_name
            ## 
            # The name of the application. Possible values are: outlook.exe, excel.exe. Supports: $select, $OrderBy. Read-only.
            @app_name
            ## 
            # The publisher of the application. Supports: $select, $OrderBy. Read-only.
            @app_publisher
            ## 
            # The total usage time of the application in minutes. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @app_usage_duration
            ## 
            # The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @mean_time_to_failure_in_minutes
            ## 
            # The OS build number of the application. Supports: $select, $OrderBy. Read-only.
            @os_build_number
            ## 
            # The OS version of the application. Supports: $select, $OrderBy. Read-only.
            @os_version
            ## 
            ## Gets the activeDeviceCount property value. The number of devices where the application has been active. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_device_count
                return @active_device_count
            end
            ## 
            ## Sets the activeDeviceCount property value. The number of devices where the application has been active. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the active_device_count property.
            ## @return a void
            ## 
            def active_device_count=(value)
                @active_device_count = value
            end
            ## 
            ## Gets the appCrashCount property value. The number of crashes for the application. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def app_crash_count
                return @app_crash_count
            end
            ## 
            ## Sets the appCrashCount property value. The number of crashes for the application. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the app_crash_count property.
            ## @return a void
            ## 
            def app_crash_count=(value)
                @app_crash_count = value
            end
            ## 
            ## Gets the appDisplayName property value. The friendly name of the application. Possible values are: Outlook, Excel. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. The friendly name of the application. Possible values are: Outlook, Excel. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the app_display_name property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Gets the appName property value. The name of the application. Possible values are: outlook.exe, excel.exe. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def app_name
                return @app_name
            end
            ## 
            ## Sets the appName property value. The name of the application. Possible values are: outlook.exe, excel.exe. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the app_name property.
            ## @return a void
            ## 
            def app_name=(value)
                @app_name = value
            end
            ## 
            ## Gets the appPublisher property value. The publisher of the application. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def app_publisher
                return @app_publisher
            end
            ## 
            ## Sets the appPublisher property value. The publisher of the application. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the app_publisher property.
            ## @return a void
            ## 
            def app_publisher=(value)
                @app_publisher = value
            end
            ## 
            ## Gets the appUsageDuration property value. The total usage time of the application in minutes. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def app_usage_duration
                return @app_usage_duration
            end
            ## 
            ## Sets the appUsageDuration property value. The total usage time of the application in minutes. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the app_usage_duration property.
            ## @return a void
            ## 
            def app_usage_duration=(value)
                @app_usage_duration = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsAppHealthAppPerformanceByOSVersion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_app_health_app_performance_by_o_s_version
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAppHealthAppPerformanceByOSVersion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDeviceCount" => lambda {|n| @active_device_count = n.get_number_value() },
                    "appCrashCount" => lambda {|n| @app_crash_count = n.get_number_value() },
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appName" => lambda {|n| @app_name = n.get_string_value() },
                    "appPublisher" => lambda {|n| @app_publisher = n.get_string_value() },
                    "appUsageDuration" => lambda {|n| @app_usage_duration = n.get_number_value() },
                    "meanTimeToFailureInMinutes" => lambda {|n| @mean_time_to_failure_in_minutes = n.get_number_value() },
                    "osBuildNumber" => lambda {|n| @os_build_number = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the meanTimeToFailureInMinutes property value. The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def mean_time_to_failure_in_minutes
                return @mean_time_to_failure_in_minutes
            end
            ## 
            ## Sets the meanTimeToFailureInMinutes property value. The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the mean_time_to_failure_in_minutes property.
            ## @return a void
            ## 
            def mean_time_to_failure_in_minutes=(value)
                @mean_time_to_failure_in_minutes = value
            end
            ## 
            ## Gets the osBuildNumber property value. The OS build number of the application. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def os_build_number
                return @os_build_number
            end
            ## 
            ## Sets the osBuildNumber property value. The OS build number of the application. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the os_build_number property.
            ## @return a void
            ## 
            def os_build_number=(value)
                @os_build_number = value
            end
            ## 
            ## Gets the osVersion property value. The OS version of the application. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The OS version of the application. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the os_version property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activeDeviceCount", @active_device_count)
                writer.write_number_value("appCrashCount", @app_crash_count)
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appName", @app_name)
                writer.write_string_value("appPublisher", @app_publisher)
                writer.write_number_value("appUsageDuration", @app_usage_duration)
                writer.write_number_value("meanTimeToFailureInMinutes", @mean_time_to_failure_in_minutes)
                writer.write_string_value("osBuildNumber", @os_build_number)
                writer.write_string_value("osVersion", @os_version)
            end
        end
    end
end
