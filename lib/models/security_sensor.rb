require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecuritySensor < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the sensor was generated. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The deploymentStatus property
            @deployment_status
            ## 
            # The display name of the sensor.
            @display_name
            ## 
            # The fully qualified domain name of the sensor.
            @domain_name
            ## 
            # Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified related to the sensor.
            @health_issues
            ## 
            # The healthStatus property
            @health_status
            ## 
            # This field displays the count of health issues related to this sensor.
            @open_health_issues_count
            ## 
            # The sensorType property
            @sensor_type
            ## 
            # The settings property
            @settings
            ## 
            # The version of the sensor.
            @version
            ## 
            ## Instantiates a new SecuritySensor and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the sensor was generated. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the sensor was generated. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_sensor
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecuritySensor.new
            end
            ## 
            ## Gets the deploymentStatus property value. The deploymentStatus property
            ## @return a security_deployment_status
            ## 
            def deployment_status
                return @deployment_status
            end
            ## 
            ## Sets the deploymentStatus property value. The deploymentStatus property
            ## @param value Value to set for the deploymentStatus property.
            ## @return a void
            ## 
            def deployment_status=(value)
                @deployment_status = value
            end
            ## 
            ## Gets the displayName property value. The display name of the sensor.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the sensor.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the domainName property value. The fully qualified domain name of the sensor.
            ## @return a string
            ## 
            def domain_name
                return @domain_name
            end
            ## 
            ## Sets the domainName property value. The fully qualified domain name of the sensor.
            ## @param value Value to set for the domainName property.
            ## @return a void
            ## 
            def domain_name=(value)
                @domain_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deploymentStatus" => lambda {|n| @deployment_status = n.get_enum_value(MicrosoftGraph::Models::SecurityDeploymentStatus) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                    "healthIssues" => lambda {|n| @health_issues = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHealthIssue.create_from_discriminator_value(pn) }) },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraph::Models::SecuritySensorHealthStatus) },
                    "openHealthIssuesCount" => lambda {|n| @open_health_issues_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sensorType" => lambda {|n| @sensor_type = n.get_enum_value(MicrosoftGraph::Models::SecuritySensorType) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecuritySensorSettings.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the healthIssues property value. Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified related to the sensor.
            ## @return a security_health_issue
            ## 
            def health_issues
                return @health_issues
            end
            ## 
            ## Sets the healthIssues property value. Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified related to the sensor.
            ## @param value Value to set for the healthIssues property.
            ## @return a void
            ## 
            def health_issues=(value)
                @health_issues = value
            end
            ## 
            ## Gets the healthStatus property value. The healthStatus property
            ## @return a security_sensor_health_status
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
            ## Gets the openHealthIssuesCount property value. This field displays the count of health issues related to this sensor.
            ## @return a int64
            ## 
            def open_health_issues_count
                return @open_health_issues_count
            end
            ## 
            ## Sets the openHealthIssuesCount property value. This field displays the count of health issues related to this sensor.
            ## @param value Value to set for the openHealthIssuesCount property.
            ## @return a void
            ## 
            def open_health_issues_count=(value)
                @open_health_issues_count = value
            end
            ## 
            ## Gets the sensorType property value. The sensorType property
            ## @return a security_sensor_type
            ## 
            def sensor_type
                return @sensor_type
            end
            ## 
            ## Sets the sensorType property value. The sensorType property
            ## @param value Value to set for the sensorType property.
            ## @return a void
            ## 
            def sensor_type=(value)
                @sensor_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("deploymentStatus", @deployment_status)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("domainName", @domain_name)
                writer.write_collection_of_object_values("healthIssues", @health_issues)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_object_value("openHealthIssuesCount", @open_health_issues_count)
                writer.write_enum_value("sensorType", @sensor_type)
                writer.write_object_value("settings", @settings)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the settings property value. The settings property
            ## @return a security_sensor_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings property
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the version property value. The version of the sensor.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the sensor.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
