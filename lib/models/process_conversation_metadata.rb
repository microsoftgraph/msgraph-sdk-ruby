require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProcessConversationMetadata < MicrosoftGraph::Models::ProcessContentMetadataBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of resources (for example, file URLs, web URLs) accessed during the generation of this message (relevant for bot interactions).
            @accessed_resources
            ## 
            # Identifier of the parent message in a threaded conversation, if applicable.
            @parent_message_id
            ## 
            # List of plugins used during the generation of this message (relevant for AI/bot interactions).
            @plugins
            ## 
            ## Gets the accessedResources property value. List of resources (for example, file URLs, web URLs) accessed during the generation of this message (relevant for bot interactions).
            ## @return a string
            ## 
            def accessed_resources
                return @accessed_resources
            end
            ## 
            ## Sets the accessedResources property value. List of resources (for example, file URLs, web URLs) accessed during the generation of this message (relevant for bot interactions).
            ## @param value Value to set for the accessedResources property.
            ## @return a void
            ## 
            def accessed_resources=(value)
                @accessed_resources = value
            end
            ## 
            ## Instantiates a new ProcessConversationMetadata and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.processConversationMetadata"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a process_conversation_metadata
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProcessConversationMetadata.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessedResources" => lambda {|n| @accessed_resources = n.get_collection_of_primitive_values(String) },
                    "parentMessageId" => lambda {|n| @parent_message_id = n.get_string_value() },
                    "plugins" => lambda {|n| @plugins = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AiInteractionPlugin.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the parentMessageId property value. Identifier of the parent message in a threaded conversation, if applicable.
            ## @return a string
            ## 
            def parent_message_id
                return @parent_message_id
            end
            ## 
            ## Sets the parentMessageId property value. Identifier of the parent message in a threaded conversation, if applicable.
            ## @param value Value to set for the parentMessageId property.
            ## @return a void
            ## 
            def parent_message_id=(value)
                @parent_message_id = value
            end
            ## 
            ## Gets the plugins property value. List of plugins used during the generation of this message (relevant for AI/bot interactions).
            ## @return a ai_interaction_plugin
            ## 
            def plugins
                return @plugins
            end
            ## 
            ## Sets the plugins property value. List of plugins used during the generation of this message (relevant for AI/bot interactions).
            ## @param value Value to set for the plugins property.
            ## @return a void
            ## 
            def plugins=(value)
                @plugins = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("accessedResources", @accessed_resources)
                writer.write_string_value("parentMessageId", @parent_message_id)
                writer.write_collection_of_object_values("plugins", @plugins)
            end
        end
    end
end
