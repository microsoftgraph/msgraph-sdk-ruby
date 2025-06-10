require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintDocument < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The document's content (MIME) type. Read-only.
            @content_type
            ## 
            # The document's name. Read-only.
            @display_name
            ## 
            # The time the document was downloaded. Read-only
            @downloaded_date_time
            ## 
            # The document's size in bytes. Read-only.
            @size
            ## 
            # The time the document was uploaded. Read-only
            @uploaded_date_time
            ## 
            ## Instantiates a new PrintDocument and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentType property value. The document's content (MIME) type. Read-only.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The document's content (MIME) type. Read-only.
            ## @param value Value to set for the contentType property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a print_document
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintDocument.new
            end
            ## 
            ## Gets the displayName property value. The document's name. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The document's name. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the downloadedDateTime property value. The time the document was downloaded. Read-only
            ## @return a date_time
            ## 
            def downloaded_date_time
                return @downloaded_date_time
            end
            ## 
            ## Sets the downloadedDateTime property value. The time the document was downloaded. Read-only
            ## @param value Value to set for the downloadedDateTime property.
            ## @return a void
            ## 
            def downloaded_date_time=(value)
                @downloaded_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "downloadedDateTime" => lambda {|n| @downloaded_date_time = n.get_date_time_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "uploadedDateTime" => lambda {|n| @uploaded_date_time = n.get_date_time_value() },
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
                writer.write_string_value("contentType", @content_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("downloadedDateTime", @downloaded_date_time)
                writer.write_object_value("size", @size)
                writer.write_date_time_value("uploadedDateTime", @uploaded_date_time)
            end
            ## 
            ## Gets the size property value. The document's size in bytes. Read-only.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The document's size in bytes. Read-only.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the uploadedDateTime property value. The time the document was uploaded. Read-only
            ## @return a date_time
            ## 
            def uploaded_date_time
                return @uploaded_date_time
            end
            ## 
            ## Sets the uploadedDateTime property value. The time the document was uploaded. Read-only
            ## @param value Value to set for the uploadedDateTime property.
            ## @return a void
            ## 
            def uploaded_date_time=(value)
                @uploaded_date_time = value
            end
        end
    end
end
