require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics device performance entity contains device performance details.
        class UserExperienceAnalyticsAppHealthDevicePerformance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of application crashes for the device. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @app_crash_count
            ## 
            # The number of application hangs for the device. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @app_hang_count
            ## 
            # The number of distinct application crashes for the device. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @crashed_app_count
            ## 
            # The application health score of the device. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @device_app_health_score
            ## 
            # The name of the device. Supports: $select, $OrderBy. Read-only.
            @device_display_name
            ## 
            # The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            @device_id
            ## 
            # The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            @device_manufacturer
            ## 
            # The model name of the device. Supports: $select, $OrderBy. Read-only.
            @device_model
            ## 
            # The healthStatus property
            @health_status
            ## 
            # The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @mean_time_to_failure_in_minutes
            ## 
            # The date and time when the statistics were last computed. The value cannot be modified and is automatically populated when the statistics are computed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2022 would look like this: '2022-01-01T00:00:00Z'. Returned by default. Read-only.
            @processed_date_time
            ## 
            ## Gets the appCrashCount property value. The number of application crashes for the device. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def app_crash_count
                return @app_crash_count
            end
            ## 
            ## Sets the appCrashCount property value. The number of application crashes for the device. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the appCrashCount property.
            ## @return a void
            ## 
            def app_crash_count=(value)
                @app_crash_count = value
            end
            ## 
            ## Gets the appHangCount property value. The number of application hangs for the device. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def app_hang_count
                return @app_hang_count
            end
            ## 
            ## Sets the appHangCount property value. The number of application hangs for the device. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the appHangCount property.
            ## @return a void
            ## 
            def app_hang_count=(value)
                @app_hang_count = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsAppHealthDevicePerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the crashedAppCount property value. The number of distinct application crashes for the device. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def crashed_app_count
                return @crashed_app_count
            end
            ## 
            ## Sets the crashedAppCount property value. The number of distinct application crashes for the device. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the crashedAppCount property.
            ## @return a void
            ## 
            def crashed_app_count=(value)
                @crashed_app_count = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_app_health_device_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAppHealthDevicePerformance.new
            end
            ## 
            ## Gets the deviceAppHealthScore property value. The application health score of the device. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def device_app_health_score
                return @device_app_health_score
            end
            ## 
            ## Sets the deviceAppHealthScore property value. The application health score of the device. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the deviceAppHealthScore property.
            ## @return a void
            ## 
            def device_app_health_score=(value)
                @device_app_health_score = value
            end
            ## 
            ## Gets the deviceDisplayName property value. The name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def device_display_name
                return @device_display_name
            end
            ## 
            ## Sets the deviceDisplayName property value. The name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the deviceDisplayName property.
            ## @return a void
            ## 
            def device_display_name=(value)
                @device_display_name = value
            end
            ## 
            ## Gets the deviceId property value. The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceManufacturer property value. The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def device_manufacturer
                return @device_manufacturer
            end
            ## 
            ## Sets the deviceManufacturer property value. The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the deviceManufacturer property.
            ## @return a void
            ## 
            def device_manufacturer=(value)
                @device_manufacturer = value
            end
            ## 
            ## Gets the deviceModel property value. The model name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def device_model
                return @device_model
            end
            ## 
            ## Sets the deviceModel property value. The model name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the deviceModel property.
            ## @return a void
            ## 
            def device_model=(value)
                @device_model = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appCrashCount" => lambda {|n| @app_crash_count = n.get_number_value() },
                    "appHangCount" => lambda {|n| @app_hang_count = n.get_number_value() },
                    "crashedAppCount" => lambda {|n| @crashed_app_count = n.get_number_value() },
                    "deviceAppHealthScore" => lambda {|n| @device_app_health_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "deviceDisplayName" => lambda {|n| @device_display_name = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceManufacturer" => lambda {|n| @device_manufacturer = n.get_string_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraph::Models::UserExperienceAnalyticsHealthState) },
                    "meanTimeToFailureInMinutes" => lambda {|n| @mean_time_to_failure_in_minutes = n.get_number_value() },
                    "processedDateTime" => lambda {|n| @processed_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the healthStatus property value. The healthStatus property
            ## @return a user_experience_analytics_health_state
            ## 
            def health_status
                return @health_status
            end
            ## 
            ## Sets the healthStatus property value. The healthStatus property
            ## @param value Value to set for the healthStatus property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the meanTimeToFailureInMinutes property value. The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def mean_time_to_failure_in_minutes
                return @mean_time_to_failure_in_minutes
            end
            ## 
            ## Sets the meanTimeToFailureInMinutes property value. The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the meanTimeToFailureInMinutes property.
            ## @return a void
            ## 
            def mean_time_to_failure_in_minutes=(value)
                @mean_time_to_failure_in_minutes = value
            end
            ## 
            ## Gets the processedDateTime property value. The date and time when the statistics were last computed. The value cannot be modified and is automatically populated when the statistics are computed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2022 would look like this: '2022-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def processed_date_time
                return @processed_date_time
            end
            ## 
            ## Sets the processedDateTime property value. The date and time when the statistics were last computed. The value cannot be modified and is automatically populated when the statistics are computed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2022 would look like this: '2022-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @param value Value to set for the processedDateTime property.
            ## @return a void
            ## 
            def processed_date_time=(value)
                @processed_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("appCrashCount", @app_crash_count) unless @app_crash_count.nil?
                writer.write_number_value("appHangCount", @app_hang_count) unless @app_hang_count.nil?
                writer.write_number_value("crashedAppCount", @crashed_app_count) unless @crashed_app_count.nil?
                writer.write_object_value("deviceAppHealthScore", @device_app_health_score) unless @device_app_health_score.nil?
                writer.write_string_value("deviceDisplayName", @device_display_name) unless @device_display_name.nil?
                writer.write_string_value("deviceId", @device_id) unless @device_id.nil?
                writer.write_string_value("deviceManufacturer", @device_manufacturer) unless @device_manufacturer.nil?
                writer.write_string_value("deviceModel", @device_model) unless @device_model.nil?
                writer.write_enum_value("healthStatus", @health_status) unless @health_status.nil?
                writer.write_number_value("meanTimeToFailureInMinutes", @mean_time_to_failure_in_minutes) unless @mean_time_to_failure_in_minutes.nil?
                writer.write_date_time_value("processedDateTime", @processed_date_time) unless @processed_date_time.nil?
            end
        end
    end
end
