require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AiInteraction < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The data source for Copilot data. For example, IPM.SkypeTeams.Message.Copilot.Excel or IPM.SkypeTeams.Message.Copilot.Loop.
            @app_class
            ## 
            # The collection of documents attached to the interaction, such as cards and images.
            @attachments
            ## 
            # The body of the message, including the text of the body and its body type.
            @body
            ## 
            # The identifer that maps to all contexts associated with an interaction.
            @contexts
            ## 
            # The type of the conversation. For example, appchat or bizchat.
            @conversation_type
            ## 
            # The time when the interaction was created.
            @created_date_time
            ## 
            # The timestamp of when the interaction was last modified.
            @etag
            ## 
            # The from property
            @from
            ## 
            # The interactionType property
            @interaction_type
            ## 
            # The collection of links that appear in the interaction.
            @links
            ## 
            # The locale of the sender.
            @locale
            ## 
            # The collection of the entities that were mentioned in the interaction, including users, bots, and so on.
            @mentions
            ## 
            # The identifier that groups a user prompt with its Copilot response.
            @request_id
            ## 
            # The thread ID or conversation identifier that maps to all Copilot sessions for the user.
            @session_id
            ## 
            ## Gets the appClass property value. The data source for Copilot data. For example, IPM.SkypeTeams.Message.Copilot.Excel or IPM.SkypeTeams.Message.Copilot.Loop.
            ## @return a string
            ## 
            def app_class
                return @app_class
            end
            ## 
            ## Sets the appClass property value. The data source for Copilot data. For example, IPM.SkypeTeams.Message.Copilot.Excel or IPM.SkypeTeams.Message.Copilot.Loop.
            ## @param value Value to set for the appClass property.
            ## @return a void
            ## 
            def app_class=(value)
                @app_class = value
            end
            ## 
            ## Gets the attachments property value. The collection of documents attached to the interaction, such as cards and images.
            ## @return a ai_interaction_attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. The collection of documents attached to the interaction, such as cards and images.
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the body property value. The body of the message, including the text of the body and its body type.
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The body of the message, including the text of the body and its body type.
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Instantiates a new AiInteraction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contexts property value. The identifer that maps to all contexts associated with an interaction.
            ## @return a ai_interaction_context
            ## 
            def contexts
                return @contexts
            end
            ## 
            ## Sets the contexts property value. The identifer that maps to all contexts associated with an interaction.
            ## @param value Value to set for the contexts property.
            ## @return a void
            ## 
            def contexts=(value)
                @contexts = value
            end
            ## 
            ## Gets the conversationType property value. The type of the conversation. For example, appchat or bizchat.
            ## @return a string
            ## 
            def conversation_type
                return @conversation_type
            end
            ## 
            ## Sets the conversationType property value. The type of the conversation. For example, appchat or bizchat.
            ## @param value Value to set for the conversationType property.
            ## @return a void
            ## 
            def conversation_type=(value)
                @conversation_type = value
            end
            ## 
            ## Gets the createdDateTime property value. The time when the interaction was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time when the interaction was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ai_interaction
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AiInteraction.new
            end
            ## 
            ## Gets the etag property value. The timestamp of when the interaction was last modified.
            ## @return a string
            ## 
            def etag
                return @etag
            end
            ## 
            ## Sets the etag property value. The timestamp of when the interaction was last modified.
            ## @param value Value to set for the etag property.
            ## @return a void
            ## 
            def etag=(value)
                @etag = value
            end
            ## 
            ## Gets the from property value. The from property
            ## @return a identity_set
            ## 
            def from
                return @from
            end
            ## 
            ## Sets the from property value. The from property
            ## @param value Value to set for the from property.
            ## @return a void
            ## 
            def from=(value)
                @from = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appClass" => lambda {|n| @app_class = n.get_string_value() },
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AiInteractionAttachment.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "contexts" => lambda {|n| @contexts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AiInteractionContext.create_from_discriminator_value(pn) }) },
                    "conversationType" => lambda {|n| @conversation_type = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "etag" => lambda {|n| @etag = n.get_string_value() },
                    "from" => lambda {|n| @from = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "interactionType" => lambda {|n| @interaction_type = n.get_enum_value(MicrosoftGraph::Models::AiInteractionType) },
                    "links" => lambda {|n| @links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AiInteractionLink.create_from_discriminator_value(pn) }) },
                    "locale" => lambda {|n| @locale = n.get_string_value() },
                    "mentions" => lambda {|n| @mentions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AiInteractionMention.create_from_discriminator_value(pn) }) },
                    "requestId" => lambda {|n| @request_id = n.get_string_value() },
                    "sessionId" => lambda {|n| @session_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the interactionType property value. The interactionType property
            ## @return a ai_interaction_type
            ## 
            def interaction_type
                return @interaction_type
            end
            ## 
            ## Sets the interactionType property value. The interactionType property
            ## @param value Value to set for the interactionType property.
            ## @return a void
            ## 
            def interaction_type=(value)
                @interaction_type = value
            end
            ## 
            ## Gets the links property value. The collection of links that appear in the interaction.
            ## @return a ai_interaction_link
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. The collection of links that appear in the interaction.
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
            end
            ## 
            ## Gets the locale property value. The locale of the sender.
            ## @return a string
            ## 
            def locale
                return @locale
            end
            ## 
            ## Sets the locale property value. The locale of the sender.
            ## @param value Value to set for the locale property.
            ## @return a void
            ## 
            def locale=(value)
                @locale = value
            end
            ## 
            ## Gets the mentions property value. The collection of the entities that were mentioned in the interaction, including users, bots, and so on.
            ## @return a ai_interaction_mention
            ## 
            def mentions
                return @mentions
            end
            ## 
            ## Sets the mentions property value. The collection of the entities that were mentioned in the interaction, including users, bots, and so on.
            ## @param value Value to set for the mentions property.
            ## @return a void
            ## 
            def mentions=(value)
                @mentions = value
            end
            ## 
            ## Gets the requestId property value. The identifier that groups a user prompt with its Copilot response.
            ## @return a string
            ## 
            def request_id
                return @request_id
            end
            ## 
            ## Sets the requestId property value. The identifier that groups a user prompt with its Copilot response.
            ## @param value Value to set for the requestId property.
            ## @return a void
            ## 
            def request_id=(value)
                @request_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appClass", @app_class)
                writer.write_collection_of_object_values("attachments", @attachments)
                writer.write_object_value("body", @body)
                writer.write_collection_of_object_values("contexts", @contexts)
                writer.write_string_value("conversationType", @conversation_type)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("etag", @etag)
                writer.write_object_value("from", @from)
                writer.write_enum_value("interactionType", @interaction_type)
                writer.write_collection_of_object_values("links", @links)
                writer.write_string_value("locale", @locale)
                writer.write_collection_of_object_values("mentions", @mentions)
                writer.write_string_value("requestId", @request_id)
                writer.write_string_value("sessionId", @session_id)
            end
            ## 
            ## Gets the sessionId property value. The thread ID or conversation identifier that maps to all Copilot sessions for the user.
            ## @return a string
            ## 
            def session_id
                return @session_id
            end
            ## 
            ## Sets the sessionId property value. The thread ID or conversation identifier that maps to all Copilot sessions for the user.
            ## @param value Value to set for the sessionId property.
            ## @return a void
            ## 
            def session_id=(value)
                @session_id = value
            end
        end
    end
end
