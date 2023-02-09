require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessageMention
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Index of an entity being mentioned in the specified chatMessage. Matches the {index} value in the corresponding <at id='{index}'> tag in the message body.
            @id
            ## 
            # String used to represent the mention. For example, a user's display name, a team name.
            @mention_text
            ## 
            # The entity (user, application, team, or channel) that was @mentioned.
            @mentioned
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new chatMessageMention and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_mention
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessageMention.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "id" => lambda {|n| @id = n.get_number_value() },
                    "mentionText" => lambda {|n| @mention_text = n.get_string_value() },
                    "mentioned" => lambda {|n| @mentioned = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessageMentionedIdentitySet.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Index of an entity being mentioned in the specified chatMessage. Matches the {index} value in the corresponding <at id='{index}'> tag in the message body.
            ## @return a integer
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Index of an entity being mentioned in the specified chatMessage. Matches the {index} value in the corresponding <at id='{index}'> tag in the message body.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the mentionText property value. String used to represent the mention. For example, a user's display name, a team name.
            ## @return a string
            ## 
            def mention_text
                return @mention_text
            end
            ## 
            ## Sets the mentionText property value. String used to represent the mention. For example, a user's display name, a team name.
            ## @param value Value to set for the mention_text property.
            ## @return a void
            ## 
            def mention_text=(value)
                @mention_text = value
            end
            ## 
            ## Gets the mentioned property value. The entity (user, application, team, or channel) that was @mentioned.
            ## @return a chat_message_mentioned_identity_set
            ## 
            def mentioned
                return @mentioned
            end
            ## 
            ## Sets the mentioned property value. The entity (user, application, team, or channel) that was @mentioned.
            ## @param value Value to set for the mentioned property.
            ## @return a void
            ## 
            def mentioned=(value)
                @mentioned = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("id", @id)
                writer.write_string_value("mentionText", @mention_text)
                writer.write_object_value("mentioned", @mentioned)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
