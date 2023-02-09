require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EventMessageRequest < MicrosoftGraph::Models::EventMessage
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # True if the meeting organizer allows invitees to propose a new time when responding, false otherwise. Optional. Default is true.
            @allow_new_time_proposals
            ## 
            # The meetingRequestType property
            @meeting_request_type
            ## 
            # If the meeting update changes the meeting end time, this property specifies the previous meeting end time.
            @previous_end_date_time
            ## 
            # If the meeting update changes the meeting location, this property specifies the previous meeting location.
            @previous_location
            ## 
            # If the meeting update changes the meeting start time, this property specifies the previous meeting start time.
            @previous_start_date_time
            ## 
            # Set to true if the sender would like the invitee to send a response to the requested meeting.
            @response_requested
            ## 
            ## Gets the allowNewTimeProposals property value. True if the meeting organizer allows invitees to propose a new time when responding, false otherwise. Optional. Default is true.
            ## @return a boolean
            ## 
            def allow_new_time_proposals
                return @allow_new_time_proposals
            end
            ## 
            ## Sets the allowNewTimeProposals property value. True if the meeting organizer allows invitees to propose a new time when responding, false otherwise. Optional. Default is true.
            ## @param value Value to set for the allow_new_time_proposals property.
            ## @return a void
            ## 
            def allow_new_time_proposals=(value)
                @allow_new_time_proposals = value
            end
            ## 
            ## Instantiates a new EventMessageRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.eventMessageRequest"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a event_message_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EventMessageRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowNewTimeProposals" => lambda {|n| @allow_new_time_proposals = n.get_boolean_value() },
                    "meetingRequestType" => lambda {|n| @meeting_request_type = n.get_enum_value(MicrosoftGraph::Models::MeetingRequestType) },
                    "previousEndDateTime" => lambda {|n| @previous_end_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "previousLocation" => lambda {|n| @previous_location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "previousStartDateTime" => lambda {|n| @previous_start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "responseRequested" => lambda {|n| @response_requested = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the meetingRequestType property value. The meetingRequestType property
            ## @return a meeting_request_type
            ## 
            def meeting_request_type
                return @meeting_request_type
            end
            ## 
            ## Sets the meetingRequestType property value. The meetingRequestType property
            ## @param value Value to set for the meeting_request_type property.
            ## @return a void
            ## 
            def meeting_request_type=(value)
                @meeting_request_type = value
            end
            ## 
            ## Gets the previousEndDateTime property value. If the meeting update changes the meeting end time, this property specifies the previous meeting end time.
            ## @return a date_time_time_zone
            ## 
            def previous_end_date_time
                return @previous_end_date_time
            end
            ## 
            ## Sets the previousEndDateTime property value. If the meeting update changes the meeting end time, this property specifies the previous meeting end time.
            ## @param value Value to set for the previous_end_date_time property.
            ## @return a void
            ## 
            def previous_end_date_time=(value)
                @previous_end_date_time = value
            end
            ## 
            ## Gets the previousLocation property value. If the meeting update changes the meeting location, this property specifies the previous meeting location.
            ## @return a location
            ## 
            def previous_location
                return @previous_location
            end
            ## 
            ## Sets the previousLocation property value. If the meeting update changes the meeting location, this property specifies the previous meeting location.
            ## @param value Value to set for the previous_location property.
            ## @return a void
            ## 
            def previous_location=(value)
                @previous_location = value
            end
            ## 
            ## Gets the previousStartDateTime property value. If the meeting update changes the meeting start time, this property specifies the previous meeting start time.
            ## @return a date_time_time_zone
            ## 
            def previous_start_date_time
                return @previous_start_date_time
            end
            ## 
            ## Sets the previousStartDateTime property value. If the meeting update changes the meeting start time, this property specifies the previous meeting start time.
            ## @param value Value to set for the previous_start_date_time property.
            ## @return a void
            ## 
            def previous_start_date_time=(value)
                @previous_start_date_time = value
            end
            ## 
            ## Gets the responseRequested property value. Set to true if the sender would like the invitee to send a response to the requested meeting.
            ## @return a boolean
            ## 
            def response_requested
                return @response_requested
            end
            ## 
            ## Sets the responseRequested property value. Set to true if the sender would like the invitee to send a response to the requested meeting.
            ## @param value Value to set for the response_requested property.
            ## @return a void
            ## 
            def response_requested=(value)
                @response_requested = value
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
                writer.write_enum_value("meetingRequestType", @meeting_request_type)
                writer.write_object_value("previousEndDateTime", @previous_end_date_time)
                writer.write_object_value("previousLocation", @previous_location)
                writer.write_object_value("previousStartDateTime", @previous_start_date_time)
                writer.write_boolean_value("responseRequested", @response_requested)
            end
        end
    end
end
