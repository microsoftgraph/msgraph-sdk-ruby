require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/base_collection_pagination_count_response'
require_relative '../../../../models/call_recording'
require_relative '../../../users'
require_relative '../../item'
require_relative '../online_meetings'
require_relative './ibe4c23e921ad9fcaa5c959c34e393ba839c959ee578ec95fd69bc2d9aa0b2597'

module MicrosoftGraph
    module Users
        module Item
            module OnlineMeetings
                module Ibe4c23e921ad9fcaa5c959c34e393ba839c959ee578ec95fd69bc2d9aa0b2597
                    class GetAllRecordingsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimeGetResponse < MicrosoftGraph::Models::BaseCollectionPaginationCountResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The value property
                        @value
                        ## 
                        ## Instantiates a new GetAllRecordingsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimeGetResponse and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            super
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a get_all_recordingsmeeting_organizer_user_id_meeting_organizer_user_id_with_start_date_time_with_end_date_time_get_response
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return GetAllRecordingsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimeGetResponse.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return super.merge({
                                "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecording.create_from_discriminator_value(pn) }) },
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
                        ## @return a call_recording
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
end
