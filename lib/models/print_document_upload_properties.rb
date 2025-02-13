require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintDocumentUploadProperties
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The document's content (MIME) type.
            @content_type
            ## 
            # The document's name.
            @document_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The document's size in bytes.
            @size
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
            ## Instantiates a new PrintDocumentUploadProperties and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentType property value. The document's content (MIME) type.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The document's content (MIME) type.
            ## @param value Value to set for the contentType property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a print_document_upload_properties
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintDocumentUploadProperties.new
            end
            ## 
            ## Gets the documentName property value. The document's name.
            ## @return a string
            ## 
            def document_name
                return @document_name
            end
            ## 
            ## Sets the documentName property value. The document's name.
            ## @param value Value to set for the documentName property.
            ## @return a void
            ## 
            def document_name=(value)
                @document_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "documentName" => lambda {|n| @document_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_string_value("contentType", @content_type)
                writer.write_string_value("documentName", @document_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("size", @size)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the size property value. The document's size in bytes.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The document's size in bytes.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
        end
    end
end
