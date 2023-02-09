require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # An item describing notification setting.
        class IosNotificationSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Notification Settings Alert Type.
            @alert_type
            ## 
            # Application name to be associated with the bundleID.
            @app_name
            ## 
            # Indicates whether badges are allowed for this app.
            @badges_enabled
            ## 
            # Bundle id of app to which to apply these notification settings.
            @bundle_i_d
            ## 
            # Indicates whether notifications are allowed for this app.
            @enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Publisher to be associated with the bundleID.
            @publisher
            ## 
            # Indicates whether notifications can be shown in notification center.
            @show_in_notification_center
            ## 
            # Indicates whether notifications can be shown on the lock screen.
            @show_on_lock_screen
            ## 
            # Indicates whether sounds are allowed for this app.
            @sounds_enabled
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
            ## Gets the alertType property value. Notification Settings Alert Type.
            ## @return a ios_notification_alert_type
            ## 
            def alert_type
                return @alert_type
            end
            ## 
            ## Sets the alertType property value. Notification Settings Alert Type.
            ## @param value Value to set for the alert_type property.
            ## @return a void
            ## 
            def alert_type=(value)
                @alert_type = value
            end
            ## 
            ## Gets the appName property value. Application name to be associated with the bundleID.
            ## @return a string
            ## 
            def app_name
                return @app_name
            end
            ## 
            ## Sets the appName property value. Application name to be associated with the bundleID.
            ## @param value Value to set for the app_name property.
            ## @return a void
            ## 
            def app_name=(value)
                @app_name = value
            end
            ## 
            ## Gets the badgesEnabled property value. Indicates whether badges are allowed for this app.
            ## @return a boolean
            ## 
            def badges_enabled
                return @badges_enabled
            end
            ## 
            ## Sets the badgesEnabled property value. Indicates whether badges are allowed for this app.
            ## @param value Value to set for the badges_enabled property.
            ## @return a void
            ## 
            def badges_enabled=(value)
                @badges_enabled = value
            end
            ## 
            ## Gets the bundleID property value. Bundle id of app to which to apply these notification settings.
            ## @return a string
            ## 
            def bundle_i_d
                return @bundle_i_d
            end
            ## 
            ## Sets the bundleID property value. Bundle id of app to which to apply these notification settings.
            ## @param value Value to set for the bundle_i_d property.
            ## @return a void
            ## 
            def bundle_i_d=(value)
                @bundle_i_d = value
            end
            ## 
            ## Instantiates a new iosNotificationSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_notification_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosNotificationSettings.new
            end
            ## 
            ## Gets the enabled property value. Indicates whether notifications are allowed for this app.
            ## @return a boolean
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. Indicates whether notifications are allowed for this app.
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alertType" => lambda {|n| @alert_type = n.get_enum_value(MicrosoftGraph::Models::IosNotificationAlertType) },
                    "appName" => lambda {|n| @app_name = n.get_string_value() },
                    "badgesEnabled" => lambda {|n| @badges_enabled = n.get_boolean_value() },
                    "bundleID" => lambda {|n| @bundle_i_d = n.get_string_value() },
                    "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "showInNotificationCenter" => lambda {|n| @show_in_notification_center = n.get_boolean_value() },
                    "showOnLockScreen" => lambda {|n| @show_on_lock_screen = n.get_boolean_value() },
                    "soundsEnabled" => lambda {|n| @sounds_enabled = n.get_boolean_value() },
                }
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
            ## Gets the publisher property value. Publisher to be associated with the bundleID.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. Publisher to be associated with the bundleID.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("alertType", @alert_type)
                writer.write_string_value("appName", @app_name)
                writer.write_boolean_value("badgesEnabled", @badges_enabled)
                writer.write_string_value("bundleID", @bundle_i_d)
                writer.write_boolean_value("enabled", @enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("publisher", @publisher)
                writer.write_boolean_value("showInNotificationCenter", @show_in_notification_center)
                writer.write_boolean_value("showOnLockScreen", @show_on_lock_screen)
                writer.write_boolean_value("soundsEnabled", @sounds_enabled)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the showInNotificationCenter property value. Indicates whether notifications can be shown in notification center.
            ## @return a boolean
            ## 
            def show_in_notification_center
                return @show_in_notification_center
            end
            ## 
            ## Sets the showInNotificationCenter property value. Indicates whether notifications can be shown in notification center.
            ## @param value Value to set for the show_in_notification_center property.
            ## @return a void
            ## 
            def show_in_notification_center=(value)
                @show_in_notification_center = value
            end
            ## 
            ## Gets the showOnLockScreen property value. Indicates whether notifications can be shown on the lock screen.
            ## @return a boolean
            ## 
            def show_on_lock_screen
                return @show_on_lock_screen
            end
            ## 
            ## Sets the showOnLockScreen property value. Indicates whether notifications can be shown on the lock screen.
            ## @param value Value to set for the show_on_lock_screen property.
            ## @return a void
            ## 
            def show_on_lock_screen=(value)
                @show_on_lock_screen = value
            end
            ## 
            ## Gets the soundsEnabled property value. Indicates whether sounds are allowed for this app.
            ## @return a boolean
            ## 
            def sounds_enabled
                return @sounds_enabled
            end
            ## 
            ## Sets the soundsEnabled property value. Indicates whether sounds are allowed for this app.
            ## @param value Value to set for the sounds_enabled property.
            ## @return a void
            ## 
            def sounds_enabled=(value)
                @sounds_enabled = value
            end
        end
    end
end
