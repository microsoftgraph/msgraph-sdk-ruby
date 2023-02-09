require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Reminder
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Identifies the version of the reminder. Every time the reminder is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object.
            @change_key
            ## 
            # The date, time and time zone that the event ends.
            @event_end_time
            ## 
            # The unique ID of the event. Read only.
            @event_id
            ## 
            # The location of the event.
            @event_location
            ## 
            # The date, time, and time zone that the event starts.
            @event_start_time
            ## 
            # The text of the event's subject line.
            @event_subject
            ## 
            # The URL to open the event in Outlook on the web.The event will open in the browser if you are logged in to your mailbox via Outlook on the web. You will be prompted to login if you are not already logged in with the browser.This URL cannot be accessed from within an iFrame.
            @event_web_link
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The date, time, and time zone that the reminder is set to occur.
            @reminder_fire_time
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
            ## Gets the changeKey property value. Identifies the version of the reminder. Every time the reminder is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object.
            ## @return a string
            ## 
            def change_key
                return @change_key
            end
            ## 
            ## Sets the changeKey property value. Identifies the version of the reminder. Every time the reminder is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object.
            ## @param value Value to set for the change_key property.
            ## @return a void
            ## 
            def change_key=(value)
                @change_key = value
            end
            ## 
            ## Instantiates a new reminder and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a reminder
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Reminder.new
            end
            ## 
            ## Gets the eventEndTime property value. The date, time and time zone that the event ends.
            ## @return a date_time_time_zone
            ## 
            def event_end_time
                return @event_end_time
            end
            ## 
            ## Sets the eventEndTime property value. The date, time and time zone that the event ends.
            ## @param value Value to set for the event_end_time property.
            ## @return a void
            ## 
            def event_end_time=(value)
                @event_end_time = value
            end
            ## 
            ## Gets the eventId property value. The unique ID of the event. Read only.
            ## @return a string
            ## 
            def event_id
                return @event_id
            end
            ## 
            ## Sets the eventId property value. The unique ID of the event. Read only.
            ## @param value Value to set for the event_id property.
            ## @return a void
            ## 
            def event_id=(value)
                @event_id = value
            end
            ## 
            ## Gets the eventLocation property value. The location of the event.
            ## @return a location
            ## 
            def event_location
                return @event_location
            end
            ## 
            ## Sets the eventLocation property value. The location of the event.
            ## @param value Value to set for the event_location property.
            ## @return a void
            ## 
            def event_location=(value)
                @event_location = value
            end
            ## 
            ## Gets the eventStartTime property value. The date, time, and time zone that the event starts.
            ## @return a date_time_time_zone
            ## 
            def event_start_time
                return @event_start_time
            end
            ## 
            ## Sets the eventStartTime property value. The date, time, and time zone that the event starts.
            ## @param value Value to set for the event_start_time property.
            ## @return a void
            ## 
            def event_start_time=(value)
                @event_start_time = value
            end
            ## 
            ## Gets the eventSubject property value. The text of the event's subject line.
            ## @return a string
            ## 
            def event_subject
                return @event_subject
            end
            ## 
            ## Sets the eventSubject property value. The text of the event's subject line.
            ## @param value Value to set for the event_subject property.
            ## @return a void
            ## 
            def event_subject=(value)
                @event_subject = value
            end
            ## 
            ## Gets the eventWebLink property value. The URL to open the event in Outlook on the web.The event will open in the browser if you are logged in to your mailbox via Outlook on the web. You will be prompted to login if you are not already logged in with the browser.This URL cannot be accessed from within an iFrame.
            ## @return a string
            ## 
            def event_web_link
                return @event_web_link
            end
            ## 
            ## Sets the eventWebLink property value. The URL to open the event in Outlook on the web.The event will open in the browser if you are logged in to your mailbox via Outlook on the web. You will be prompted to login if you are not already logged in with the browser.This URL cannot be accessed from within an iFrame.
            ## @param value Value to set for the event_web_link property.
            ## @return a void
            ## 
            def event_web_link=(value)
                @event_web_link = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "changeKey" => lambda {|n| @change_key = n.get_string_value() },
                    "eventEndTime" => lambda {|n| @event_end_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "eventId" => lambda {|n| @event_id = n.get_string_value() },
                    "eventLocation" => lambda {|n| @event_location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "eventStartTime" => lambda {|n| @event_start_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "eventSubject" => lambda {|n| @event_subject = n.get_string_value() },
                    "eventWebLink" => lambda {|n| @event_web_link = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reminderFireTime" => lambda {|n| @reminder_fire_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
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
            ## Gets the reminderFireTime property value. The date, time, and time zone that the reminder is set to occur.
            ## @return a date_time_time_zone
            ## 
            def reminder_fire_time
                return @reminder_fire_time
            end
            ## 
            ## Sets the reminderFireTime property value. The date, time, and time zone that the reminder is set to occur.
            ## @param value Value to set for the reminder_fire_time property.
            ## @return a void
            ## 
            def reminder_fire_time=(value)
                @reminder_fire_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("changeKey", @change_key)
                writer.write_object_value("eventEndTime", @event_end_time)
                writer.write_string_value("eventId", @event_id)
                writer.write_object_value("eventLocation", @event_location)
                writer.write_object_value("eventStartTime", @event_start_time)
                writer.write_string_value("eventSubject", @event_subject)
                writer.write_string_value("eventWebLink", @event_web_link)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("reminderFireTime", @reminder_fire_time)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
