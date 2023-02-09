require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class ParticipantEndpoint < MicrosoftGraph::Models::CallRecords::Endpoint
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The feedback provided by the user of this endpoint about the quality of the session.
                @feedback
                ## 
                # Identity associated with the endpoint.
                @identity
                ## 
                ## Instantiates a new ParticipantEndpoint and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.callRecords.participantEndpoint"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a participant_endpoint
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ParticipantEndpoint.new
                end
                ## 
                ## Gets the feedback property value. The feedback provided by the user of this endpoint about the quality of the session.
                ## @return a user_feedback
                ## 
                def feedback
                    return @feedback
                end
                ## 
                ## Sets the feedback property value. The feedback provided by the user of this endpoint about the quality of the session.
                ## @param value Value to set for the feedback property.
                ## @return a void
                ## 
                def feedback=(value)
                    @feedback = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "feedback" => lambda {|n| @feedback = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallRecords::UserFeedback.create_from_discriminator_value(pn) }) },
                        "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the identity property value. Identity associated with the endpoint.
                ## @return a identity_set
                ## 
                def identity
                    return @identity
                end
                ## 
                ## Sets the identity property value. Identity associated with the endpoint.
                ## @param value Value to set for the identity property.
                ## @return a void
                ## 
                def identity=(value)
                    @identity = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("feedback", @feedback)
                    writer.write_object_value("identity", @identity)
                end
            end
        end
    end
end
