require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/base_collection_pagination_count_response'
require_relative '../../../models/call_transcript'
require_relative '../../communications'
require_relative '../online_meetings'
require_relative './i056e0011aad1cfd99d94f2d6b75f21d85f8b7cfe3c3983a69234033a5ffcd08b'

module MicrosoftGraph
    module Communications
        module OnlineMeetings
            module I056e0011aad1cfd99d94f2d6b75f21d85f8b7cfe3c3983a69234033a5ffcd08b
                class GetAllTranscriptsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimegetResponse < MicrosoftGraph::Models::BaseCollectionPaginationCountResponse
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # The value property
                    @value
                    ## 
                    ## Instantiates a new GetAllTranscriptsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimegetResponse and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        super
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a get_all_transcriptsmeeting_organizer_user_id_meeting_organizer_user_id_with_start_date_time_with_end_date_timeget_response
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GetAllTranscriptsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimegetResponse.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return super.merge({
                            "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallTranscript.create_from_discriminator_value(pn) }) },
                        })
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        super
                        writer.write_collection_of_object_values("value", @value)
                    end
                    ## 
                    ## Gets the value property value. The value property
                    ## @return a call_transcript
                    ## 
                    def value
                        return @value
                    end
                    ## 
                    ## Sets the value property value. The value property
                    ## @param value Value to set for the value property.
                    ## @return a void
                    ## 
                    def value=(value)
                        @value = value
                    end
                end
            end
        end
    end
end
