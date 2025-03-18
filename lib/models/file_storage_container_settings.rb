require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FileStorageContainerSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether versioning is enabled for items in the container. Optional. Read-write.
            @is_item_versioning_enabled
            ## 
            # Indicates whether Optical Character Recognition (OCR) is enabled for the container. The default value is false. When set to true, OCR extraction is performed for new and updated documents of supported document types, and the extracted fields in the metadata of the document enable end-user search and search-driven solutions. When set to false, existing OCR metadata is not impacted. Optional. Read-write.
            @is_ocr_enabled
            ## 
            # The maximum major versions allowed for items in the container. Optional. Read-write.
            @item_major_version_limit
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new FileStorageContainerSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a file_storage_container_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileStorageContainerSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isItemVersioningEnabled" => lambda {|n| @is_item_versioning_enabled = n.get_boolean_value() },
                    "isOcrEnabled" => lambda {|n| @is_ocr_enabled = n.get_boolean_value() },
                    "itemMajorVersionLimit" => lambda {|n| @item_major_version_limit = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isItemVersioningEnabled property value. Indicates whether versioning is enabled for items in the container. Optional. Read-write.
            ## @return a boolean
            ## 
            def is_item_versioning_enabled
                return @is_item_versioning_enabled
            end
            ## 
            ## Sets the isItemVersioningEnabled property value. Indicates whether versioning is enabled for items in the container. Optional. Read-write.
            ## @param value Value to set for the isItemVersioningEnabled property.
            ## @return a void
            ## 
            def is_item_versioning_enabled=(value)
                @is_item_versioning_enabled = value
            end
            ## 
            ## Gets the isOcrEnabled property value. Indicates whether Optical Character Recognition (OCR) is enabled for the container. The default value is false. When set to true, OCR extraction is performed for new and updated documents of supported document types, and the extracted fields in the metadata of the document enable end-user search and search-driven solutions. When set to false, existing OCR metadata is not impacted. Optional. Read-write.
            ## @return a boolean
            ## 
            def is_ocr_enabled
                return @is_ocr_enabled
            end
            ## 
            ## Sets the isOcrEnabled property value. Indicates whether Optical Character Recognition (OCR) is enabled for the container. The default value is false. When set to true, OCR extraction is performed for new and updated documents of supported document types, and the extracted fields in the metadata of the document enable end-user search and search-driven solutions. When set to false, existing OCR metadata is not impacted. Optional. Read-write.
            ## @param value Value to set for the isOcrEnabled property.
            ## @return a void
            ## 
            def is_ocr_enabled=(value)
                @is_ocr_enabled = value
            end
            ## 
            ## Gets the itemMajorVersionLimit property value. The maximum major versions allowed for items in the container. Optional. Read-write.
            ## @return a integer
            ## 
            def item_major_version_limit
                return @item_major_version_limit
            end
            ## 
            ## Sets the itemMajorVersionLimit property value. The maximum major versions allowed for items in the container. Optional. Read-write.
            ## @param value Value to set for the itemMajorVersionLimit property.
            ## @return a void
            ## 
            def item_major_version_limit=(value)
                @item_major_version_limit = value
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
                writer.write_boolean_value("isItemVersioningEnabled", @is_item_versioning_enabled)
                writer.write_boolean_value("isOcrEnabled", @is_ocr_enabled)
                writer.write_number_value("itemMajorVersionLimit", @item_major_version_limit)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
