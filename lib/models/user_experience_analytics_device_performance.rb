require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserExperienceAnalyticsDevicePerformance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Average (mean) number of Blue Screens per device in the last 30 days. Valid values 0 to 9999999
            @average_blue_screens
            ## 
            # Average (mean) number of Restarts per device in the last 30 days. Valid values 0 to 9999999
            @average_restarts
            ## 
            # Number of Blue Screens in the last 30 days. Valid values 0 to 9999999
            @blue_screen_count
            ## 
            # The user experience analytics device boot score.
            @boot_score
            ## 
            # The user experience analytics device core boot time in milliseconds.
            @core_boot_time_in_ms
            ## 
            # The user experience analytics device core login time in milliseconds.
            @core_login_time_in_ms
            ## 
            # User experience analytics summarized device count.
            @device_count
            ## 
            # The user experience analytics device name.
            @device_name
            ## 
            # The diskType property
            @disk_type
            ## 
            # The user experience analytics device group policy boot time in milliseconds.
            @group_policy_boot_time_in_ms
            ## 
            # The user experience analytics device group policy login time in milliseconds.
            @group_policy_login_time_in_ms
            ## 
            # The healthStatus property
            @health_status
            ## 
            # The user experience analytics device login score.
            @login_score
            ## 
            # The user experience analytics device manufacturer.
            @manufacturer
            ## 
            # The user experience analytics device model.
            @model
            ## 
            # The user experience analytics model level startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @model_startup_performance_score
            ## 
            # The user experience analytics device Operating System version.
            @operating_system_version
            ## 
            # The user experience analytics responsive desktop time in milliseconds.
            @responsive_desktop_time_in_ms
            ## 
            # Number of Restarts in the last 30 days. Valid values 0 to 9999999
            @restart_count
            ## 
            # The user experience analytics device startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @startup_performance_score
            ## 
            ## Gets the averageBlueScreens property value. Average (mean) number of Blue Screens per device in the last 30 days. Valid values 0 to 9999999
            ## @return a double
            ## 
            def average_blue_screens
                return @average_blue_screens
            end
            ## 
            ## Sets the averageBlueScreens property value. Average (mean) number of Blue Screens per device in the last 30 days. Valid values 0 to 9999999
            ## @param value Value to set for the average_blue_screens property.
            ## @return a void
            ## 
            def average_blue_screens=(value)
                @average_blue_screens = value
            end
            ## 
            ## Gets the averageRestarts property value. Average (mean) number of Restarts per device in the last 30 days. Valid values 0 to 9999999
            ## @return a double
            ## 
            def average_restarts
                return @average_restarts
            end
            ## 
            ## Sets the averageRestarts property value. Average (mean) number of Restarts per device in the last 30 days. Valid values 0 to 9999999
            ## @param value Value to set for the average_restarts property.
            ## @return a void
            ## 
            def average_restarts=(value)
                @average_restarts = value
            end
            ## 
            ## Gets the blueScreenCount property value. Number of Blue Screens in the last 30 days. Valid values 0 to 9999999
            ## @return a integer
            ## 
            def blue_screen_count
                return @blue_screen_count
            end
            ## 
            ## Sets the blueScreenCount property value. Number of Blue Screens in the last 30 days. Valid values 0 to 9999999
            ## @param value Value to set for the blue_screen_count property.
            ## @return a void
            ## 
            def blue_screen_count=(value)
                @blue_screen_count = value
            end
            ## 
            ## Gets the bootScore property value. The user experience analytics device boot score.
            ## @return a integer
            ## 
            def boot_score
                return @boot_score
            end
            ## 
            ## Sets the bootScore property value. The user experience analytics device boot score.
            ## @param value Value to set for the boot_score property.
            ## @return a void
            ## 
            def boot_score=(value)
                @boot_score = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsDevicePerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the coreBootTimeInMs property value. The user experience analytics device core boot time in milliseconds.
            ## @return a integer
            ## 
            def core_boot_time_in_ms
                return @core_boot_time_in_ms
            end
            ## 
            ## Sets the coreBootTimeInMs property value. The user experience analytics device core boot time in milliseconds.
            ## @param value Value to set for the core_boot_time_in_ms property.
            ## @return a void
            ## 
            def core_boot_time_in_ms=(value)
                @core_boot_time_in_ms = value
            end
            ## 
            ## Gets the coreLoginTimeInMs property value. The user experience analytics device core login time in milliseconds.
            ## @return a integer
            ## 
            def core_login_time_in_ms
                return @core_login_time_in_ms
            end
            ## 
            ## Sets the coreLoginTimeInMs property value. The user experience analytics device core login time in milliseconds.
            ## @param value Value to set for the core_login_time_in_ms property.
            ## @return a void
            ## 
            def core_login_time_in_ms=(value)
                @core_login_time_in_ms = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_device_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsDevicePerformance.new
            end
            ## 
            ## Gets the deviceCount property value. User experience analytics summarized device count.
            ## @return a int64
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. User experience analytics summarized device count.
            ## @param value Value to set for the device_count property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## Gets the deviceName property value. The user experience analytics device name.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The user experience analytics device name.
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the diskType property value. The diskType property
            ## @return a disk_type
            ## 
            def disk_type
                return @disk_type
            end
            ## 
            ## Sets the diskType property value. The diskType property
            ## @param value Value to set for the disk_type property.
            ## @return a void
            ## 
            def disk_type=(value)
                @disk_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "averageBlueScreens" => lambda {|n| @average_blue_screens = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "averageRestarts" => lambda {|n| @average_restarts = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "blueScreenCount" => lambda {|n| @blue_screen_count = n.get_number_value() },
                    "bootScore" => lambda {|n| @boot_score = n.get_number_value() },
                    "coreBootTimeInMs" => lambda {|n| @core_boot_time_in_ms = n.get_number_value() },
                    "coreLoginTimeInMs" => lambda {|n| @core_login_time_in_ms = n.get_number_value() },
                    "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "diskType" => lambda {|n| @disk_type = n.get_enum_value(MicrosoftGraph::Models::DiskType) },
                    "groupPolicyBootTimeInMs" => lambda {|n| @group_policy_boot_time_in_ms = n.get_number_value() },
                    "groupPolicyLoginTimeInMs" => lambda {|n| @group_policy_login_time_in_ms = n.get_number_value() },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraph::Models::UserExperienceAnalyticsHealthState) },
                    "loginScore" => lambda {|n| @login_score = n.get_number_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "modelStartupPerformanceScore" => lambda {|n| @model_startup_performance_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "operatingSystemVersion" => lambda {|n| @operating_system_version = n.get_string_value() },
                    "responsiveDesktopTimeInMs" => lambda {|n| @responsive_desktop_time_in_ms = n.get_number_value() },
                    "restartCount" => lambda {|n| @restart_count = n.get_number_value() },
                    "startupPerformanceScore" => lambda {|n| @startup_performance_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupPolicyBootTimeInMs property value. The user experience analytics device group policy boot time in milliseconds.
            ## @return a integer
            ## 
            def group_policy_boot_time_in_ms
                return @group_policy_boot_time_in_ms
            end
            ## 
            ## Sets the groupPolicyBootTimeInMs property value. The user experience analytics device group policy boot time in milliseconds.
            ## @param value Value to set for the group_policy_boot_time_in_ms property.
            ## @return a void
            ## 
            def group_policy_boot_time_in_ms=(value)
                @group_policy_boot_time_in_ms = value
            end
            ## 
            ## Gets the groupPolicyLoginTimeInMs property value. The user experience analytics device group policy login time in milliseconds.
            ## @return a integer
            ## 
            def group_policy_login_time_in_ms
                return @group_policy_login_time_in_ms
            end
            ## 
            ## Sets the groupPolicyLoginTimeInMs property value. The user experience analytics device group policy login time in milliseconds.
            ## @param value Value to set for the group_policy_login_time_in_ms property.
            ## @return a void
            ## 
            def group_policy_login_time_in_ms=(value)
                @group_policy_login_time_in_ms = value
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
            ## @param value Value to set for the health_status property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the loginScore property value. The user experience analytics device login score.
            ## @return a integer
            ## 
            def login_score
                return @login_score
            end
            ## 
            ## Sets the loginScore property value. The user experience analytics device login score.
            ## @param value Value to set for the login_score property.
            ## @return a void
            ## 
            def login_score=(value)
                @login_score = value
            end
            ## 
            ## Gets the manufacturer property value. The user experience analytics device manufacturer.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The user experience analytics device manufacturer.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The user experience analytics device model.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The user experience analytics device model.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the modelStartupPerformanceScore property value. The user experience analytics model level startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def model_startup_performance_score
                return @model_startup_performance_score
            end
            ## 
            ## Sets the modelStartupPerformanceScore property value. The user experience analytics model level startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the model_startup_performance_score property.
            ## @return a void
            ## 
            def model_startup_performance_score=(value)
                @model_startup_performance_score = value
            end
            ## 
            ## Gets the operatingSystemVersion property value. The user experience analytics device Operating System version.
            ## @return a string
            ## 
            def operating_system_version
                return @operating_system_version
            end
            ## 
            ## Sets the operatingSystemVersion property value. The user experience analytics device Operating System version.
            ## @param value Value to set for the operating_system_version property.
            ## @return a void
            ## 
            def operating_system_version=(value)
                @operating_system_version = value
            end
            ## 
            ## Gets the responsiveDesktopTimeInMs property value. The user experience analytics responsive desktop time in milliseconds.
            ## @return a integer
            ## 
            def responsive_desktop_time_in_ms
                return @responsive_desktop_time_in_ms
            end
            ## 
            ## Sets the responsiveDesktopTimeInMs property value. The user experience analytics responsive desktop time in milliseconds.
            ## @param value Value to set for the responsive_desktop_time_in_ms property.
            ## @return a void
            ## 
            def responsive_desktop_time_in_ms=(value)
                @responsive_desktop_time_in_ms = value
            end
            ## 
            ## Gets the restartCount property value. Number of Restarts in the last 30 days. Valid values 0 to 9999999
            ## @return a integer
            ## 
            def restart_count
                return @restart_count
            end
            ## 
            ## Sets the restartCount property value. Number of Restarts in the last 30 days. Valid values 0 to 9999999
            ## @param value Value to set for the restart_count property.
            ## @return a void
            ## 
            def restart_count=(value)
                @restart_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("averageBlueScreens", @average_blue_screens)
                writer.write_object_value("averageRestarts", @average_restarts)
                writer.write_number_value("blueScreenCount", @blue_screen_count)
                writer.write_number_value("bootScore", @boot_score)
                writer.write_number_value("coreBootTimeInMs", @core_boot_time_in_ms)
                writer.write_number_value("coreLoginTimeInMs", @core_login_time_in_ms)
                writer.write_object_value("deviceCount", @device_count)
                writer.write_string_value("deviceName", @device_name)
                writer.write_enum_value("diskType", @disk_type)
                writer.write_number_value("groupPolicyBootTimeInMs", @group_policy_boot_time_in_ms)
                writer.write_number_value("groupPolicyLoginTimeInMs", @group_policy_login_time_in_ms)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_number_value("loginScore", @login_score)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_object_value("modelStartupPerformanceScore", @model_startup_performance_score)
                writer.write_string_value("operatingSystemVersion", @operating_system_version)
                writer.write_number_value("responsiveDesktopTimeInMs", @responsive_desktop_time_in_ms)
                writer.write_number_value("restartCount", @restart_count)
                writer.write_object_value("startupPerformanceScore", @startup_performance_score)
            end
            ## 
            ## Gets the startupPerformanceScore property value. The user experience analytics device startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def startup_performance_score
                return @startup_performance_score
            end
            ## 
            ## Sets the startupPerformanceScore property value. The user experience analytics device startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the startup_performance_score property.
            ## @return a void
            ## 
            def startup_performance_score=(value)
                @startup_performance_score = value
            end
        end
    end
end
