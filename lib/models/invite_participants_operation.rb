require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InviteParticipantsOperation < MicrosoftGraph::Models::CommsOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The participants to invite.
            @participants
            ## 
            ## Instantiates a new InviteParticipantsOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a invite_participants_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InviteParticipantsOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "participants" => lambda {|n| @participants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::InvitationParticipantInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the participants property value. The participants to invite.
            ## @return a invitation_participant_info
            ## 
            def participants
                return @participants
            end
            ## 
            ## Sets the participants property value. The participants to invite.
            ## @param value Value to set for the participants property.
            ## @return a void
            ## 
            def participants=(value)
                @participants = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("participants", @participants)
            end
        end
    end
end
