require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessageAttachment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The content of the attachment. If the attachment is a rich card, set the property to the rich card object. This property and contentUrl are mutually exclusive.
            @content
            ## 
            # The media type of the content attachment. It can have the following values: reference: Attachment is a link to another file. Populate the contentURL with the link to the object.Any contentTypes supported by the Bot Framework's Attachment objectapplication/vnd.microsoft.card.codesnippet: A code snippet. application/vnd.microsoft.card.announcement: An announcement header.
            @content_type
            ## 
            # URL for the content of the attachment. Supported protocols: http, https, file and data.
            @content_url
            ## 
            # Read-only. Unique id of the attachment.
            @id
            ## 
            # Name of the attachment.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The ID of the Teams app that is associated with the attachment. The property is specifically used to attribute a Teams message card to the specified app.
            @teams_app_id
            ## 
            # URL to a thumbnail image that the channel can use if it supports using an alternative, smaller form of content or contentUrl. For example, if you set contentType to application/word and set contentUrl to the location of the Word document, you might include a thumbnail image that represents the document. The channel could display the thumbnail image instead of the document. When the user clicks the image, the channel would open the document.
            @thumbnail_url
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
            ## Instantiates a new chatMessageAttachment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. The content of the attachment. If the attachment is a rich card, set the property to the rich card object. This property and contentUrl are mutually exclusive.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content of the attachment. If the attachment is a rich card, set the property to the rich card object. This property and contentUrl are mutually exclusive.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the contentType property value. The media type of the content attachment. It can have the following values: reference: Attachment is a link to another file. Populate the contentURL with the link to the object.Any contentTypes supported by the Bot Framework's Attachment objectapplication/vnd.microsoft.card.codesnippet: A code snippet. application/vnd.microsoft.card.announcement: An announcement header.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The media type of the content attachment. It can have the following values: reference: Attachment is a link to another file. Populate the contentURL with the link to the object.Any contentTypes supported by the Bot Framework's Attachment objectapplication/vnd.microsoft.card.codesnippet: A code snippet. application/vnd.microsoft.card.announcement: An announcement header.
            ## @param value Value to set for the content_type property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Gets the contentUrl property value. URL for the content of the attachment. Supported protocols: http, https, file and data.
            ## @return a string
            ## 
            def content_url
                return @content_url
            end
            ## 
            ## Sets the contentUrl property value. URL for the content of the attachment. Supported protocols: http, https, file and data.
            ## @param value Value to set for the content_url property.
            ## @return a void
            ## 
            def content_url=(value)
                @content_url = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_attachment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessageAttachment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "contentUrl" => lambda {|n| @content_url = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "teamsAppId" => lambda {|n| @teams_app_id = n.get_string_value() },
                    "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Read-only. Unique id of the attachment.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Read-only. Unique id of the attachment.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the name property value. Name of the attachment.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the attachment.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
                writer.write_string_value("content", @content)
                writer.write_string_value("contentType", @content_type)
                writer.write_string_value("contentUrl", @content_url)
                writer.write_string_value("id", @id)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("teamsAppId", @teams_app_id)
                writer.write_string_value("thumbnailUrl", @thumbnail_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the teamsAppId property value. The ID of the Teams app that is associated with the attachment. The property is specifically used to attribute a Teams message card to the specified app.
            ## @return a string
            ## 
            def teams_app_id
                return @teams_app_id
            end
            ## 
            ## Sets the teamsAppId property value. The ID of the Teams app that is associated with the attachment. The property is specifically used to attribute a Teams message card to the specified app.
            ## @param value Value to set for the teams_app_id property.
            ## @return a void
            ## 
            def teams_app_id=(value)
                @teams_app_id = value
            end
            ## 
            ## Gets the thumbnailUrl property value. URL to a thumbnail image that the channel can use if it supports using an alternative, smaller form of content or contentUrl. For example, if you set contentType to application/word and set contentUrl to the location of the Word document, you might include a thumbnail image that represents the document. The channel could display the thumbnail image instead of the document. When the user clicks the image, the channel would open the document.
            ## @return a string
            ## 
            def thumbnail_url
                return @thumbnail_url
            end
            ## 
            ## Sets the thumbnailUrl property value. URL to a thumbnail image that the channel can use if it supports using an alternative, smaller form of content or contentUrl. For example, if you set contentType to application/word and set contentUrl to the location of the Word document, you might include a thumbnail image that represents the document. The channel could display the thumbnail image instead of the document. When the user clicks the image, the channel would open the document.
            ## @param value Value to set for the thumbnail_url property.
            ## @return a void
            ## 
            def thumbnail_url=(value)
                @thumbnail_url = value
            end
        end
    end
end
