require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcDeviceImage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The displayName property
            @display_name
            ## 
            # The errorCode property
            @error_code
            ## 
            # The expirationDate property
            @expiration_date
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The operatingSystem property
            @operating_system
            ## 
            # The osBuildNumber property
            @os_build_number
            ## 
            # The osStatus property
            @os_status
            ## 
            # The sourceImageResourceId property
            @source_image_resource_id
            ## 
            # The status property
            @status
            ## 
            # The version property
            @version
            ## 
            ## Instantiates a new CloudPcDeviceImage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_device_image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcDeviceImage.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the errorCode property value. The errorCode property
            ## @return a cloud_pc_device_image_error_code
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. The errorCode property
            ## @param value Value to set for the errorCode property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## Gets the expirationDate property value. The expirationDate property
            ## @return a date
            ## 
            def expiration_date
                return @expiration_date
            end
            ## 
            ## Sets the expirationDate property value. The expirationDate property
            ## @param value Value to set for the expirationDate property.
            ## @return a void
            ## 
            def expiration_date=(value)
                @expiration_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "errorCode" => lambda {|n| @error_code = n.get_enum_value(MicrosoftGraph::Models::CloudPcDeviceImageErrorCode) },
                    "expirationDate" => lambda {|n| @expiration_date = n.get_date_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "osBuildNumber" => lambda {|n| @os_build_number = n.get_string_value() },
                    "osStatus" => lambda {|n| @os_status = n.get_enum_value(MicrosoftGraph::Models::CloudPcDeviceImageOsStatus) },
                    "sourceImageResourceId" => lambda {|n| @source_image_resource_id = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::CloudPcDeviceImageStatus) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the operatingSystem property value. The operatingSystem property
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The operatingSystem property
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the osBuildNumber property value. The osBuildNumber property
            ## @return a string
            ## 
            def os_build_number
                return @os_build_number
            end
            ## 
            ## Sets the osBuildNumber property value. The osBuildNumber property
            ## @param value Value to set for the osBuildNumber property.
            ## @return a void
            ## 
            def os_build_number=(value)
                @os_build_number = value
            end
            ## 
            ## Gets the osStatus property value. The osStatus property
            ## @return a cloud_pc_device_image_os_status
            ## 
            def os_status
                return @os_status
            end
            ## 
            ## Sets the osStatus property value. The osStatus property
            ## @param value Value to set for the osStatus property.
            ## @return a void
            ## 
            def os_status=(value)
                @os_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("errorCode", @error_code)
                writer.write_date_value("expirationDate", @expiration_date)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_string_value("osBuildNumber", @os_build_number)
                writer.write_enum_value("osStatus", @os_status)
                writer.write_string_value("sourceImageResourceId", @source_image_resource_id)
                writer.write_enum_value("status", @status)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the sourceImageResourceId property value. The sourceImageResourceId property
            ## @return a string
            ## 
            def source_image_resource_id
                return @source_image_resource_id
            end
            ## 
            ## Sets the sourceImageResourceId property value. The sourceImageResourceId property
            ## @param value Value to set for the sourceImageResourceId property.
            ## @return a void
            ## 
            def source_image_resource_id=(value)
                @source_image_resource_id = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a cloud_pc_device_image_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the version property value. The version property
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version property
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
