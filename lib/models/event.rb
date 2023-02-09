require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Event < MicrosoftGraph::Models::OutlookItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # true if the meeting organizer allows invitees to propose a new time when responding; otherwise, false. Optional. Default is true.
            @allow_new_time_proposals
            ## 
            # The collection of FileAttachment, ItemAttachment, and referenceAttachment attachments for the event. Navigation property. Read-only. Nullable.
            @attachments
            ## 
            # The collection of attendees for the event.
            @attendees
            ## 
            # The body of the message associated with the event. It can be in HTML or text format.
            @body
            ## 
            # The preview of the message associated with the event. It is in text format.
            @body_preview
            ## 
            # The calendar that contains the event. Navigation property. Read-only.
            @calendar
            ## 
            # The date, time, and time zone that the event ends. By default, the end time is in UTC.
            @end_escaped
            ## 
            # The collection of open extensions defined for the event. Nullable.
            @extensions
            ## 
            # Set to true if the event has attachments.
            @has_attachments
            ## 
            # When set to true, each attendee only sees themselves in the meeting request and meeting Tracking list. Default is false.
            @hide_attendees
            ## 
            # A unique identifier for an event across calendars. This ID is different for each occurrence in a recurring series. Read-only.
            @i_cal_u_id
            ## 
            # The importance property
            @importance
            ## 
            # The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
            @instances
            ## 
            # The isAllDay property
            @is_all_day
            ## 
            # The isCancelled property
            @is_cancelled
            ## 
            # The isDraft property
            @is_draft
            ## 
            # The isOnlineMeeting property
            @is_online_meeting
            ## 
            # The isOrganizer property
            @is_organizer
            ## 
            # The isReminderOn property
            @is_reminder_on
            ## 
            # The location property
            @location
            ## 
            # The locations property
            @locations
            ## 
            # The collection of multi-value extended properties defined for the event. Read-only. Nullable.
            @multi_value_extended_properties
            ## 
            # The onlineMeeting property
            @online_meeting
            ## 
            # The onlineMeetingProvider property
            @online_meeting_provider
            ## 
            # The onlineMeetingUrl property
            @online_meeting_url
            ## 
            # The organizer property
            @organizer
            ## 
            # The originalEndTimeZone property
            @original_end_time_zone
            ## 
            # The originalStart property
            @original_start
            ## 
            # The originalStartTimeZone property
            @original_start_time_zone
            ## 
            # The recurrence property
            @recurrence
            ## 
            # The reminderMinutesBeforeStart property
            @reminder_minutes_before_start
            ## 
            # The responseRequested property
            @response_requested
            ## 
            # The responseStatus property
            @response_status
            ## 
            # The sensitivity property
            @sensitivity
            ## 
            # The seriesMasterId property
            @series_master_id
            ## 
            # The showAs property
            @show_as
            ## 
            # The collection of single-value extended properties defined for the event. Read-only. Nullable.
            @single_value_extended_properties
            ## 
            # The start property
            @start
            ## 
            # The subject property
            @subject
            ## 
            # The transactionId property
            @transaction_id
            ## 
            # The type property
            @type
            ## 
            # The webLink property
            @web_link
            ## 
            ## Gets the allowNewTimeProposals property value. true if the meeting organizer allows invitees to propose a new time when responding; otherwise, false. Optional. Default is true.
            ## @return a boolean
            ## 
            def allow_new_time_proposals
                return @allow_new_time_proposals
            end
            ## 
            ## Sets the allowNewTimeProposals property value. true if the meeting organizer allows invitees to propose a new time when responding; otherwise, false. Optional. Default is true.
            ## @param value Value to set for the allow_new_time_proposals property.
            ## @return a void
            ## 
            def allow_new_time_proposals=(value)
                @allow_new_time_proposals = value
            end
            ## 
            ## Gets the attachments property value. The collection of FileAttachment, ItemAttachment, and referenceAttachment attachments for the event. Navigation property. Read-only. Nullable.
            ## @return a attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. The collection of FileAttachment, ItemAttachment, and referenceAttachment attachments for the event. Navigation property. Read-only. Nullable.
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the attendees property value. The collection of attendees for the event.
            ## @return a attendee
            ## 
            def attendees
                return @attendees
            end
            ## 
            ## Sets the attendees property value. The collection of attendees for the event.
            ## @param value Value to set for the attendees property.
            ## @return a void
            ## 
            def attendees=(value)
                @attendees = value
            end
            ## 
            ## Gets the body property value. The body of the message associated with the event. It can be in HTML or text format.
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The body of the message associated with the event. It can be in HTML or text format.
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Gets the bodyPreview property value. The preview of the message associated with the event. It is in text format.
            ## @return a string
            ## 
            def body_preview
                return @body_preview
            end
            ## 
            ## Sets the bodyPreview property value. The preview of the message associated with the event. It is in text format.
            ## @param value Value to set for the body_preview property.
            ## @return a void
            ## 
            def body_preview=(value)
                @body_preview = value
            end
            ## 
            ## Gets the calendar property value. The calendar that contains the event. Navigation property. Read-only.
            ## @return a calendar
            ## 
            def calendar
                return @calendar
            end
            ## 
            ## Sets the calendar property value. The calendar that contains the event. Navigation property. Read-only.
            ## @param value Value to set for the calendar property.
            ## @return a void
            ## 
            def calendar=(value)
                @calendar = value
            end
            ## 
            ## Instantiates a new Event and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.event"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Event.new
            end
            ## 
            ## Gets the end property value. The date, time, and time zone that the event ends. By default, the end time is in UTC.
            ## @return a date_time_time_zone
            ## 
            def end_escaped
                return @end_escaped
            end
            ## 
            ## Sets the end property value. The date, time, and time zone that the event ends. By default, the end time is in UTC.
            ## @param value Value to set for the end property.
            ## @return a void
            ## 
            def end_escaped=(value)
                @end_escaped = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the event. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the event. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowNewTimeProposals" => lambda {|n| @allow_new_time_proposals = n.get_boolean_value() },
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Attachment.create_from_discriminator_value(pn) }) },
                    "attendees" => lambda {|n| @attendees = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Attendee.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "bodyPreview" => lambda {|n| @body_preview = n.get_string_value() },
                    "calendar" => lambda {|n| @calendar = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Calendar.create_from_discriminator_value(pn) }) },
                    "end" => lambda {|n| @end_escaped = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "hideAttendees" => lambda {|n| @hide_attendees = n.get_boolean_value() },
                    "iCalUId" => lambda {|n| @i_cal_u_id = n.get_string_value() },
                    "importance" => lambda {|n| @importance = n.get_enum_value(MicrosoftGraph::Models::Importance) },
                    "instances" => lambda {|n| @instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }) },
                    "isAllDay" => lambda {|n| @is_all_day = n.get_boolean_value() },
                    "isCancelled" => lambda {|n| @is_cancelled = n.get_boolean_value() },
                    "isDraft" => lambda {|n| @is_draft = n.get_boolean_value() },
                    "isOnlineMeeting" => lambda {|n| @is_online_meeting = n.get_boolean_value() },
                    "isOrganizer" => lambda {|n| @is_organizer = n.get_boolean_value() },
                    "isReminderOn" => lambda {|n| @is_reminder_on = n.get_boolean_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "locations" => lambda {|n| @locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "onlineMeeting" => lambda {|n| @online_meeting = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnlineMeetingInfo.create_from_discriminator_value(pn) }) },
                    "onlineMeetingProvider" => lambda {|n| @online_meeting_provider = n.get_enum_value(MicrosoftGraph::Models::OnlineMeetingProviderType) },
                    "onlineMeetingUrl" => lambda {|n| @online_meeting_url = n.get_string_value() },
                    "organizer" => lambda {|n| @organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "originalEndTimeZone" => lambda {|n| @original_end_time_zone = n.get_string_value() },
                    "originalStart" => lambda {|n| @original_start = n.get_date_time_value() },
                    "originalStartTimeZone" => lambda {|n| @original_start_time_zone = n.get_string_value() },
                    "recurrence" => lambda {|n| @recurrence = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PatternedRecurrence.create_from_discriminator_value(pn) }) },
                    "reminderMinutesBeforeStart" => lambda {|n| @reminder_minutes_before_start = n.get_number_value() },
                    "responseRequested" => lambda {|n| @response_requested = n.get_boolean_value() },
                    "responseStatus" => lambda {|n| @response_status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResponseStatus.create_from_discriminator_value(pn) }) },
                    "sensitivity" => lambda {|n| @sensitivity = n.get_enum_value(MicrosoftGraph::Models::Sensitivity) },
                    "seriesMasterId" => lambda {|n| @series_master_id = n.get_string_value() },
                    "showAs" => lambda {|n| @show_as = n.get_enum_value(MicrosoftGraph::Models::FreeBusyStatus) },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "start" => lambda {|n| @start = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "transactionId" => lambda {|n| @transaction_id = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::EventType) },
                    "webLink" => lambda {|n| @web_link = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hasAttachments property value. Set to true if the event has attachments.
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. Set to true if the event has attachments.
            ## @param value Value to set for the has_attachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the hideAttendees property value. When set to true, each attendee only sees themselves in the meeting request and meeting Tracking list. Default is false.
            ## @return a boolean
            ## 
            def hide_attendees
                return @hide_attendees
            end
            ## 
            ## Sets the hideAttendees property value. When set to true, each attendee only sees themselves in the meeting request and meeting Tracking list. Default is false.
            ## @param value Value to set for the hide_attendees property.
            ## @return a void
            ## 
            def hide_attendees=(value)
                @hide_attendees = value
            end
            ## 
            ## Gets the iCalUId property value. A unique identifier for an event across calendars. This ID is different for each occurrence in a recurring series. Read-only.
            ## @return a string
            ## 
            def i_cal_u_id
                return @i_cal_u_id
            end
            ## 
            ## Sets the iCalUId property value. A unique identifier for an event across calendars. This ID is different for each occurrence in a recurring series. Read-only.
            ## @param value Value to set for the i_cal_u_id property.
            ## @return a void
            ## 
            def i_cal_u_id=(value)
                @i_cal_u_id = value
            end
            ## 
            ## Gets the importance property value. The importance property
            ## @return a importance
            ## 
            def importance
                return @importance
            end
            ## 
            ## Sets the importance property value. The importance property
            ## @param value Value to set for the importance property.
            ## @return a void
            ## 
            def importance=(value)
                @importance = value
            end
            ## 
            ## Gets the instances property value. The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
            ## @return a event
            ## 
            def instances
                return @instances
            end
            ## 
            ## Sets the instances property value. The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
            ## @param value Value to set for the instances property.
            ## @return a void
            ## 
            def instances=(value)
                @instances = value
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
            ## Gets the isCancelled property value. The isCancelled property
            ## @return a boolean
            ## 
            def is_cancelled
                return @is_cancelled
            end
            ## 
            ## Sets the isCancelled property value. The isCancelled property
            ## @param value Value to set for the is_cancelled property.
            ## @return a void
            ## 
            def is_cancelled=(value)
                @is_cancelled = value
            end
            ## 
            ## Gets the isDraft property value. The isDraft property
            ## @return a boolean
            ## 
            def is_draft
                return @is_draft
            end
            ## 
            ## Sets the isDraft property value. The isDraft property
            ## @param value Value to set for the is_draft property.
            ## @return a void
            ## 
            def is_draft=(value)
                @is_draft = value
            end
            ## 
            ## Gets the isOnlineMeeting property value. The isOnlineMeeting property
            ## @return a boolean
            ## 
            def is_online_meeting
                return @is_online_meeting
            end
            ## 
            ## Sets the isOnlineMeeting property value. The isOnlineMeeting property
            ## @param value Value to set for the is_online_meeting property.
            ## @return a void
            ## 
            def is_online_meeting=(value)
                @is_online_meeting = value
            end
            ## 
            ## Gets the isOrganizer property value. The isOrganizer property
            ## @return a boolean
            ## 
            def is_organizer
                return @is_organizer
            end
            ## 
            ## Sets the isOrganizer property value. The isOrganizer property
            ## @param value Value to set for the is_organizer property.
            ## @return a void
            ## 
            def is_organizer=(value)
                @is_organizer = value
            end
            ## 
            ## Gets the isReminderOn property value. The isReminderOn property
            ## @return a boolean
            ## 
            def is_reminder_on
                return @is_reminder_on
            end
            ## 
            ## Sets the isReminderOn property value. The isReminderOn property
            ## @param value Value to set for the is_reminder_on property.
            ## @return a void
            ## 
            def is_reminder_on=(value)
                @is_reminder_on = value
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
            ## Gets the locations property value. The locations property
            ## @return a location
            ## 
            def locations
                return @locations
            end
            ## 
            ## Sets the locations property value. The locations property
            ## @param value Value to set for the locations property.
            ## @return a void
            ## 
            def locations=(value)
                @locations = value
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the event. Read-only. Nullable.
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the event. Read-only. Nullable.
            ## @param value Value to set for the multi_value_extended_properties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Gets the onlineMeeting property value. The onlineMeeting property
            ## @return a online_meeting_info
            ## 
            def online_meeting
                return @online_meeting
            end
            ## 
            ## Sets the onlineMeeting property value. The onlineMeeting property
            ## @param value Value to set for the online_meeting property.
            ## @return a void
            ## 
            def online_meeting=(value)
                @online_meeting = value
            end
            ## 
            ## Gets the onlineMeetingProvider property value. The onlineMeetingProvider property
            ## @return a online_meeting_provider_type
            ## 
            def online_meeting_provider
                return @online_meeting_provider
            end
            ## 
            ## Sets the onlineMeetingProvider property value. The onlineMeetingProvider property
            ## @param value Value to set for the online_meeting_provider property.
            ## @return a void
            ## 
            def online_meeting_provider=(value)
                @online_meeting_provider = value
            end
            ## 
            ## Gets the onlineMeetingUrl property value. The onlineMeetingUrl property
            ## @return a string
            ## 
            def online_meeting_url
                return @online_meeting_url
            end
            ## 
            ## Sets the onlineMeetingUrl property value. The onlineMeetingUrl property
            ## @param value Value to set for the online_meeting_url property.
            ## @return a void
            ## 
            def online_meeting_url=(value)
                @online_meeting_url = value
            end
            ## 
            ## Gets the organizer property value. The organizer property
            ## @return a recipient
            ## 
            def organizer
                return @organizer
            end
            ## 
            ## Sets the organizer property value. The organizer property
            ## @param value Value to set for the organizer property.
            ## @return a void
            ## 
            def organizer=(value)
                @organizer = value
            end
            ## 
            ## Gets the originalEndTimeZone property value. The originalEndTimeZone property
            ## @return a string
            ## 
            def original_end_time_zone
                return @original_end_time_zone
            end
            ## 
            ## Sets the originalEndTimeZone property value. The originalEndTimeZone property
            ## @param value Value to set for the original_end_time_zone property.
            ## @return a void
            ## 
            def original_end_time_zone=(value)
                @original_end_time_zone = value
            end
            ## 
            ## Gets the originalStart property value. The originalStart property
            ## @return a date_time
            ## 
            def original_start
                return @original_start
            end
            ## 
            ## Sets the originalStart property value. The originalStart property
            ## @param value Value to set for the original_start property.
            ## @return a void
            ## 
            def original_start=(value)
                @original_start = value
            end
            ## 
            ## Gets the originalStartTimeZone property value. The originalStartTimeZone property
            ## @return a string
            ## 
            def original_start_time_zone
                return @original_start_time_zone
            end
            ## 
            ## Sets the originalStartTimeZone property value. The originalStartTimeZone property
            ## @param value Value to set for the original_start_time_zone property.
            ## @return a void
            ## 
            def original_start_time_zone=(value)
                @original_start_time_zone = value
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
            ## Gets the reminderMinutesBeforeStart property value. The reminderMinutesBeforeStart property
            ## @return a integer
            ## 
            def reminder_minutes_before_start
                return @reminder_minutes_before_start
            end
            ## 
            ## Sets the reminderMinutesBeforeStart property value. The reminderMinutesBeforeStart property
            ## @param value Value to set for the reminder_minutes_before_start property.
            ## @return a void
            ## 
            def reminder_minutes_before_start=(value)
                @reminder_minutes_before_start = value
            end
            ## 
            ## Gets the responseRequested property value. The responseRequested property
            ## @return a boolean
            ## 
            def response_requested
                return @response_requested
            end
            ## 
            ## Sets the responseRequested property value. The responseRequested property
            ## @param value Value to set for the response_requested property.
            ## @return a void
            ## 
            def response_requested=(value)
                @response_requested = value
            end
            ## 
            ## Gets the responseStatus property value. The responseStatus property
            ## @return a response_status
            ## 
            def response_status
                return @response_status
            end
            ## 
            ## Sets the responseStatus property value. The responseStatus property
            ## @param value Value to set for the response_status property.
            ## @return a void
            ## 
            def response_status=(value)
                @response_status = value
            end
            ## 
            ## Gets the sensitivity property value. The sensitivity property
            ## @return a sensitivity
            ## 
            def sensitivity
                return @sensitivity
            end
            ## 
            ## Sets the sensitivity property value. The sensitivity property
            ## @param value Value to set for the sensitivity property.
            ## @return a void
            ## 
            def sensitivity=(value)
                @sensitivity = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowNewTimeProposals", @allow_new_time_proposals)
                writer.write_collection_of_object_values("attachments", @attachments)
                writer.write_collection_of_object_values("attendees", @attendees)
                writer.write_object_value("body", @body)
                writer.write_string_value("bodyPreview", @body_preview)
                writer.write_object_value("calendar", @calendar)
                writer.write_object_value("end", @end_escaped)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_boolean_value("hideAttendees", @hide_attendees)
                writer.write_string_value("iCalUId", @i_cal_u_id)
                writer.write_enum_value("importance", @importance)
                writer.write_collection_of_object_values("instances", @instances)
                writer.write_boolean_value("isAllDay", @is_all_day)
                writer.write_boolean_value("isCancelled", @is_cancelled)
                writer.write_boolean_value("isDraft", @is_draft)
                writer.write_boolean_value("isOnlineMeeting", @is_online_meeting)
                writer.write_boolean_value("isOrganizer", @is_organizer)
                writer.write_boolean_value("isReminderOn", @is_reminder_on)
                writer.write_object_value("location", @location)
                writer.write_collection_of_object_values("locations", @locations)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_object_value("onlineMeeting", @online_meeting)
                writer.write_enum_value("onlineMeetingProvider", @online_meeting_provider)
                writer.write_string_value("onlineMeetingUrl", @online_meeting_url)
                writer.write_object_value("organizer", @organizer)
                writer.write_string_value("originalEndTimeZone", @original_end_time_zone)
                writer.write_date_time_value("originalStart", @original_start)
                writer.write_string_value("originalStartTimeZone", @original_start_time_zone)
                writer.write_object_value("recurrence", @recurrence)
                writer.write_number_value("reminderMinutesBeforeStart", @reminder_minutes_before_start)
                writer.write_boolean_value("responseRequested", @response_requested)
                writer.write_object_value("responseStatus", @response_status)
                writer.write_enum_value("sensitivity", @sensitivity)
                writer.write_string_value("seriesMasterId", @series_master_id)
                writer.write_enum_value("showAs", @show_as)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
                writer.write_object_value("start", @start)
                writer.write_string_value("subject", @subject)
                writer.write_string_value("transactionId", @transaction_id)
                writer.write_enum_value("type", @type)
                writer.write_string_value("webLink", @web_link)
            end
            ## 
            ## Gets the seriesMasterId property value. The seriesMasterId property
            ## @return a string
            ## 
            def series_master_id
                return @series_master_id
            end
            ## 
            ## Sets the seriesMasterId property value. The seriesMasterId property
            ## @param value Value to set for the series_master_id property.
            ## @return a void
            ## 
            def series_master_id=(value)
                @series_master_id = value
            end
            ## 
            ## Gets the showAs property value. The showAs property
            ## @return a free_busy_status
            ## 
            def show_as
                return @show_as
            end
            ## 
            ## Sets the showAs property value. The showAs property
            ## @param value Value to set for the show_as property.
            ## @return a void
            ## 
            def show_as=(value)
                @show_as = value
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the event. Read-only. Nullable.
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the event. Read-only. Nullable.
            ## @param value Value to set for the single_value_extended_properties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
            ## 
            ## Gets the start property value. The start property
            ## @return a date_time_time_zone
            ## 
            def start
                return @start
            end
            ## 
            ## Sets the start property value. The start property
            ## @param value Value to set for the start property.
            ## @return a void
            ## 
            def start=(value)
                @start = value
            end
            ## 
            ## Gets the subject property value. The subject property
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject property
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the transactionId property value. The transactionId property
            ## @return a string
            ## 
            def transaction_id
                return @transaction_id
            end
            ## 
            ## Sets the transactionId property value. The transactionId property
            ## @param value Value to set for the transaction_id property.
            ## @return a void
            ## 
            def transaction_id=(value)
                @transaction_id = value
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
            ## 
            ## Gets the webLink property value. The webLink property
            ## @return a string
            ## 
            def web_link
                return @web_link
            end
            ## 
            ## Sets the webLink property value. The webLink property
            ## @param value Value to set for the web_link property.
            ## @return a void
            ## 
            def web_link=(value)
                @web_link = value
            end
        end
    end
end
