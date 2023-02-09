require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Windows10TeamGeneralConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not to Block Azure Operational Insights.
            @azure_operational_insights_block_telemetry
            ## 
            # The Azure Operational Insights workspace id.
            @azure_operational_insights_workspace_id
            ## 
            # The Azure Operational Insights Workspace key.
            @azure_operational_insights_workspace_key
            ## 
            # Specifies whether to automatically launch the Connect app whenever a projection is initiated.
            @connect_app_block_auto_launch
            ## 
            # Indicates whether or not to Block setting a maintenance window for device updates.
            @maintenance_window_blocked
            ## 
            # Maintenance window duration for device updates. Valid values 0 to 5
            @maintenance_window_duration_in_hours
            ## 
            # Maintenance window start time for device updates.
            @maintenance_window_start_time
            ## 
            # Indicates whether or not to Block wireless projection.
            @miracast_blocked
            ## 
            # Possible values for Miracast channel.
            @miracast_channel
            ## 
            # Indicates whether or not to require a pin for wireless projection.
            @miracast_require_pin
            ## 
            # Specifies whether to disable the 'My meetings and files' feature in the Start menu, which shows the signed-in user's meetings and files from Office 365.
            @settings_block_my_meetings_and_files
            ## 
            # Specifies whether to allow the ability to resume a session when the session times out.
            @settings_block_session_resume
            ## 
            # Specifies whether to disable auto-populating of the sign-in dialog with invitees from scheduled meetings.
            @settings_block_signin_suggestions
            ## 
            # Specifies the default volume value for a new session. Permitted values are 0-100. The default is 45. Valid values 0 to 100
            @settings_default_volume
            ## 
            # Specifies the number of minutes until the Hub screen turns off.
            @settings_screen_timeout_in_minutes
            ## 
            # Specifies the number of minutes until the session times out.
            @settings_session_timeout_in_minutes
            ## 
            # Specifies the number of minutes until the Hub enters sleep mode.
            @settings_sleep_timeout_in_minutes
            ## 
            # The welcome screen background image URL. The URL must use the HTTPS protocol and return a PNG image.
            @welcome_screen_background_image_url
            ## 
            # Indicates whether or not to Block the welcome screen from waking up automatically when someone enters the room.
            @welcome_screen_block_automatic_wake_up
            ## 
            # Possible values for welcome screen meeting information.
            @welcome_screen_meeting_information
            ## 
            ## Gets the azureOperationalInsightsBlockTelemetry property value. Indicates whether or not to Block Azure Operational Insights.
            ## @return a boolean
            ## 
            def azure_operational_insights_block_telemetry
                return @azure_operational_insights_block_telemetry
            end
            ## 
            ## Sets the azureOperationalInsightsBlockTelemetry property value. Indicates whether or not to Block Azure Operational Insights.
            ## @param value Value to set for the azure_operational_insights_block_telemetry property.
            ## @return a void
            ## 
            def azure_operational_insights_block_telemetry=(value)
                @azure_operational_insights_block_telemetry = value
            end
            ## 
            ## Gets the azureOperationalInsightsWorkspaceId property value. The Azure Operational Insights workspace id.
            ## @return a string
            ## 
            def azure_operational_insights_workspace_id
                return @azure_operational_insights_workspace_id
            end
            ## 
            ## Sets the azureOperationalInsightsWorkspaceId property value. The Azure Operational Insights workspace id.
            ## @param value Value to set for the azure_operational_insights_workspace_id property.
            ## @return a void
            ## 
            def azure_operational_insights_workspace_id=(value)
                @azure_operational_insights_workspace_id = value
            end
            ## 
            ## Gets the azureOperationalInsightsWorkspaceKey property value. The Azure Operational Insights Workspace key.
            ## @return a string
            ## 
            def azure_operational_insights_workspace_key
                return @azure_operational_insights_workspace_key
            end
            ## 
            ## Sets the azureOperationalInsightsWorkspaceKey property value. The Azure Operational Insights Workspace key.
            ## @param value Value to set for the azure_operational_insights_workspace_key property.
            ## @return a void
            ## 
            def azure_operational_insights_workspace_key=(value)
                @azure_operational_insights_workspace_key = value
            end
            ## 
            ## Gets the connectAppBlockAutoLaunch property value. Specifies whether to automatically launch the Connect app whenever a projection is initiated.
            ## @return a boolean
            ## 
            def connect_app_block_auto_launch
                return @connect_app_block_auto_launch
            end
            ## 
            ## Sets the connectAppBlockAutoLaunch property value. Specifies whether to automatically launch the Connect app whenever a projection is initiated.
            ## @param value Value to set for the connect_app_block_auto_launch property.
            ## @return a void
            ## 
            def connect_app_block_auto_launch=(value)
                @connect_app_block_auto_launch = value
            end
            ## 
            ## Instantiates a new Windows10TeamGeneralConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10TeamGeneralConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_team_general_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10TeamGeneralConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureOperationalInsightsBlockTelemetry" => lambda {|n| @azure_operational_insights_block_telemetry = n.get_boolean_value() },
                    "azureOperationalInsightsWorkspaceId" => lambda {|n| @azure_operational_insights_workspace_id = n.get_string_value() },
                    "azureOperationalInsightsWorkspaceKey" => lambda {|n| @azure_operational_insights_workspace_key = n.get_string_value() },
                    "connectAppBlockAutoLaunch" => lambda {|n| @connect_app_block_auto_launch = n.get_boolean_value() },
                    "maintenanceWindowBlocked" => lambda {|n| @maintenance_window_blocked = n.get_boolean_value() },
                    "maintenanceWindowDurationInHours" => lambda {|n| @maintenance_window_duration_in_hours = n.get_number_value() },
                    "maintenanceWindowStartTime" => lambda {|n| @maintenance_window_start_time = n.get_time_value() },
                    "miracastBlocked" => lambda {|n| @miracast_blocked = n.get_boolean_value() },
                    "miracastChannel" => lambda {|n| @miracast_channel = n.get_enum_value(MicrosoftGraph::Models::MiracastChannel) },
                    "miracastRequirePin" => lambda {|n| @miracast_require_pin = n.get_boolean_value() },
                    "settingsBlockMyMeetingsAndFiles" => lambda {|n| @settings_block_my_meetings_and_files = n.get_boolean_value() },
                    "settingsBlockSessionResume" => lambda {|n| @settings_block_session_resume = n.get_boolean_value() },
                    "settingsBlockSigninSuggestions" => lambda {|n| @settings_block_signin_suggestions = n.get_boolean_value() },
                    "settingsDefaultVolume" => lambda {|n| @settings_default_volume = n.get_number_value() },
                    "settingsScreenTimeoutInMinutes" => lambda {|n| @settings_screen_timeout_in_minutes = n.get_number_value() },
                    "settingsSessionTimeoutInMinutes" => lambda {|n| @settings_session_timeout_in_minutes = n.get_number_value() },
                    "settingsSleepTimeoutInMinutes" => lambda {|n| @settings_sleep_timeout_in_minutes = n.get_number_value() },
                    "welcomeScreenBackgroundImageUrl" => lambda {|n| @welcome_screen_background_image_url = n.get_string_value() },
                    "welcomeScreenBlockAutomaticWakeUp" => lambda {|n| @welcome_screen_block_automatic_wake_up = n.get_boolean_value() },
                    "welcomeScreenMeetingInformation" => lambda {|n| @welcome_screen_meeting_information = n.get_enum_value(MicrosoftGraph::Models::WelcomeScreenMeetingInformation) },
                })
            end
            ## 
            ## Gets the maintenanceWindowBlocked property value. Indicates whether or not to Block setting a maintenance window for device updates.
            ## @return a boolean
            ## 
            def maintenance_window_blocked
                return @maintenance_window_blocked
            end
            ## 
            ## Sets the maintenanceWindowBlocked property value. Indicates whether or not to Block setting a maintenance window for device updates.
            ## @param value Value to set for the maintenance_window_blocked property.
            ## @return a void
            ## 
            def maintenance_window_blocked=(value)
                @maintenance_window_blocked = value
            end
            ## 
            ## Gets the maintenanceWindowDurationInHours property value. Maintenance window duration for device updates. Valid values 0 to 5
            ## @return a integer
            ## 
            def maintenance_window_duration_in_hours
                return @maintenance_window_duration_in_hours
            end
            ## 
            ## Sets the maintenanceWindowDurationInHours property value. Maintenance window duration for device updates. Valid values 0 to 5
            ## @param value Value to set for the maintenance_window_duration_in_hours property.
            ## @return a void
            ## 
            def maintenance_window_duration_in_hours=(value)
                @maintenance_window_duration_in_hours = value
            end
            ## 
            ## Gets the maintenanceWindowStartTime property value. Maintenance window start time for device updates.
            ## @return a time
            ## 
            def maintenance_window_start_time
                return @maintenance_window_start_time
            end
            ## 
            ## Sets the maintenanceWindowStartTime property value. Maintenance window start time for device updates.
            ## @param value Value to set for the maintenance_window_start_time property.
            ## @return a void
            ## 
            def maintenance_window_start_time=(value)
                @maintenance_window_start_time = value
            end
            ## 
            ## Gets the miracastBlocked property value. Indicates whether or not to Block wireless projection.
            ## @return a boolean
            ## 
            def miracast_blocked
                return @miracast_blocked
            end
            ## 
            ## Sets the miracastBlocked property value. Indicates whether or not to Block wireless projection.
            ## @param value Value to set for the miracast_blocked property.
            ## @return a void
            ## 
            def miracast_blocked=(value)
                @miracast_blocked = value
            end
            ## 
            ## Gets the miracastChannel property value. Possible values for Miracast channel.
            ## @return a miracast_channel
            ## 
            def miracast_channel
                return @miracast_channel
            end
            ## 
            ## Sets the miracastChannel property value. Possible values for Miracast channel.
            ## @param value Value to set for the miracast_channel property.
            ## @return a void
            ## 
            def miracast_channel=(value)
                @miracast_channel = value
            end
            ## 
            ## Gets the miracastRequirePin property value. Indicates whether or not to require a pin for wireless projection.
            ## @return a boolean
            ## 
            def miracast_require_pin
                return @miracast_require_pin
            end
            ## 
            ## Sets the miracastRequirePin property value. Indicates whether or not to require a pin for wireless projection.
            ## @param value Value to set for the miracast_require_pin property.
            ## @return a void
            ## 
            def miracast_require_pin=(value)
                @miracast_require_pin = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("azureOperationalInsightsBlockTelemetry", @azure_operational_insights_block_telemetry)
                writer.write_string_value("azureOperationalInsightsWorkspaceId", @azure_operational_insights_workspace_id)
                writer.write_string_value("azureOperationalInsightsWorkspaceKey", @azure_operational_insights_workspace_key)
                writer.write_boolean_value("connectAppBlockAutoLaunch", @connect_app_block_auto_launch)
                writer.write_boolean_value("maintenanceWindowBlocked", @maintenance_window_blocked)
                writer.write_number_value("maintenanceWindowDurationInHours", @maintenance_window_duration_in_hours)
                writer.write_time_value("maintenanceWindowStartTime", @maintenance_window_start_time)
                writer.write_boolean_value("miracastBlocked", @miracast_blocked)
                writer.write_enum_value("miracastChannel", @miracast_channel)
                writer.write_boolean_value("miracastRequirePin", @miracast_require_pin)
                writer.write_boolean_value("settingsBlockMyMeetingsAndFiles", @settings_block_my_meetings_and_files)
                writer.write_boolean_value("settingsBlockSessionResume", @settings_block_session_resume)
                writer.write_boolean_value("settingsBlockSigninSuggestions", @settings_block_signin_suggestions)
                writer.write_number_value("settingsDefaultVolume", @settings_default_volume)
                writer.write_number_value("settingsScreenTimeoutInMinutes", @settings_screen_timeout_in_minutes)
                writer.write_number_value("settingsSessionTimeoutInMinutes", @settings_session_timeout_in_minutes)
                writer.write_number_value("settingsSleepTimeoutInMinutes", @settings_sleep_timeout_in_minutes)
                writer.write_string_value("welcomeScreenBackgroundImageUrl", @welcome_screen_background_image_url)
                writer.write_boolean_value("welcomeScreenBlockAutomaticWakeUp", @welcome_screen_block_automatic_wake_up)
                writer.write_enum_value("welcomeScreenMeetingInformation", @welcome_screen_meeting_information)
            end
            ## 
            ## Gets the settingsBlockMyMeetingsAndFiles property value. Specifies whether to disable the 'My meetings and files' feature in the Start menu, which shows the signed-in user's meetings and files from Office 365.
            ## @return a boolean
            ## 
            def settings_block_my_meetings_and_files
                return @settings_block_my_meetings_and_files
            end
            ## 
            ## Sets the settingsBlockMyMeetingsAndFiles property value. Specifies whether to disable the 'My meetings and files' feature in the Start menu, which shows the signed-in user's meetings and files from Office 365.
            ## @param value Value to set for the settings_block_my_meetings_and_files property.
            ## @return a void
            ## 
            def settings_block_my_meetings_and_files=(value)
                @settings_block_my_meetings_and_files = value
            end
            ## 
            ## Gets the settingsBlockSessionResume property value. Specifies whether to allow the ability to resume a session when the session times out.
            ## @return a boolean
            ## 
            def settings_block_session_resume
                return @settings_block_session_resume
            end
            ## 
            ## Sets the settingsBlockSessionResume property value. Specifies whether to allow the ability to resume a session when the session times out.
            ## @param value Value to set for the settings_block_session_resume property.
            ## @return a void
            ## 
            def settings_block_session_resume=(value)
                @settings_block_session_resume = value
            end
            ## 
            ## Gets the settingsBlockSigninSuggestions property value. Specifies whether to disable auto-populating of the sign-in dialog with invitees from scheduled meetings.
            ## @return a boolean
            ## 
            def settings_block_signin_suggestions
                return @settings_block_signin_suggestions
            end
            ## 
            ## Sets the settingsBlockSigninSuggestions property value. Specifies whether to disable auto-populating of the sign-in dialog with invitees from scheduled meetings.
            ## @param value Value to set for the settings_block_signin_suggestions property.
            ## @return a void
            ## 
            def settings_block_signin_suggestions=(value)
                @settings_block_signin_suggestions = value
            end
            ## 
            ## Gets the settingsDefaultVolume property value. Specifies the default volume value for a new session. Permitted values are 0-100. The default is 45. Valid values 0 to 100
            ## @return a integer
            ## 
            def settings_default_volume
                return @settings_default_volume
            end
            ## 
            ## Sets the settingsDefaultVolume property value. Specifies the default volume value for a new session. Permitted values are 0-100. The default is 45. Valid values 0 to 100
            ## @param value Value to set for the settings_default_volume property.
            ## @return a void
            ## 
            def settings_default_volume=(value)
                @settings_default_volume = value
            end
            ## 
            ## Gets the settingsScreenTimeoutInMinutes property value. Specifies the number of minutes until the Hub screen turns off.
            ## @return a integer
            ## 
            def settings_screen_timeout_in_minutes
                return @settings_screen_timeout_in_minutes
            end
            ## 
            ## Sets the settingsScreenTimeoutInMinutes property value. Specifies the number of minutes until the Hub screen turns off.
            ## @param value Value to set for the settings_screen_timeout_in_minutes property.
            ## @return a void
            ## 
            def settings_screen_timeout_in_minutes=(value)
                @settings_screen_timeout_in_minutes = value
            end
            ## 
            ## Gets the settingsSessionTimeoutInMinutes property value. Specifies the number of minutes until the session times out.
            ## @return a integer
            ## 
            def settings_session_timeout_in_minutes
                return @settings_session_timeout_in_minutes
            end
            ## 
            ## Sets the settingsSessionTimeoutInMinutes property value. Specifies the number of minutes until the session times out.
            ## @param value Value to set for the settings_session_timeout_in_minutes property.
            ## @return a void
            ## 
            def settings_session_timeout_in_minutes=(value)
                @settings_session_timeout_in_minutes = value
            end
            ## 
            ## Gets the settingsSleepTimeoutInMinutes property value. Specifies the number of minutes until the Hub enters sleep mode.
            ## @return a integer
            ## 
            def settings_sleep_timeout_in_minutes
                return @settings_sleep_timeout_in_minutes
            end
            ## 
            ## Sets the settingsSleepTimeoutInMinutes property value. Specifies the number of minutes until the Hub enters sleep mode.
            ## @param value Value to set for the settings_sleep_timeout_in_minutes property.
            ## @return a void
            ## 
            def settings_sleep_timeout_in_minutes=(value)
                @settings_sleep_timeout_in_minutes = value
            end
            ## 
            ## Gets the welcomeScreenBackgroundImageUrl property value. The welcome screen background image URL. The URL must use the HTTPS protocol and return a PNG image.
            ## @return a string
            ## 
            def welcome_screen_background_image_url
                return @welcome_screen_background_image_url
            end
            ## 
            ## Sets the welcomeScreenBackgroundImageUrl property value. The welcome screen background image URL. The URL must use the HTTPS protocol and return a PNG image.
            ## @param value Value to set for the welcome_screen_background_image_url property.
            ## @return a void
            ## 
            def welcome_screen_background_image_url=(value)
                @welcome_screen_background_image_url = value
            end
            ## 
            ## Gets the welcomeScreenBlockAutomaticWakeUp property value. Indicates whether or not to Block the welcome screen from waking up automatically when someone enters the room.
            ## @return a boolean
            ## 
            def welcome_screen_block_automatic_wake_up
                return @welcome_screen_block_automatic_wake_up
            end
            ## 
            ## Sets the welcomeScreenBlockAutomaticWakeUp property value. Indicates whether or not to Block the welcome screen from waking up automatically when someone enters the room.
            ## @param value Value to set for the welcome_screen_block_automatic_wake_up property.
            ## @return a void
            ## 
            def welcome_screen_block_automatic_wake_up=(value)
                @welcome_screen_block_automatic_wake_up = value
            end
            ## 
            ## Gets the welcomeScreenMeetingInformation property value. Possible values for welcome screen meeting information.
            ## @return a welcome_screen_meeting_information
            ## 
            def welcome_screen_meeting_information
                return @welcome_screen_meeting_information
            end
            ## 
            ## Sets the welcomeScreenMeetingInformation property value. Possible values for welcome screen meeting information.
            ## @param value Value to set for the welcome_screen_meeting_information property.
            ## @return a void
            ## 
            def welcome_screen_meeting_information=(value)
                @welcome_screen_meeting_information = value
            end
        end
    end
end
