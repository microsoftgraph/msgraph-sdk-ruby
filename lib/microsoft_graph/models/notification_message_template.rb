require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    ## 
    # Notification messages are messages that are sent to end users who are determined to be not-compliant with the compliance policies defined by the administrator. Administrators choose notifications and configure them in the Intune Admin Console using the compliance policy creation page under the “Actions for non-compliance” section. Use the notificationMessageTemplate object to create your own custom notifications for administrators to choose while configuring actions for non-compliance.
    class NotificationMessageTemplate < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Branding Options for the Message Template. Branding is defined in the Intune Admin Console.
        @branding_options
        ## 
        # The default locale to fallback onto when the requested locale is not available.
        @default_locale
        ## 
        # Display name for the Notification Message Template.
        @display_name
        ## 
        # DateTime the object was last modified.
        @last_modified_date_time
        ## 
        # The list of localized messages for this Notification Message Template.
        @localized_notification_messages
        ## 
        ## Gets the brandingOptions property value. Branding Options for the Message Template. Branding is defined in the Intune Admin Console.
        ## @return a notification_template_branding_options
        ## 
        def branding_options
            return @branding_options
        end
        ## 
        ## Sets the brandingOptions property value. Branding Options for the Message Template. Branding is defined in the Intune Admin Console.
        ## @param value Value to set for the brandingOptions property.
        ## @return a void
        ## 
        def branding_options=(value)
            @branding_options = value
        end
        ## 
        ## Instantiates a new notificationMessageTemplate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a notification_message_template
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return NotificationMessageTemplate.new
        end
        ## 
        ## Gets the defaultLocale property value. The default locale to fallback onto when the requested locale is not available.
        ## @return a string
        ## 
        def default_locale
            return @default_locale
        end
        ## 
        ## Sets the defaultLocale property value. The default locale to fallback onto when the requested locale is not available.
        ## @param value Value to set for the defaultLocale property.
        ## @return a void
        ## 
        def default_locale=(value)
            @default_locale = value
        end
        ## 
        ## Gets the displayName property value. Display name for the Notification Message Template.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Display name for the Notification Message Template.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "brandingOptions" => lambda {|n| @branding_options = n.get_enum_value(MicrosoftGraph::Models::NotificationTemplateBrandingOptions) },
                "defaultLocale" => lambda {|n| @default_locale = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "localizedNotificationMessages" => lambda {|n| @localized_notification_messages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LocalizedNotificationMessage.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the lastModifiedDateTime property value. DateTime the object was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. DateTime the object was last modified.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the localizedNotificationMessages property value. The list of localized messages for this Notification Message Template.
        ## @return a localized_notification_message
        ## 
        def localized_notification_messages
            return @localized_notification_messages
        end
        ## 
        ## Sets the localizedNotificationMessages property value. The list of localized messages for this Notification Message Template.
        ## @param value Value to set for the localizedNotificationMessages property.
        ## @return a void
        ## 
        def localized_notification_messages=(value)
            @localized_notification_messages = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("brandingOptions", @branding_options)
            writer.write_string_value("defaultLocale", @default_locale)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_collection_of_object_values("localizedNotificationMessages", @localized_notification_messages)
        end
    end
end
