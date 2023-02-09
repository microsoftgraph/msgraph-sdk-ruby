require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamworkOnlineMeetingInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The identifier of the calendar event associated with the meeting.
            @calendar_event_id
            ## 
            # The URL that users click to join or uniquely identify the meeting.
            @join_web_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The organizer of the meeting.
            @organizer
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
            ## Gets the calendarEventId property value. The identifier of the calendar event associated with the meeting.
            ## @return a string
            ## 
            def calendar_event_id
                return @calendar_event_id
            end
            ## 
            ## Sets the calendarEventId property value. The identifier of the calendar event associated with the meeting.
            ## @param value Value to set for the calendar_event_id property.
            ## @return a void
            ## 
            def calendar_event_id=(value)
                @calendar_event_id = value
            end
            ## 
            ## Instantiates a new teamworkOnlineMeetingInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_online_meeting_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkOnlineMeetingInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "calendarEventId" => lambda {|n| @calendar_event_id = n.get_string_value() },
                    "joinWebUrl" => lambda {|n| @join_web_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organizer" => lambda {|n| @organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamworkUserIdentity.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the joinWebUrl property value. The URL that users click to join or uniquely identify the meeting.
            ## @return a string
            ## 
            def join_web_url
                return @join_web_url
            end
            ## 
            ## Sets the joinWebUrl property value. The URL that users click to join or uniquely identify the meeting.
            ## @param value Value to set for the join_web_url property.
            ## @return a void
            ## 
            def join_web_url=(value)
                @join_web_url = value
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
            ## Gets the organizer property value. The organizer of the meeting.
            ## @return a teamwork_user_identity
            ## 
            def organizer
                return @organizer
            end
            ## 
            ## Sets the organizer property value. The organizer of the meeting.
            ## @param value Value to set for the organizer property.
            ## @return a void
            ## 
            def organizer=(value)
                @organizer = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("calendarEventId", @calendar_event_id)
                writer.write_string_value("joinWebUrl", @join_web_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("organizer", @organizer)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
