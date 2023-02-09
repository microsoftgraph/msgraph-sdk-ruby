require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The text content of a Notification Message Template for the specified locale.
        class LocalizedNotificationMessage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Flag to indicate whether or not this is the default locale for language fallback. This flag can only be set. To unset, set this property to true on another Localized Notification Message.
            @is_default
            ## 
            # DateTime the object was last modified.
            @last_modified_date_time
            ## 
            # The Locale for which this message is destined.
            @locale
            ## 
            # The Message Template content.
            @message_template
            ## 
            # The Message Template Subject.
            @subject
            ## 
            ## Instantiates a new localizedNotificationMessage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a localized_notification_message
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LocalizedNotificationMessage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "locale" => lambda {|n| @locale = n.get_string_value() },
                    "messageTemplate" => lambda {|n| @message_template = n.get_string_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefault property value. Flag to indicate whether or not this is the default locale for language fallback. This flag can only be set. To unset, set this property to true on another Localized Notification Message.
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. Flag to indicate whether or not this is the default locale for language fallback. This flag can only be set. To unset, set this property to true on another Localized Notification Message.
            ## @param value Value to set for the is_default property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
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
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the locale property value. The Locale for which this message is destined.
            ## @return a string
            ## 
            def locale
                return @locale
            end
            ## 
            ## Sets the locale property value. The Locale for which this message is destined.
            ## @param value Value to set for the locale property.
            ## @return a void
            ## 
            def locale=(value)
                @locale = value
            end
            ## 
            ## Gets the messageTemplate property value. The Message Template content.
            ## @return a string
            ## 
            def message_template
                return @message_template
            end
            ## 
            ## Sets the messageTemplate property value. The Message Template content.
            ## @param value Value to set for the message_template property.
            ## @return a void
            ## 
            def message_template=(value)
                @message_template = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("locale", @locale)
                writer.write_string_value("messageTemplate", @message_template)
                writer.write_string_value("subject", @subject)
            end
            ## 
            ## Gets the subject property value. The Message Template Subject.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The Message Template Subject.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
        end
    end
end
