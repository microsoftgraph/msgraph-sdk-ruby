require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics device scores entity consolidates the various Endpoint Analytics scores.
        class UserExperienceAnalyticsDeviceScores < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates a score calculated from application health data to indicate when a device is having problems running one or more applications. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @app_reliability_score
            ## 
            # Indicates a calulated score indicating the health of the device's battery. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @battery_health_score
            ## 
            # The name of the device. Supports: $select, $OrderBy. Read-only.
            @device_name
            ## 
            # Indicates a weighted average of the various scores. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @endpoint_analytics_score
            ## 
            # The healthStatus property
            @health_status
            ## 
            # The manufacturer name of the device. Examples: Microsoft Corporation, HP, Lenovo. Supports: $select, $OrderBy. Read-only.
            @manufacturer
            ## 
            # The model name of the device. Supports: $select, $OrderBy. Read-only.
            @model
            ## 
            # Indicates a weighted average of boot score and logon score used for measuring startup performance. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @startup_performance_score
            ## 
            # Indicates a weighted score of the work from anywhere on a device level. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @work_from_anywhere_score
            ## 
            ## Gets the appReliabilityScore property value. Indicates a score calculated from application health data to indicate when a device is having problems running one or more applications. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def app_reliability_score
                return @app_reliability_score
            end
            ## 
            ## Sets the appReliabilityScore property value. Indicates a score calculated from application health data to indicate when a device is having problems running one or more applications. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the appReliabilityScore property.
            ## @return a void
            ## 
            def app_reliability_score=(value)
                @app_reliability_score = value
            end
            ## 
            ## Gets the batteryHealthScore property value. Indicates a calulated score indicating the health of the device's battery. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def battery_health_score
                return @battery_health_score
            end
            ## 
            ## Sets the batteryHealthScore property value. Indicates a calulated score indicating the health of the device's battery. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the batteryHealthScore property.
            ## @return a void
            ## 
            def battery_health_score=(value)
                @battery_health_score = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsDeviceScores and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_device_scores
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsDeviceScores.new
            end
            ## 
            ## Gets the deviceName property value. The name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the endpointAnalyticsScore property value. Indicates a weighted average of the various scores. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def endpoint_analytics_score
                return @endpoint_analytics_score
            end
            ## 
            ## Sets the endpointAnalyticsScore property value. Indicates a weighted average of the various scores. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the endpointAnalyticsScore property.
            ## @return a void
            ## 
            def endpoint_analytics_score=(value)
                @endpoint_analytics_score = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appReliabilityScore" => lambda {|n| @app_reliability_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "batteryHealthScore" => lambda {|n| @battery_health_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "endpointAnalyticsScore" => lambda {|n| @endpoint_analytics_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraph::Models::UserExperienceAnalyticsHealthState) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "startupPerformanceScore" => lambda {|n| @startup_performance_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "workFromAnywhereScore" => lambda {|n| @work_from_anywhere_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
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
            ## Gets the manufacturer property value. The manufacturer name of the device. Examples: Microsoft Corporation, HP, Lenovo. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer name of the device. Examples: Microsoft Corporation, HP, Lenovo. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The model name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("appReliabilityScore", @app_reliability_score)
                writer.write_object_value("batteryHealthScore", @battery_health_score)
                writer.write_string_value("deviceName", @device_name)
                writer.write_object_value("endpointAnalyticsScore", @endpoint_analytics_score)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_object_value("startupPerformanceScore", @startup_performance_score)
                writer.write_object_value("workFromAnywhereScore", @work_from_anywhere_score)
            end
            ## 
            ## Gets the startupPerformanceScore property value. Indicates a weighted average of boot score and logon score used for measuring startup performance. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def startup_performance_score
                return @startup_performance_score
            end
            ## 
            ## Sets the startupPerformanceScore property value. Indicates a weighted average of boot score and logon score used for measuring startup performance. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the startupPerformanceScore property.
            ## @return a void
            ## 
            def startup_performance_score=(value)
                @startup_performance_score = value
            end
            ## 
            ## Gets the workFromAnywhereScore property value. Indicates a weighted score of the work from anywhere on a device level. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def work_from_anywhere_score
                return @work_from_anywhere_score
            end
            ## 
            ## Sets the workFromAnywhereScore property value. Indicates a weighted score of the work from anywhere on a device level. Valid values range from 0-100. Value -1 means associated score is unavailable. A higher score indicates a healthier device. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the workFromAnywhereScore property.
            ## @return a void
            ## 
            def work_from_anywhere_score=(value)
                @work_from_anywhere_score = value
            end
        end
    end
end
