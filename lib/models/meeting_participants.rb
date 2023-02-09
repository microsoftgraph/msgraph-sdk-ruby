require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MeetingParticipants
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The attendees property
            @attendees
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The organizer property
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
            ## Gets the attendees property value. The attendees property
            ## @return a meeting_participant_info
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
            ## Instantiates a new meetingParticipants and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a meeting_participants
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MeetingParticipants.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attendees" => lambda {|n| @attendees = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MeetingParticipantInfo.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organizer" => lambda {|n| @organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MeetingParticipantInfo.create_from_discriminator_value(pn) }) },
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
            ## Gets the organizer property value. The organizer property
            ## @return a meeting_participant_info
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("attendees", @attendees)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("organizer", @organizer)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
