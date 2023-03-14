require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FileAttachment < MicrosoftGraph::Models::Attachment
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The base64-encoded contents of the file.
            @content_bytes
            ## 
            # The ID of the attachment in the Exchange store.
            @content_id
            ## 
            # Do not use this property as it is not supported.
            @content_location
            ## 
            ## Instantiates a new FileAttachment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.fileAttachment"
            end
            ## 
            ## Gets the contentBytes property value. The base64-encoded contents of the file.
            ## @return a base64url
            ## 
            def content_bytes
                return @content_bytes
            end
            ## 
            ## Sets the contentBytes property value. The base64-encoded contents of the file.
            ## @param value Value to set for the content_bytes property.
            ## @return a void
            ## 
            def content_bytes=(value)
                @content_bytes = value
            end
            ## 
            ## Gets the contentId property value. The ID of the attachment in the Exchange store.
            ## @return a string
            ## 
            def content_id
                return @content_id
            end
            ## 
            ## Sets the contentId property value. The ID of the attachment in the Exchange store.
            ## @param value Value to set for the content_id property.
            ## @return a void
            ## 
            def content_id=(value)
                @content_id = value
            end
            ## 
            ## Gets the contentLocation property value. Do not use this property as it is not supported.
            ## @return a string
            ## 
            def content_location
                return @content_location
            end
            ## 
            ## Sets the contentLocation property value. Do not use this property as it is not supported.
            ## @param value Value to set for the content_location property.
            ## @return a void
            ## 
            def content_location=(value)
                @content_location = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a file_attachment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileAttachment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentBytes" => lambda {|n| @content_bytes = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "contentId" => lambda {|n| @content_id = n.get_string_value() },
                    "contentLocation" => lambda {|n| @content_location = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("contentBytes", @content_bytes)
                writer.write_string_value("contentId", @content_id)
                writer.write_string_value("contentLocation", @content_location)
            end
        end
    end
end
