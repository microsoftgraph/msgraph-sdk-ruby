require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosDeviceFeaturesConfiguration < MicrosoftGraph::Models::AppleDeviceFeaturesConfigurationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Asset tag information for the device, displayed on the login window and lock screen.
            @asset_tag_template
            ## 
            # A list of app and folders to appear on the Home Screen Dock. This collection can contain a maximum of 500 elements.
            @home_screen_dock_icons
            ## 
            # A list of pages on the Home Screen. This collection can contain a maximum of 500 elements.
            @home_screen_pages
            ## 
            # A footnote displayed on the login window and lock screen. Available in iOS 9.3.1 and later.
            @lock_screen_footnote
            ## 
            # Notification settings for each bundle id. Applicable to devices in supervised mode only (iOS 9.3 and later). This collection can contain a maximum of 500 elements.
            @notification_settings
            ## 
            ## Gets the assetTagTemplate property value. Asset tag information for the device, displayed on the login window and lock screen.
            ## @return a string
            ## 
            def asset_tag_template
                return @asset_tag_template
            end
            ## 
            ## Sets the assetTagTemplate property value. Asset tag information for the device, displayed on the login window and lock screen.
            ## @param value Value to set for the asset_tag_template property.
            ## @return a void
            ## 
            def asset_tag_template=(value)
                @asset_tag_template = value
            end
            ## 
            ## Instantiates a new IosDeviceFeaturesConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosDeviceFeaturesConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_device_features_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosDeviceFeaturesConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assetTagTemplate" => lambda {|n| @asset_tag_template = n.get_string_value() },
                    "homeScreenDockIcons" => lambda {|n| @home_screen_dock_icons = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IosHomeScreenItem.create_from_discriminator_value(pn) }) },
                    "homeScreenPages" => lambda {|n| @home_screen_pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IosHomeScreenPage.create_from_discriminator_value(pn) }) },
                    "lockScreenFootnote" => lambda {|n| @lock_screen_footnote = n.get_string_value() },
                    "notificationSettings" => lambda {|n| @notification_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IosNotificationSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the homeScreenDockIcons property value. A list of app and folders to appear on the Home Screen Dock. This collection can contain a maximum of 500 elements.
            ## @return a ios_home_screen_item
            ## 
            def home_screen_dock_icons
                return @home_screen_dock_icons
            end
            ## 
            ## Sets the homeScreenDockIcons property value. A list of app and folders to appear on the Home Screen Dock. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the home_screen_dock_icons property.
            ## @return a void
            ## 
            def home_screen_dock_icons=(value)
                @home_screen_dock_icons = value
            end
            ## 
            ## Gets the homeScreenPages property value. A list of pages on the Home Screen. This collection can contain a maximum of 500 elements.
            ## @return a ios_home_screen_page
            ## 
            def home_screen_pages
                return @home_screen_pages
            end
            ## 
            ## Sets the homeScreenPages property value. A list of pages on the Home Screen. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the home_screen_pages property.
            ## @return a void
            ## 
            def home_screen_pages=(value)
                @home_screen_pages = value
            end
            ## 
            ## Gets the lockScreenFootnote property value. A footnote displayed on the login window and lock screen. Available in iOS 9.3.1 and later.
            ## @return a string
            ## 
            def lock_screen_footnote
                return @lock_screen_footnote
            end
            ## 
            ## Sets the lockScreenFootnote property value. A footnote displayed on the login window and lock screen. Available in iOS 9.3.1 and later.
            ## @param value Value to set for the lock_screen_footnote property.
            ## @return a void
            ## 
            def lock_screen_footnote=(value)
                @lock_screen_footnote = value
            end
            ## 
            ## Gets the notificationSettings property value. Notification settings for each bundle id. Applicable to devices in supervised mode only (iOS 9.3 and later). This collection can contain a maximum of 500 elements.
            ## @return a ios_notification_settings
            ## 
            def notification_settings
                return @notification_settings
            end
            ## 
            ## Sets the notificationSettings property value. Notification settings for each bundle id. Applicable to devices in supervised mode only (iOS 9.3 and later). This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the notification_settings property.
            ## @return a void
            ## 
            def notification_settings=(value)
                @notification_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assetTagTemplate", @asset_tag_template)
                writer.write_collection_of_object_values("homeScreenDockIcons", @home_screen_dock_icons)
                writer.write_collection_of_object_values("homeScreenPages", @home_screen_pages)
                writer.write_string_value("lockScreenFootnote", @lock_screen_footnote)
                writer.write_collection_of_object_values("notificationSettings", @notification_settings)
            end
        end
    end
end
