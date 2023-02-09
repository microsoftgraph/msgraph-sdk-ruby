require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DocumentSetContent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Content type information of the file.
            @content_type
            ## 
            # Name of the file in resource folder that should be added as a default content or a template in the document set.
            @file_name
            ## 
            # Folder name in which the file will be placed when a new document set is created in the library.
            @folder_name
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
            ## Instantiates a new documentSetContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentType property value. Content type information of the file.
            ## @return a content_type_info
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. Content type information of the file.
            ## @param value Value to set for the content_type property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a document_set_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DocumentSetContent.new
            end
            ## 
            ## Gets the fileName property value. Name of the file in resource folder that should be added as a default content or a template in the document set.
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. Name of the file in resource folder that should be added as a default content or a template in the document set.
            ## @param value Value to set for the file_name property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## Gets the folderName property value. Folder name in which the file will be placed when a new document set is created in the library.
            ## @return a string
            ## 
            def folder_name
                return @folder_name
            end
            ## 
            ## Sets the folderName property value. Folder name in which the file will be placed when a new document set is created in the library.
            ## @param value Value to set for the folder_name property.
            ## @return a void
            ## 
            def folder_name=(value)
                @folder_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contentType" => lambda {|n| @content_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ContentTypeInfo.create_from_discriminator_value(pn) }) },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "folderName" => lambda {|n| @folder_name = n.get_string_value() },
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
                writer.write_object_value("contentType", @content_type)
                writer.write_string_value("fileName", @file_name)
                writer.write_string_value("folderName", @folder_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
