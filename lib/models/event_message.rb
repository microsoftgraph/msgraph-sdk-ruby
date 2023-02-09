require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EventMessage < MicrosoftGraph::Models::Message
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The endDateTime property
            @end_date_time
            ## 
            # The event associated with the event message. The assumption for attendees or room resources is that the Calendar Attendant is set to automatically update the calendar with an event when meeting request event messages arrive. Navigation property.  Read-only.
            @event
            ## 
            # The isAllDay property
            @is_all_day
            ## 
            # The isDelegated property
            @is_delegated
            ## 
            # The isOutOfDate property
            @is_out_of_date
            ## 
            # The location property
            @location
            ## 
            # The meetingMessageType property
            @meeting_message_type
            ## 
            # The recurrence property
            @recurrence
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            # The type property
            @type
            ## 
            ## Instantiates a new EventMessage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.eventMessage"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a event_message
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.eventMessageRequest"
                            return EventMessageRequest.new
                        when "#microsoft.graph.eventMessageResponse"
                            return EventMessageResponse.new
                    end
                end
                return EventMessage.new
            end
            ## 
            ## Gets the endDateTime property value. The endDateTime property
            ## @return a date_time_time_zone
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The endDateTime property
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the event property value. The event associated with the event message. The assumption for attendees or room resources is that the Calendar Attendant is set to automatically update the calendar with an event when meeting request event messages arrive. Navigation property.  Read-only.
            ## @return a event
            ## 
            def event
                return @event
            end
            ## 
            ## Sets the event property value. The event associated with the event message. The assumption for attendees or room resources is that the Calendar Attendant is set to automatically update the calendar with an event when meeting request event messages arrive. Navigation property.  Read-only.
            ## @param value Value to set for the event property.
            ## @return a void
            ## 
            def event=(value)
                @event = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "endDateTime" => lambda {|n| @end_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "event" => lambda {|n| @event = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }) },
                    "isAllDay" => lambda {|n| @is_all_day = n.get_boolean_value() },
                    "isDelegated" => lambda {|n| @is_delegated = n.get_boolean_value() },
                    "isOutOfDate" => lambda {|n| @is_out_of_date = n.get_boolean_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "meetingMessageType" => lambda {|n| @meeting_message_type = n.get_enum_value(MicrosoftGraph::Models::MeetingMessageType) },
                    "recurrence" => lambda {|n| @recurrence = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PatternedRecurrence.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::EventType) },
                })
            end
            ## 
            ## Gets the isAllDay property value. The isAllDay property
            ## @return a boolean
            ## 
            def is_all_day
                return @is_all_day
            end
            ## 
            ## Sets the isAllDay property value. The isAllDay property
            ## @param value Value to set for the is_all_day property.
            ## @return a void
            ## 
            def is_all_day=(value)
                @is_all_day = value
            end
            ## 
            ## Gets the isDelegated property value. The isDelegated property
            ## @return a boolean
            ## 
            def is_delegated
                return @is_delegated
            end
            ## 
            ## Sets the isDelegated property value. The isDelegated property
            ## @param value Value to set for the is_delegated property.
            ## @return a void
            ## 
            def is_delegated=(value)
                @is_delegated = value
            end
            ## 
            ## Gets the isOutOfDate property value. The isOutOfDate property
            ## @return a boolean
            ## 
            def is_out_of_date
                return @is_out_of_date
            end
            ## 
            ## Sets the isOutOfDate property value. The isOutOfDate property
            ## @param value Value to set for the is_out_of_date property.
            ## @return a void
            ## 
            def is_out_of_date=(value)
                @is_out_of_date = value
            end
            ## 
            ## Gets the location property value. The location property
            ## @return a location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The location property
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the meetingMessageType property value. The meetingMessageType property
            ## @return a meeting_message_type
            ## 
            def meeting_message_type
                return @meeting_message_type
            end
            ## 
            ## Sets the meetingMessageType property value. The meetingMessageType property
            ## @param value Value to set for the meeting_message_type property.
            ## @return a void
            ## 
            def meeting_message_type=(value)
                @meeting_message_type = value
            end
            ## 
            ## Gets the recurrence property value. The recurrence property
            ## @return a patterned_recurrence
            ## 
            def recurrence
                return @recurrence
            end
            ## 
            ## Sets the recurrence property value. The recurrence property
            ## @param value Value to set for the recurrence property.
            ## @return a void
            ## 
            def recurrence=(value)
                @recurrence = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("endDateTime", @end_date_time)
                writer.write_object_value("event", @event)
                writer.write_boolean_value("isAllDay", @is_all_day)
                writer.write_boolean_value("isDelegated", @is_delegated)
                writer.write_boolean_value("isOutOfDate", @is_out_of_date)
                writer.write_object_value("location", @location)
                writer.write_enum_value("meetingMessageType", @meeting_message_type)
                writer.write_object_value("recurrence", @recurrence)
                writer.write_object_value("startDateTime", @start_date_time)
                writer.write_enum_value("type", @type)
            end
            ## 
            ## Gets the startDateTime property value. The startDateTime property
            ## @return a date_time_time_zone
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The startDateTime property
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a event_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
