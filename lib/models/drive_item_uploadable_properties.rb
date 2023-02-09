require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DriveItemUploadableProperties
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Provides a user-visible description of the item. Read-write. Only on OneDrive Personal.
            @description
            ## 
            # Provides an expected file size to perform a quota check prior to upload. Only on OneDrive Personal.
            @file_size
            ## 
            # File system information on client. Read-write.
            @file_system_info
            ## 
            # The name of the item (filename and extension). Read-write.
            @name
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
            ## Instantiates a new driveItemUploadableProperties and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a drive_item_uploadable_properties
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveItemUploadableProperties.new
            end
            ## 
            ## Gets the description property value. Provides a user-visible description of the item. Read-write. Only on OneDrive Personal.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Provides a user-visible description of the item. Read-write. Only on OneDrive Personal.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the fileSize property value. Provides an expected file size to perform a quota check prior to upload. Only on OneDrive Personal.
            ## @return a int64
            ## 
            def file_size
                return @file_size
            end
            ## 
            ## Sets the fileSize property value. Provides an expected file size to perform a quota check prior to upload. Only on OneDrive Personal.
            ## @param value Value to set for the file_size property.
            ## @return a void
            ## 
            def file_size=(value)
                @file_size = value
            end
            ## 
            ## Gets the fileSystemInfo property value. File system information on client. Read-write.
            ## @return a file_system_info
            ## 
            def file_system_info
                return @file_system_info
            end
            ## 
            ## Sets the fileSystemInfo property value. File system information on client. Read-write.
            ## @param value Value to set for the file_system_info property.
            ## @return a void
            ## 
            def file_system_info=(value)
                @file_system_info = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "fileSize" => lambda {|n| @file_size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "fileSystemInfo" => lambda {|n| @file_system_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileSystemInfo.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. The name of the item (filename and extension). Read-write.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the item (filename and extension). Read-write.
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
                writer.write_string_value("description", @description)
                writer.write_object_value("fileSize", @file_size)
                writer.write_object_value("fileSystemInfo", @file_system_info)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
