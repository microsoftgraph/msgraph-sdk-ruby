require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessageReaction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The name of the reaction.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The hosted content URL for the custom reaction type.
            @reaction_content_url
            ## 
            # The reaction type. Supported values include Unicode characters, custom, and some backward-compatible reaction types, such as like, angry, sad, laugh, heart, and surprised.
            @reaction_type
            ## 
            # The user property
            @user
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new ChatMessageReaction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_reaction
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessageReaction.new
            end
            ## 
            ## Gets the displayName property value. The name of the reaction.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the reaction.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reactionContentUrl" => lambda {|n| @reaction_content_url = n.get_string_value() },
                    "reactionType" => lambda {|n| @reaction_type = n.get_string_value() },
                    "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessageReactionIdentitySet.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the reactionContentUrl property value. The hosted content URL for the custom reaction type.
            ## @return a string
            ## 
            def reaction_content_url
                return @reaction_content_url
            end
            ## 
            ## Sets the reactionContentUrl property value. The hosted content URL for the custom reaction type.
            ## @param value Value to set for the reactionContentUrl property.
            ## @return a void
            ## 
            def reaction_content_url=(value)
                @reaction_content_url = value
            end
            ## 
            ## Gets the reactionType property value. The reaction type. Supported values include Unicode characters, custom, and some backward-compatible reaction types, such as like, angry, sad, laugh, heart, and surprised.
            ## @return a string
            ## 
            def reaction_type
                return @reaction_type
            end
            ## 
            ## Sets the reactionType property value. The reaction type. Supported values include Unicode characters, custom, and some backward-compatible reaction types, such as like, angry, sad, laugh, heart, and surprised.
            ## @param value Value to set for the reactionType property.
            ## @return a void
            ## 
            def reaction_type=(value)
                @reaction_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("reactionContentUrl", @reaction_content_url)
                writer.write_string_value("reactionType", @reaction_type)
                writer.write_object_value("user", @user)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the user property value. The user property
            ## @return a chat_message_reaction_identity_set
            ## 
            def user
                return @user
            end
            ## 
            ## Sets the user property value. The user property
            ## @param value Value to set for the user property.
            ## @return a void
            ## 
            def user=(value)
                @user = value
            end
        end
    end
end
