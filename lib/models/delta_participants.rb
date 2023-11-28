require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeltaParticipants < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The participants property
            @participants
            ## 
            # The sequenceNumber property
            @sequence_number
            ## 
            ## Instantiates a new deltaParticipants and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a delta_participants
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeltaParticipants.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "participants" => lambda {|n| @participants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Participant.create_from_discriminator_value(pn) }) },
                    "sequenceNumber" => lambda {|n| @sequence_number = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the participants property value. The participants property
            ## @return a participant
            ## 
            def participants
                return @participants
            end
            ## 
            ## Sets the participants property value. The participants property
            ## @param value Value to set for the participants property.
            ## @return a void
            ## 
            def participants=(value)
                @participants = value
            end
            ## 
            ## Gets the sequenceNumber property value. The sequenceNumber property
            ## @return a int64
            ## 
            def sequence_number
                return @sequence_number
            end
            ## 
            ## Sets the sequenceNumber property value. The sequenceNumber property
            ## @param value Value to set for the sequenceNumber property.
            ## @return a void
            ## 
            def sequence_number=(value)
                @sequence_number = value
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
                writer.write_object_value("sequenceNumber", @sequence_number)
            end
        end
    end
end
