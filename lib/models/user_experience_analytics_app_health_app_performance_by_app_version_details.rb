require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics application performance entity contains application performance by application version details.
        class UserExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of crashes for the app. Valid values -2147483648 to 2147483647
            @app_crash_count
            ## 
            # The friendly name of the application.
            @app_display_name
            ## 
            # The name of the application.
            @app_name
            ## 
            # The publisher of the application.
            @app_publisher
            ## 
            # The version of the application.
            @app_version
            ## 
            # The total number of devices that have reported one or more application crashes for this application and version. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @device_count_with_crashes
            ## 
            # When TRUE, indicates the version of application is the latest version for that application that is in use. When FALSE, indicates the version is not the latest version. FALSE by default. Supports: $select, $OrderBy.
            @is_latest_used_version
            ## 
            # When TRUE, indicates the version of application is the most used version for that application. When FALSE, indicates the version is not the most used version. FALSE by default. Supports: $select, $OrderBy. Read-only.
            @is_most_used_version
            ## 
            ## Gets the appCrashCount property value. The number of crashes for the app. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def app_crash_count
                return @app_crash_count
            end
            ## 
            ## Sets the appCrashCount property value. The number of crashes for the app. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the app_crash_count property.
            ## @return a void
            ## 
            def app_crash_count=(value)
                @app_crash_count = value
            end
            ## 
            ## Gets the appDisplayName property value. The friendly name of the application.
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. The friendly name of the application.
            ## @param value Value to set for the app_display_name property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Gets the appName property value. The name of the application.
            ## @return a string
            ## 
            def app_name
                return @app_name
            end
            ## 
            ## Sets the appName property value. The name of the application.
            ## @param value Value to set for the app_name property.
            ## @return a void
            ## 
            def app_name=(value)
                @app_name = value
            end
            ## 
            ## Gets the appPublisher property value. The publisher of the application.
            ## @return a string
            ## 
            def app_publisher
                return @app_publisher
            end
            ## 
            ## Sets the appPublisher property value. The publisher of the application.
            ## @param value Value to set for the app_publisher property.
            ## @return a void
            ## 
            def app_publisher=(value)
                @app_publisher = value
            end
            ## 
            ## Gets the appVersion property value. The version of the application.
            ## @return a string
            ## 
            def app_version
                return @app_version
            end
            ## 
            ## Sets the appVersion property value. The version of the application.
            ## @param value Value to set for the app_version property.
            ## @return a void
            ## 
            def app_version=(value)
                @app_version = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_app_health_app_performance_by_app_version_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails.new
            end
            ## 
            ## Gets the deviceCountWithCrashes property value. The total number of devices that have reported one or more application crashes for this application and version. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def device_count_with_crashes
                return @device_count_with_crashes
            end
            ## 
            ## Sets the deviceCountWithCrashes property value. The total number of devices that have reported one or more application crashes for this application and version. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the device_count_with_crashes property.
            ## @return a void
            ## 
            def device_count_with_crashes=(value)
                @device_count_with_crashes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appCrashCount" => lambda {|n| @app_crash_count = n.get_number_value() },
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appName" => lambda {|n| @app_name = n.get_string_value() },
                    "appPublisher" => lambda {|n| @app_publisher = n.get_string_value() },
                    "appVersion" => lambda {|n| @app_version = n.get_string_value() },
                    "deviceCountWithCrashes" => lambda {|n| @device_count_with_crashes = n.get_number_value() },
                    "isLatestUsedVersion" => lambda {|n| @is_latest_used_version = n.get_boolean_value() },
                    "isMostUsedVersion" => lambda {|n| @is_most_used_version = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isLatestUsedVersion property value. When TRUE, indicates the version of application is the latest version for that application that is in use. When FALSE, indicates the version is not the latest version. FALSE by default. Supports: $select, $OrderBy.
            ## @return a boolean
            ## 
            def is_latest_used_version
                return @is_latest_used_version
            end
            ## 
            ## Sets the isLatestUsedVersion property value. When TRUE, indicates the version of application is the latest version for that application that is in use. When FALSE, indicates the version is not the latest version. FALSE by default. Supports: $select, $OrderBy.
            ## @param value Value to set for the is_latest_used_version property.
            ## @return a void
            ## 
            def is_latest_used_version=(value)
                @is_latest_used_version = value
            end
            ## 
            ## Gets the isMostUsedVersion property value. When TRUE, indicates the version of application is the most used version for that application. When FALSE, indicates the version is not the most used version. FALSE by default. Supports: $select, $OrderBy. Read-only.
            ## @return a boolean
            ## 
            def is_most_used_version
                return @is_most_used_version
            end
            ## 
            ## Sets the isMostUsedVersion property value. When TRUE, indicates the version of application is the most used version for that application. When FALSE, indicates the version is not the most used version. FALSE by default. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the is_most_used_version property.
            ## @return a void
            ## 
            def is_most_used_version=(value)
                @is_most_used_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("appCrashCount", @app_crash_count)
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appName", @app_name)
                writer.write_string_value("appPublisher", @app_publisher)
                writer.write_string_value("appVersion", @app_version)
                writer.write_number_value("deviceCountWithCrashes", @device_count_with_crashes)
                writer.write_boolean_value("isLatestUsedVersion", @is_latest_used_version)
                writer.write_boolean_value("isMostUsedVersion", @is_most_used_version)
            end
        end
    end
end
