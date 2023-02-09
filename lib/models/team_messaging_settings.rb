require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamMessagingSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If set to true, @channel mentions are allowed.
            @allow_channel_mentions
            ## 
            # If set to true, owners can delete any message.
            @allow_owner_delete_messages
            ## 
            # If set to true, @team mentions are allowed.
            @allow_team_mentions
            ## 
            # If set to true, users can delete their messages.
            @allow_user_delete_messages
            ## 
            # If set to true, users can edit their messages.
            @allow_user_edit_messages
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
            ## Gets the allowChannelMentions property value. If set to true, @channel mentions are allowed.
            ## @return a boolean
            ## 
            def allow_channel_mentions
                return @allow_channel_mentions
            end
            ## 
            ## Sets the allowChannelMentions property value. If set to true, @channel mentions are allowed.
            ## @param value Value to set for the allow_channel_mentions property.
            ## @return a void
            ## 
            def allow_channel_mentions=(value)
                @allow_channel_mentions = value
            end
            ## 
            ## Gets the allowOwnerDeleteMessages property value. If set to true, owners can delete any message.
            ## @return a boolean
            ## 
            def allow_owner_delete_messages
                return @allow_owner_delete_messages
            end
            ## 
            ## Sets the allowOwnerDeleteMessages property value. If set to true, owners can delete any message.
            ## @param value Value to set for the allow_owner_delete_messages property.
            ## @return a void
            ## 
            def allow_owner_delete_messages=(value)
                @allow_owner_delete_messages = value
            end
            ## 
            ## Gets the allowTeamMentions property value. If set to true, @team mentions are allowed.
            ## @return a boolean
            ## 
            def allow_team_mentions
                return @allow_team_mentions
            end
            ## 
            ## Sets the allowTeamMentions property value. If set to true, @team mentions are allowed.
            ## @param value Value to set for the allow_team_mentions property.
            ## @return a void
            ## 
            def allow_team_mentions=(value)
                @allow_team_mentions = value
            end
            ## 
            ## Gets the allowUserDeleteMessages property value. If set to true, users can delete their messages.
            ## @return a boolean
            ## 
            def allow_user_delete_messages
                return @allow_user_delete_messages
            end
            ## 
            ## Sets the allowUserDeleteMessages property value. If set to true, users can delete their messages.
            ## @param value Value to set for the allow_user_delete_messages property.
            ## @return a void
            ## 
            def allow_user_delete_messages=(value)
                @allow_user_delete_messages = value
            end
            ## 
            ## Gets the allowUserEditMessages property value. If set to true, users can edit their messages.
            ## @return a boolean
            ## 
            def allow_user_edit_messages
                return @allow_user_edit_messages
            end
            ## 
            ## Sets the allowUserEditMessages property value. If set to true, users can edit their messages.
            ## @param value Value to set for the allow_user_edit_messages property.
            ## @return a void
            ## 
            def allow_user_edit_messages=(value)
                @allow_user_edit_messages = value
            end
            ## 
            ## Instantiates a new teamMessagingSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a team_messaging_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamMessagingSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowChannelMentions" => lambda {|n| @allow_channel_mentions = n.get_boolean_value() },
                    "allowOwnerDeleteMessages" => lambda {|n| @allow_owner_delete_messages = n.get_boolean_value() },
                    "allowTeamMentions" => lambda {|n| @allow_team_mentions = n.get_boolean_value() },
                    "allowUserDeleteMessages" => lambda {|n| @allow_user_delete_messages = n.get_boolean_value() },
                    "allowUserEditMessages" => lambda {|n| @allow_user_edit_messages = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowChannelMentions", @allow_channel_mentions)
                writer.write_boolean_value("allowOwnerDeleteMessages", @allow_owner_delete_messages)
                writer.write_boolean_value("allowTeamMentions", @allow_team_mentions)
                writer.write_boolean_value("allowUserDeleteMessages", @allow_user_delete_messages)
                writer.write_boolean_value("allowUserEditMessages", @allow_user_edit_messages)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
