require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics application performance entity contains application performance details.
        class UserExperienceAnalyticsAppHealthApplicationPerformance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The health score of the application. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @active_device_count
            ## 
            # The number of crashes for the application. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @app_crash_count
            ## 
            # The friendly name of the application. Possible values are: Outlook, Excel. Supports: $select, $OrderBy. Read-only.
            @app_display_name
            ## 
            # The number of hangs for the application. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @app_hang_count
            ## 
            # The health score of the application. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @app_health_score
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
            ## Gets the activeDeviceCount property value. The health score of the application. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_device_count
                return @active_device_count
            end
            ## 
            ## Sets the activeDeviceCount property value. The health score of the application. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
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
            ## Gets the appHangCount property value. The number of hangs for the application. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def app_hang_count
                return @app_hang_count
            end
            ## 
            ## Sets the appHangCount property value. The number of hangs for the application. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the app_hang_count property.
            ## @return a void
            ## 
            def app_hang_count=(value)
                @app_hang_count = value
            end
            ## 
            ## Gets the appHealthScore property value. The health score of the application. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def app_health_score
                return @app_health_score
            end
            ## 
            ## Sets the appHealthScore property value. The health score of the application. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the app_health_score property.
            ## @return a void
            ## 
            def app_health_score=(value)
                @app_health_score = value
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
            ## Instantiates a new userExperienceAnalyticsAppHealthApplicationPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_app_health_application_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAppHealthApplicationPerformance.new
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
                    "appHangCount" => lambda {|n| @app_hang_count = n.get_number_value() },
                    "appHealthScore" => lambda {|n| @app_health_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "appName" => lambda {|n| @app_name = n.get_string_value() },
                    "appPublisher" => lambda {|n| @app_publisher = n.get_string_value() },
                    "appUsageDuration" => lambda {|n| @app_usage_duration = n.get_number_value() },
                    "meanTimeToFailureInMinutes" => lambda {|n| @mean_time_to_failure_in_minutes = n.get_number_value() },
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
                writer.write_number_value("appHangCount", @app_hang_count)
                writer.write_object_value("appHealthScore", @app_health_score)
                writer.write_string_value("appName", @app_name)
                writer.write_string_value("appPublisher", @app_publisher)
                writer.write_number_value("appUsageDuration", @app_usage_duration)
                writer.write_number_value("meanTimeToFailureInMinutes", @mean_time_to_failure_in_minutes)
            end
        end
    end
end
