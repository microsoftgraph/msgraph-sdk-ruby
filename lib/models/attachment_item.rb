require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttachmentItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of attachment. Possible values are: file, item, reference. Required.
            @attachment_type
            ## 
            # The CID or Content-Id of the attachment for referencing in case of in-line attachments using <img src='cid:contentId'> tag in HTML messages. Optional.
            @content_id
            ## 
            # The nature of the data in the attachment. Optional.
            @content_type
            ## 
            # true if the attachment is an inline attachment; otherwise, false. Optional.
            @is_inline
            ## 
            # The display name of the attachment. This can be a descriptive string and does not have to be the actual file name. Required.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The length of the attachment in bytes. Required.
            @size
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
            ## Gets the attachmentType property value. The type of attachment. Possible values are: file, item, reference. Required.
            ## @return a attachment_type
            ## 
            def attachment_type
                return @attachment_type
            end
            ## 
            ## Sets the attachmentType property value. The type of attachment. Possible values are: file, item, reference. Required.
            ## @param value Value to set for the attachment_type property.
            ## @return a void
            ## 
            def attachment_type=(value)
                @attachment_type = value
            end
            ## 
            ## Instantiates a new attachmentItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentId property value. The CID or Content-Id of the attachment for referencing in case of in-line attachments using <img src='cid:contentId'> tag in HTML messages. Optional.
            ## @return a string
            ## 
            def content_id
                return @content_id
            end
            ## 
            ## Sets the contentId property value. The CID or Content-Id of the attachment for referencing in case of in-line attachments using <img src='cid:contentId'> tag in HTML messages. Optional.
            ## @param value Value to set for the content_id property.
            ## @return a void
            ## 
            def content_id=(value)
                @content_id = value
            end
            ## 
            ## Gets the contentType property value. The nature of the data in the attachment. Optional.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The nature of the data in the attachment. Optional.
            ## @param value Value to set for the content_type property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attachment_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttachmentItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attachmentType" => lambda {|n| @attachment_type = n.get_enum_value(MicrosoftGraph::Models::AttachmentType) },
                    "contentId" => lambda {|n| @content_id = n.get_string_value() },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "isInline" => lambda {|n| @is_inline = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isInline property value. true if the attachment is an inline attachment; otherwise, false. Optional.
            ## @return a boolean
            ## 
            def is_inline
                return @is_inline
            end
            ## 
            ## Sets the isInline property value. true if the attachment is an inline attachment; otherwise, false. Optional.
            ## @param value Value to set for the is_inline property.
            ## @return a void
            ## 
            def is_inline=(value)
                @is_inline = value
            end
            ## 
            ## Gets the name property value. The display name of the attachment. This can be a descriptive string and does not have to be the actual file name. Required.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The display name of the attachment. This can be a descriptive string and does not have to be the actual file name. Required.
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
                writer.write_enum_value("attachmentType", @attachment_type)
                writer.write_string_value("contentId", @content_id)
                writer.write_string_value("contentType", @content_type)
                writer.write_boolean_value("isInline", @is_inline)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("size", @size)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the size property value. The length of the attachment in bytes. Required.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The length of the attachment in bytes. Required.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
        end
    end
end
