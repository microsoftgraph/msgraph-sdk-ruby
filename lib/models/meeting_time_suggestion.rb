require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MeetingTimeSuggestion
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # An array that shows the availability status of each attendee for this meeting suggestion.
            @attendee_availability
            ## 
            # A percentage that represents the likelhood of all the attendees attending.
            @confidence
            ## 
            # An array that specifies the name and geographic location of each meeting location for this meeting suggestion.
            @locations
            ## 
            # A time period suggested for the meeting.
            @meeting_time_slot
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Order of meeting time suggestions sorted by their computed confidence value from high to low, then by chronology if there are suggestions with the same confidence.
            @order
            ## 
            # Availability of the meeting organizer for this meeting suggestion. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            @organizer_availability
            ## 
            # Reason for suggesting the meeting time.
            @suggestion_reason
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
            ## Gets the attendeeAvailability property value. An array that shows the availability status of each attendee for this meeting suggestion.
            ## @return a attendee_availability
            ## 
            def attendee_availability
                return @attendee_availability
            end
            ## 
            ## Sets the attendeeAvailability property value. An array that shows the availability status of each attendee for this meeting suggestion.
            ## @param value Value to set for the attendee_availability property.
            ## @return a void
            ## 
            def attendee_availability=(value)
                @attendee_availability = value
            end
            ## 
            ## Gets the confidence property value. A percentage that represents the likelhood of all the attendees attending.
            ## @return a double
            ## 
            def confidence
                return @confidence
            end
            ## 
            ## Sets the confidence property value. A percentage that represents the likelhood of all the attendees attending.
            ## @param value Value to set for the confidence property.
            ## @return a void
            ## 
            def confidence=(value)
                @confidence = value
            end
            ## 
            ## Instantiates a new meetingTimeSuggestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a meeting_time_suggestion
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MeetingTimeSuggestion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attendeeAvailability" => lambda {|n| @attendee_availability = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttendeeAvailability.create_from_discriminator_value(pn) }) },
                    "confidence" => lambda {|n| @confidence = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "locations" => lambda {|n| @locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "meetingTimeSlot" => lambda {|n| @meeting_time_slot = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeSlot.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "order" => lambda {|n| @order = n.get_number_value() },
                    "organizerAvailability" => lambda {|n| @organizer_availability = n.get_enum_value(MicrosoftGraph::Models::FreeBusyStatus) },
                    "suggestionReason" => lambda {|n| @suggestion_reason = n.get_string_value() },
                }
            end
            ## 
            ## Gets the locations property value. An array that specifies the name and geographic location of each meeting location for this meeting suggestion.
            ## @return a location
            ## 
            def locations
                return @locations
            end
            ## 
            ## Sets the locations property value. An array that specifies the name and geographic location of each meeting location for this meeting suggestion.
            ## @param value Value to set for the locations property.
            ## @return a void
            ## 
            def locations=(value)
                @locations = value
            end
            ## 
            ## Gets the meetingTimeSlot property value. A time period suggested for the meeting.
            ## @return a time_slot
            ## 
            def meeting_time_slot
                return @meeting_time_slot
            end
            ## 
            ## Sets the meetingTimeSlot property value. A time period suggested for the meeting.
            ## @param value Value to set for the meeting_time_slot property.
            ## @return a void
            ## 
            def meeting_time_slot=(value)
                @meeting_time_slot = value
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
            ## Gets the order property value. Order of meeting time suggestions sorted by their computed confidence value from high to low, then by chronology if there are suggestions with the same confidence.
            ## @return a integer
            ## 
            def order
                return @order
            end
            ## 
            ## Sets the order property value. Order of meeting time suggestions sorted by their computed confidence value from high to low, then by chronology if there are suggestions with the same confidence.
            ## @param value Value to set for the order property.
            ## @return a void
            ## 
            def order=(value)
                @order = value
            end
            ## 
            ## Gets the organizerAvailability property value. Availability of the meeting organizer for this meeting suggestion. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            ## @return a free_busy_status
            ## 
            def organizer_availability
                return @organizer_availability
            end
            ## 
            ## Sets the organizerAvailability property value. Availability of the meeting organizer for this meeting suggestion. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            ## @param value Value to set for the organizer_availability property.
            ## @return a void
            ## 
            def organizer_availability=(value)
                @organizer_availability = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("attendeeAvailability", @attendee_availability)
                writer.write_object_value("confidence", @confidence)
                writer.write_collection_of_object_values("locations", @locations)
                writer.write_object_value("meetingTimeSlot", @meeting_time_slot)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("order", @order)
                writer.write_enum_value("organizerAvailability", @organizer_availability)
                writer.write_string_value("suggestionReason", @suggestion_reason)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the suggestionReason property value. Reason for suggesting the meeting time.
            ## @return a string
            ## 
            def suggestion_reason
                return @suggestion_reason
            end
            ## 
            ## Sets the suggestionReason property value. Reason for suggesting the meeting time.
            ## @param value Value to set for the suggestion_reason property.
            ## @return a void
            ## 
            def suggestion_reason=(value)
                @suggestion_reason = value
            end
        end
    end
end
