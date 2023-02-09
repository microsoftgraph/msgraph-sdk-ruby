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
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @created_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Supported values are like, angry, sad, laugh, heart, surprised.
            @reaction_type
            ## 
            # The user property
            @user
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
            ## Instantiates a new chatMessageReaction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_reaction
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessageReaction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the reactionType property value. Supported values are like, angry, sad, laugh, heart, surprised.
            ## @return a string
            ## 
            def reaction_type
                return @reaction_type
            end
            ## 
            ## Sets the reactionType property value. Supported values are like, angry, sad, laugh, heart, surprised.
            ## @param value Value to set for the reaction_type property.
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
                writer.write_string_value("@odata.type", @odata_type)
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
