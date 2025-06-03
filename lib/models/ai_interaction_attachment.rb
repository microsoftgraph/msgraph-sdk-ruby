require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AiInteractionAttachment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier for the attachment. This identifier is only unique within the message scope.
            @attachment_id
            ## 
            # The content of the attachment.
            @content
            ## 
            # The type of the content. For example, reference, file, and image/imageType.
            @content_type
            ## 
            # The URL of the content.
            @content_url
            ## 
            # The name of the attachment.
            @name
            ## 
            ## Gets the attachmentId property value. The identifier for the attachment. This identifier is only unique within the message scope.
            ## @return a string
            ## 
            def attachment_id
                return @attachment_id
            end
            ## 
            ## Sets the attachmentId property value. The identifier for the attachment. This identifier is only unique within the message scope.
            ## @param value Value to set for the attachmentId property.
            ## @return a void
            ## 
            def attachment_id=(value)
                @attachment_id = value
            end
            ## 
            ## Instantiates a new AiInteractionAttachment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content of the attachment.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content of the attachment.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the contentType property value. The type of the content. For example, reference, file, and image/imageType.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The type of the content. For example, reference, file, and image/imageType.
            ## @param value Value to set for the contentType property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Gets the contentUrl property value. The URL of the content.
            ## @return a string
            ## 
            def content_url
                return @content_url
            end
            ## 
            ## Sets the contentUrl property value. The URL of the content.
            ## @param value Value to set for the contentUrl property.
            ## @return a void
            ## 
            def content_url=(value)
                @content_url = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ai_interaction_attachment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AiInteractionAttachment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attachmentId" => lambda {|n| @attachment_id = n.get_string_value() },
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "contentUrl" => lambda {|n| @content_url = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. The name of the attachment.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the attachment.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("attachmentId", @attachment_id)
                writer.write_string_value("content", @content)
                writer.write_string_value("contentType", @content_type)
                writer.write_string_value("contentUrl", @content_url)
                writer.write_string_value("name", @name)
            end
        end
    end
end
