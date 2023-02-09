require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties describing restart coordination following an app installation.
        class Win32LobAppRestartSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of minutes before the restart time to display the countdown dialog for pending restarts.
            @countdown_display_before_restart_in_minutes
            ## 
            # The number of minutes to wait before restarting the device after an app installation.
            @grace_period_in_minutes
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of minutes to snooze the restart notification dialog when the snooze button is selected.
            @restart_notification_snooze_duration_in_minutes
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new win32LobAppRestartSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countdownDisplayBeforeRestartInMinutes property value. The number of minutes before the restart time to display the countdown dialog for pending restarts.
            ## @return a integer
            ## 
            def countdown_display_before_restart_in_minutes
                return @countdown_display_before_restart_in_minutes
            end
            ## 
            ## Sets the countdownDisplayBeforeRestartInMinutes property value. The number of minutes before the restart time to display the countdown dialog for pending restarts.
            ## @param value Value to set for the countdown_display_before_restart_in_minutes property.
            ## @return a void
            ## 
            def countdown_display_before_restart_in_minutes=(value)
                @countdown_display_before_restart_in_minutes = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_restart_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppRestartSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "countdownDisplayBeforeRestartInMinutes" => lambda {|n| @countdown_display_before_restart_in_minutes = n.get_number_value() },
                    "gracePeriodInMinutes" => lambda {|n| @grace_period_in_minutes = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "restartNotificationSnoozeDurationInMinutes" => lambda {|n| @restart_notification_snooze_duration_in_minutes = n.get_number_value() },
                }
            end
            ## 
            ## Gets the gracePeriodInMinutes property value. The number of minutes to wait before restarting the device after an app installation.
            ## @return a integer
            ## 
            def grace_period_in_minutes
                return @grace_period_in_minutes
            end
            ## 
            ## Sets the gracePeriodInMinutes property value. The number of minutes to wait before restarting the device after an app installation.
            ## @param value Value to set for the grace_period_in_minutes property.
            ## @return a void
            ## 
            def grace_period_in_minutes=(value)
                @grace_period_in_minutes = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the restartNotificationSnoozeDurationInMinutes property value. The number of minutes to snooze the restart notification dialog when the snooze button is selected.
            ## @return a integer
            ## 
            def restart_notification_snooze_duration_in_minutes
                return @restart_notification_snooze_duration_in_minutes
            end
            ## 
            ## Sets the restartNotificationSnoozeDurationInMinutes property value. The number of minutes to snooze the restart notification dialog when the snooze button is selected.
            ## @param value Value to set for the restart_notification_snooze_duration_in_minutes property.
            ## @return a void
            ## 
            def restart_notification_snooze_duration_in_minutes=(value)
                @restart_notification_snooze_duration_in_minutes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("countdownDisplayBeforeRestartInMinutes", @countdown_display_before_restart_in_minutes)
                writer.write_number_value("gracePeriodInMinutes", @grace_period_in_minutes)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("restartNotificationSnoozeDurationInMinutes", @restart_notification_snooze_duration_in_minutes)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
