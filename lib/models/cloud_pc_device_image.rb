require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcDeviceImage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the associated device image. The device image display name and the version are used to uniquely identify the Cloud PC device image. Read-only.
            @display_name
            ## 
            # The error code of the status of the image that indicates why the upload failed, if applicable. Possible values are: internalServerError, sourceImageNotFound, osVersionNotSupported, sourceImageInvalid, sourceImageNotGeneralized, unknownFutureValue, vmAlreadyAzureAdJoined, paidSourceImageNotSupport, sourceImageNotSupportCustomizeVMName, sourceImageSizeExceedsLimitation. Use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: vmAlreadyAzureAdJoined, paidSourceImageNotSupport, sourceImageNotSupportCustomizeVMName, sourceImageSizeExceedsLimitation. Read-only.
            @error_code
            ## 
            # The date when the image became unavailable. Read-only.
            @expiration_date
            ## 
            # The data and time when the image was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @last_modified_date_time
            ## 
            # The operating system (OS) of the image. For example, Windows 10 Enterprise. Read-only.
            @operating_system
            ## 
            # The OS build version of the image. For example, 1909. Read-only.
            @os_build_number
            ## 
            # The OS status of this image. Possible values are: supported, supportedWithWarning, unknown, unknownFutureValue. The default value is unknown. Read-only.
            @os_status
            ## 
            # The unique identifier (ID) of the source image resource on Azure. The required ID format is: '/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}'. Read-only.
            @source_image_resource_id
            ## 
            # The status of the image on the Cloud PC. Possible values are: pending, ready, failed, unknownFutureValue. Read-only.
            @status
            ## 
            # The image version. For example, 0.0.1 and 1.5.13. Read-only.
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
            ## Gets the displayName property value. The display name of the associated device image. The device image display name and the version are used to uniquely identify the Cloud PC device image. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the associated device image. The device image display name and the version are used to uniquely identify the Cloud PC device image. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the errorCode property value. The error code of the status of the image that indicates why the upload failed, if applicable. Possible values are: internalServerError, sourceImageNotFound, osVersionNotSupported, sourceImageInvalid, sourceImageNotGeneralized, unknownFutureValue, vmAlreadyAzureAdJoined, paidSourceImageNotSupport, sourceImageNotSupportCustomizeVMName, sourceImageSizeExceedsLimitation. Use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: vmAlreadyAzureAdJoined, paidSourceImageNotSupport, sourceImageNotSupportCustomizeVMName, sourceImageSizeExceedsLimitation. Read-only.
            ## @return a cloud_pc_device_image_error_code
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. The error code of the status of the image that indicates why the upload failed, if applicable. Possible values are: internalServerError, sourceImageNotFound, osVersionNotSupported, sourceImageInvalid, sourceImageNotGeneralized, unknownFutureValue, vmAlreadyAzureAdJoined, paidSourceImageNotSupport, sourceImageNotSupportCustomizeVMName, sourceImageSizeExceedsLimitation. Use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: vmAlreadyAzureAdJoined, paidSourceImageNotSupport, sourceImageNotSupportCustomizeVMName, sourceImageSizeExceedsLimitation. Read-only.
            ## @param value Value to set for the errorCode property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## Gets the expirationDate property value. The date when the image became unavailable. Read-only.
            ## @return a date
            ## 
            def expiration_date
                return @expiration_date
            end
            ## 
            ## Sets the expirationDate property value. The date when the image became unavailable. Read-only.
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
            ## Gets the lastModifiedDateTime property value. The data and time when the image was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The data and time when the image was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the operatingSystem property value. The operating system (OS) of the image. For example, Windows 10 Enterprise. Read-only.
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The operating system (OS) of the image. For example, Windows 10 Enterprise. Read-only.
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the osBuildNumber property value. The OS build version of the image. For example, 1909. Read-only.
            ## @return a string
            ## 
            def os_build_number
                return @os_build_number
            end
            ## 
            ## Sets the osBuildNumber property value. The OS build version of the image. For example, 1909. Read-only.
            ## @param value Value to set for the osBuildNumber property.
            ## @return a void
            ## 
            def os_build_number=(value)
                @os_build_number = value
            end
            ## 
            ## Gets the osStatus property value. The OS status of this image. Possible values are: supported, supportedWithWarning, unknown, unknownFutureValue. The default value is unknown. Read-only.
            ## @return a cloud_pc_device_image_os_status
            ## 
            def os_status
                return @os_status
            end
            ## 
            ## Sets the osStatus property value. The OS status of this image. Possible values are: supported, supportedWithWarning, unknown, unknownFutureValue. The default value is unknown. Read-only.
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
            ## Gets the sourceImageResourceId property value. The unique identifier (ID) of the source image resource on Azure. The required ID format is: '/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}'. Read-only.
            ## @return a string
            ## 
            def source_image_resource_id
                return @source_image_resource_id
            end
            ## 
            ## Sets the sourceImageResourceId property value. The unique identifier (ID) of the source image resource on Azure. The required ID format is: '/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}'. Read-only.
            ## @param value Value to set for the sourceImageResourceId property.
            ## @return a void
            ## 
            def source_image_resource_id=(value)
                @source_image_resource_id = value
            end
            ## 
            ## Gets the status property value. The status of the image on the Cloud PC. Possible values are: pending, ready, failed, unknownFutureValue. Read-only.
            ## @return a cloud_pc_device_image_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the image on the Cloud PC. Possible values are: pending, ready, failed, unknownFutureValue. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the version property value. The image version. For example, 0.0.1 and 1.5.13. Read-only.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The image version. For example, 0.0.1 and 1.5.13. Read-only.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
