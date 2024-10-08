require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics device OS version performance entity contains OS version performance details.
        class UserExperienceAnalyticsAppHealthOSVersionPerformance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of active devices for the OS version. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @active_device_count
            ## 
            # The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @mean_time_to_failure_in_minutes
            ## 
            # The OS build number installed on the device. Supports: $select, $OrderBy. Read-only.
            @os_build_number
            ## 
            # The OS version installed on the device. Supports: $select, $OrderBy. Read-only.
            @os_version
            ## 
            # The application health score of the OS version. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @os_version_app_health_score
            ## 
            ## Gets the activeDeviceCount property value. The number of active devices for the OS version. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_device_count
                return @active_device_count
            end
            ## 
            ## Sets the activeDeviceCount property value. The number of active devices for the OS version. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the activeDeviceCount property.
            ## @return a void
            ## 
            def active_device_count=(value)
                @active_device_count = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsAppHealthOSVersionPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_app_health_o_s_version_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAppHealthOSVersionPerformance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDeviceCount" => lambda {|n| @active_device_count = n.get_number_value() },
                    "meanTimeToFailureInMinutes" => lambda {|n| @mean_time_to_failure_in_minutes = n.get_number_value() },
                    "osBuildNumber" => lambda {|n| @os_build_number = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "osVersionAppHealthScore" => lambda {|n| @os_version_app_health_score = n.get_object_value(lambda {|pn| UserExperienceAnalyticsAppHealthOSVersionPerformance::UserExperienceAnalyticsAppHealthOSVersionPerformanceOsVersionAppHealthScore.create_from_discriminator_value(pn) }) },
                })
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
            ## Gets the osBuildNumber property value. The OS build number installed on the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def os_build_number
                return @os_build_number
            end
            ## 
            ## Sets the osBuildNumber property value. The OS build number installed on the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the osBuildNumber property.
            ## @return a void
            ## 
            def os_build_number=(value)
                @os_build_number = value
            end
            ## 
            ## Gets the osVersion property value. The OS version installed on the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The OS version installed on the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the osVersionAppHealthScore property value. The application health score of the OS version. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a user_experience_analytics_app_health_o_s_version_performance_os_version_app_health_score
            ## 
            def os_version_app_health_score
                return @os_version_app_health_score
            end
            ## 
            ## Sets the osVersionAppHealthScore property value. The application health score of the OS version. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the osVersionAppHealthScore property.
            ## @return a void
            ## 
            def os_version_app_health_score=(value)
                @os_version_app_health_score = value
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
                writer.write_number_value("meanTimeToFailureInMinutes", @mean_time_to_failure_in_minutes)
                writer.write_string_value("osBuildNumber", @os_build_number)
                writer.write_string_value("osVersion", @os_version)
                writer.write_object_value("osVersionAppHealthScore", @os_version_app_health_score)
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class UserExperienceAnalyticsAppHealthOSVersionPerformanceOsVersionAppHealthScore
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a user_experience_analytics_app_health_o_s_version_performance_os_version_app_health_score
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return UserExperienceAnalyticsAppHealthOSVersionPerformanceOsVersionAppHealthScore.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
