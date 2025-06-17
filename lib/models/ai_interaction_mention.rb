require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AiInteractionMention < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier for the mention.
            @mention_id
            ## 
            # The text mentioned in the message.
            @mention_text
            ## 
            # The entity mentioned in the message.
            @mentioned
            ## 
            ## Instantiates a new AiInteractionMention and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ai_interaction_mention
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AiInteractionMention.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mentionId" => lambda {|n| @mention_id = n.get_number_value() },
                    "mentionText" => lambda {|n| @mention_text = n.get_string_value() },
                    "mentioned" => lambda {|n| @mentioned = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AiInteractionMentionedIdentitySet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the mentionId property value. The identifier for the mention.
            ## @return a integer
            ## 
            def mention_id
                return @mention_id
            end
            ## 
            ## Sets the mentionId property value. The identifier for the mention.
            ## @param value Value to set for the mentionId property.
            ## @return a void
            ## 
            def mention_id=(value)
                @mention_id = value
            end
            ## 
            ## Gets the mentionText property value. The text mentioned in the message.
            ## @return a string
            ## 
            def mention_text
                return @mention_text
            end
            ## 
            ## Sets the mentionText property value. The text mentioned in the message.
            ## @param value Value to set for the mentionText property.
            ## @return a void
            ## 
            def mention_text=(value)
                @mention_text = value
            end
            ## 
            ## Gets the mentioned property value. The entity mentioned in the message.
            ## @return a ai_interaction_mentioned_identity_set
            ## 
            def mentioned
                return @mentioned
            end
            ## 
            ## Sets the mentioned property value. The entity mentioned in the message.
            ## @param value Value to set for the mentioned property.
            ## @return a void
            ## 
            def mentioned=(value)
                @mentioned = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("mentionId", @mention_id)
                writer.write_string_value("mentionText", @mention_text)
                writer.write_object_value("mentioned", @mentioned)
            end
        end
    end
end
