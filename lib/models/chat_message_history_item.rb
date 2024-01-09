require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessageHistoryItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actions property
            @actions
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date and time when the message was modified.
            @modified_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The reaction in the modified message.
            @reaction
            ## 
            ## Gets the actions property value. The actions property
            ## @return a chat_message_actions
            ## 
            def actions
                return @actions
            end
            ## 
            ## Sets the actions property value. The actions property
            ## @param value Value to set for the actions property.
            ## @return a void
            ## 
            def actions=(value)
                @actions = value
            end
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
            ## Instantiates a new chatMessageHistoryItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_history_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessageHistoryItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actions" => lambda {|n| @actions = n.get_enum_values(MicrosoftGraph::Models::ChatMessageActions) },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reaction" => lambda {|n| @reaction = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessageReaction.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the modifiedDateTime property value. The date and time when the message was modified.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The date and time when the message was modified.
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
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
            ## Gets the reaction property value. The reaction in the modified message.
            ## @return a chat_message_reaction
            ## 
            def reaction
                return @reaction
            end
            ## 
            ## Sets the reaction property value. The reaction in the modified message.
            ## @param value Value to set for the reaction property.
            ## @return a void
            ## 
            def reaction=(value)
                @reaction = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("actions", @actions)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("reaction", @reaction)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
