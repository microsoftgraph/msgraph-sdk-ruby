require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityExportFileMetadata
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The downloadUrl property
            @download_url
            ## 
            # The fileName property
            @file_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The size property
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new securityExportFileMetadata and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_export_file_metadata
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityExportFileMetadata.new
            end
            ## 
            ## Gets the downloadUrl property value. The downloadUrl property
            ## @return a string
            ## 
            def download_url
                return @download_url
            end
            ## 
            ## Sets the downloadUrl property value. The downloadUrl property
            ## @param value Value to set for the downloadUrl property.
            ## @return a void
            ## 
            def download_url=(value)
                @download_url = value
            end
            ## 
            ## Gets the fileName property value. The fileName property
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. The fileName property
            ## @param value Value to set for the fileName property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "downloadUrl" => lambda {|n| @download_url = n.get_string_value() },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
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
                writer.write_string_value("downloadUrl", @download_url)
                writer.write_string_value("fileName", @file_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("size", @size)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the size property value. The size property
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The size property
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
        end
    end
end
