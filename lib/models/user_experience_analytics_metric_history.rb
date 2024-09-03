require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics metric history.
        class UserExperienceAnalyticsMetricHistory < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Intune device id of the device.
            @device_id
            ## 
            # The metric date time. The value cannot be modified and is automatically populated when the metric is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default.
            @metric_date_time
            ## 
            # The user experience analytics metric type.
            @metric_type
            ## 
            ## Instantiates a new UserExperienceAnalyticsMetricHistory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_metric_history
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsMetricHistory.new
            end
            ## 
            ## Gets the deviceId property value. The Intune device id of the device.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The Intune device id of the device.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "metricDateTime" => lambda {|n| @metric_date_time = n.get_date_time_value() },
                    "metricType" => lambda {|n| @metric_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the metricDateTime property value. The metric date time. The value cannot be modified and is automatically populated when the metric is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default.
            ## @return a date_time
            ## 
            def metric_date_time
                return @metric_date_time
            end
            ## 
            ## Sets the metricDateTime property value. The metric date time. The value cannot be modified and is automatically populated when the metric is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default.
            ## @param value Value to set for the metricDateTime property.
            ## @return a void
            ## 
            def metric_date_time=(value)
                @metric_date_time = value
            end
            ## 
            ## Gets the metricType property value. The user experience analytics metric type.
            ## @return a string
            ## 
            def metric_type
                return @metric_type
            end
            ## 
            ## Sets the metricType property value. The user experience analytics metric type.
            ## @param value Value to set for the metricType property.
            ## @return a void
            ## 
            def metric_type=(value)
                @metric_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("deviceId", @device_id)
                writer.write_date_time_value("metricDateTime", @metric_date_time)
                writer.write_string_value("metricType", @metric_type)
            end
        end
    end
end
