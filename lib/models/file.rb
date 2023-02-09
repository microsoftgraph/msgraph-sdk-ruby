require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class File
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Hashes of the file's binary content, if available. Read-only.
            @hashes
            ## 
            # The MIME type for the file. This is determined by logic on the server and might not be the value provided when the file was uploaded. Read-only.
            @mime_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The processingMetadata property
            @processing_metadata
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
            ## Instantiates a new file and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a file
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return File.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "hashes" => lambda {|n| @hashes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Hashes.create_from_discriminator_value(pn) }) },
                    "mimeType" => lambda {|n| @mime_type = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "processingMetadata" => lambda {|n| @processing_metadata = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the hashes property value. Hashes of the file's binary content, if available. Read-only.
            ## @return a hashes
            ## 
            def hashes
                return @hashes
            end
            ## 
            ## Sets the hashes property value. Hashes of the file's binary content, if available. Read-only.
            ## @param value Value to set for the hashes property.
            ## @return a void
            ## 
            def hashes=(value)
                @hashes = value
            end
            ## 
            ## Gets the mimeType property value. The MIME type for the file. This is determined by logic on the server and might not be the value provided when the file was uploaded. Read-only.
            ## @return a string
            ## 
            def mime_type
                return @mime_type
            end
            ## 
            ## Sets the mimeType property value. The MIME type for the file. This is determined by logic on the server and might not be the value provided when the file was uploaded. Read-only.
            ## @param value Value to set for the mime_type property.
            ## @return a void
            ## 
            def mime_type=(value)
                @mime_type = value
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
            ## Gets the processingMetadata property value. The processingMetadata property
            ## @return a boolean
            ## 
            def processing_metadata
                return @processing_metadata
            end
            ## 
            ## Sets the processingMetadata property value. The processingMetadata property
            ## @param value Value to set for the processing_metadata property.
            ## @return a void
            ## 
            def processing_metadata=(value)
                @processing_metadata = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("hashes", @hashes)
                writer.write_string_value("mimeType", @mime_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("processingMetadata", @processing_metadata)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
