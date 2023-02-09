require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ParticipantLeftNotification < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The call property
            @call
            ## 
            # ID of the participant under the policy who has left the meeting.
            @participant_id
            ## 
            ## Gets the call property value. The call property
            ## @return a call
            ## 
            def call
                return @call
            end
            ## 
            ## Sets the call property value. The call property
            ## @param value Value to set for the call property.
            ## @return a void
            ## 
            def call=(value)
                @call = value
            end
            ## 
            ## Instantiates a new ParticipantLeftNotification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a participant_left_notification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ParticipantLeftNotification.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "call" => lambda {|n| @call = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Call.create_from_discriminator_value(pn) }) },
                    "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the participantId property value. ID of the participant under the policy who has left the meeting.
            ## @return a string
            ## 
            def participant_id
                return @participant_id
            end
            ## 
            ## Sets the participantId property value. ID of the participant under the policy who has left the meeting.
            ## @param value Value to set for the participant_id property.
            ## @return a void
            ## 
            def participant_id=(value)
                @participant_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("call", @call)
                writer.write_string_value("participantId", @participant_id)
            end
        end
    end
end
