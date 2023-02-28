require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/attendee_base'
require_relative '../../../models/location_constraint'
require_relative '../../../models/time_constraint'
require_relative '../../users'
require_relative '../item'
require_relative './find_meeting_times'

module MicrosoftGraph
    module Users
        module Item
            module FindMeetingTimes
                class FindMeetingTimesPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The attendees property
                    @attendees
                    ## 
                    # The isOrganizerOptional property
                    @is_organizer_optional
                    ## 
                    # The locationConstraint property
                    @location_constraint
                    ## 
                    # The maxCandidates property
                    @max_candidates
                    ## 
                    # The meetingDuration property
                    @meeting_duration
                    ## 
                    # The minimumAttendeePercentage property
                    @minimum_attendee_percentage
                    ## 
                    # The returnSuggestionReasons property
                    @return_suggestion_reasons
                    ## 
                    # The timeConstraint property
                    @time_constraint
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
                    ## Gets the attendees property value. The attendees property
                    ## @return a attendee_base
                    ## 
                    def attendees
                        return @attendees
                    end
                    ## 
                    ## Sets the attendees property value. The attendees property
                    ## @param value Value to set for the attendees property.
                    ## @return a void
                    ## 
                    def attendees=(value)
                        @attendees = value
                    end
                    ## 
                    ## Instantiates a new findMeetingTimesPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a find_meeting_times_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return FindMeetingTimesPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "attendees" => lambda {|n| @attendees = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttendeeBase.create_from_discriminator_value(pn) }) },
                            "isOrganizerOptional" => lambda {|n| @is_organizer_optional = n.get_boolean_value() },
                            "locationConstraint" => lambda {|n| @location_constraint = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LocationConstraint.create_from_discriminator_value(pn) }) },
                            "maxCandidates" => lambda {|n| @max_candidates = n.get_number_value() },
                            "meetingDuration" => lambda {|n| @meeting_duration = n.get_duration_value() },
                            "minimumAttendeePercentage" => lambda {|n| @minimum_attendee_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                            "returnSuggestionReasons" => lambda {|n| @return_suggestion_reasons = n.get_boolean_value() },
                            "timeConstraint" => lambda {|n| @time_constraint = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeConstraint.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Gets the isOrganizerOptional property value. The isOrganizerOptional property
                    ## @return a boolean
                    ## 
                    def is_organizer_optional
                        return @is_organizer_optional
                    end
                    ## 
                    ## Sets the isOrganizerOptional property value. The isOrganizerOptional property
                    ## @param value Value to set for the is_organizer_optional property.
                    ## @return a void
                    ## 
                    def is_organizer_optional=(value)
                        @is_organizer_optional = value
                    end
                    ## 
                    ## Gets the locationConstraint property value. The locationConstraint property
                    ## @return a location_constraint
                    ## 
                    def location_constraint
                        return @location_constraint
                    end
                    ## 
                    ## Sets the locationConstraint property value. The locationConstraint property
                    ## @param value Value to set for the location_constraint property.
                    ## @return a void
                    ## 
                    def location_constraint=(value)
                        @location_constraint = value
                    end
                    ## 
                    ## Gets the maxCandidates property value. The maxCandidates property
                    ## @return a integer
                    ## 
                    def max_candidates
                        return @max_candidates
                    end
                    ## 
                    ## Sets the maxCandidates property value. The maxCandidates property
                    ## @param value Value to set for the max_candidates property.
                    ## @return a void
                    ## 
                    def max_candidates=(value)
                        @max_candidates = value
                    end
                    ## 
                    ## Gets the meetingDuration property value. The meetingDuration property
                    ## @return a microsoft_kiota_abstractions::_i_s_o_duration
                    ## 
                    def meeting_duration
                        return @meeting_duration
                    end
                    ## 
                    ## Sets the meetingDuration property value. The meetingDuration property
                    ## @param value Value to set for the meeting_duration property.
                    ## @return a void
                    ## 
                    def meeting_duration=(value)
                        @meeting_duration = value
                    end
                    ## 
                    ## Gets the minimumAttendeePercentage property value. The minimumAttendeePercentage property
                    ## @return a double
                    ## 
                    def minimum_attendee_percentage
                        return @minimum_attendee_percentage
                    end
                    ## 
                    ## Sets the minimumAttendeePercentage property value. The minimumAttendeePercentage property
                    ## @param value Value to set for the minimum_attendee_percentage property.
                    ## @return a void
                    ## 
                    def minimum_attendee_percentage=(value)
                        @minimum_attendee_percentage = value
                    end
                    ## 
                    ## Gets the returnSuggestionReasons property value. The returnSuggestionReasons property
                    ## @return a boolean
                    ## 
                    def return_suggestion_reasons
                        return @return_suggestion_reasons
                    end
                    ## 
                    ## Sets the returnSuggestionReasons property value. The returnSuggestionReasons property
                    ## @param value Value to set for the return_suggestion_reasons property.
                    ## @return a void
                    ## 
                    def return_suggestion_reasons=(value)
                        @return_suggestion_reasons = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_object_values("attendees", @attendees)
                        writer.write_boolean_value("isOrganizerOptional", @is_organizer_optional)
                        writer.write_object_value("locationConstraint", @location_constraint)
                        writer.write_number_value("maxCandidates", @max_candidates)
                        writer.write_duration_value("meetingDuration", @meeting_duration)
                        writer.write_object_value("minimumAttendeePercentage", @minimum_attendee_percentage)
                        writer.write_boolean_value("returnSuggestionReasons", @return_suggestion_reasons)
                        writer.write_object_value("timeConstraint", @time_constraint)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the timeConstraint property value. The timeConstraint property
                    ## @return a time_constraint
                    ## 
                    def time_constraint
                        return @time_constraint
                    end
                    ## 
                    ## Sets the timeConstraint property value. The timeConstraint property
                    ## @param value Value to set for the time_constraint property.
                    ## @return a void
                    ## 
                    def time_constraint=(value)
                        @time_constraint = value
                    end
                end
            end
        end
    end
end
