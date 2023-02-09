require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MeetingParticipantInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Identity information of the participant.
            @identity
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies the participant's role in the meeting.
            @role
            ## 
            # User principal name of the participant.
            @upn
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
            ## Instantiates a new meetingParticipantInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a meeting_participant_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MeetingParticipantInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraph::Models::OnlineMeetingRole) },
                    "upn" => lambda {|n| @upn = n.get_string_value() },
                }
            end
            ## 
            ## Gets the identity property value. Identity information of the participant.
            ## @return a identity_set
            ## 
            def identity
                return @identity
            end
            ## 
            ## Sets the identity property value. Identity information of the participant.
            ## @param value Value to set for the identity property.
            ## @return a void
            ## 
            def identity=(value)
                @identity = value
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
            ## Gets the role property value. Specifies the participant's role in the meeting.
            ## @return a online_meeting_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. Specifies the participant's role in the meeting.
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("identity", @identity)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("role", @role)
                writer.write_string_value("upn", @upn)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the upn property value. User principal name of the participant.
            ## @return a string
            ## 
            def upn
                return @upn
            end
            ## 
            ## Sets the upn property value. User principal name of the participant.
            ## @param value Value to set for the upn property.
            ## @return a void
            ## 
            def upn=(value)
                @upn = value
            end
        end
    end
end
