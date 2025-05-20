require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AiUser < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The interactionHistory property
            @interaction_history
            ## 
            ## Instantiates a new AiUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ai_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AiUser.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "interactionHistory" => lambda {|n| @interaction_history = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AiInteractionHistory.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the interactionHistory property value. The interactionHistory property
            ## @return a ai_interaction_history
            ## 
            def interaction_history
                return @interaction_history
            end
            ## 
            ## Sets the interactionHistory property value. The interactionHistory property
            ## @param value Value to set for the interactionHistory property.
            ## @return a void
            ## 
            def interaction_history=(value)
                @interaction_history = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("interactionHistory", @interaction_history)
            end
        end
    end
end
