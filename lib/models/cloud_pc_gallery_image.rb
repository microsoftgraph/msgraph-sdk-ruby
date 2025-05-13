require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcGalleryImage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of this gallery image. For example, Windows 11 Enterprise + Microsoft 365 Apps 22H2. Read-only.
            @display_name
            ## 
            # The date when the status of the image becomes supportedWithWarning. Users can still provision new Cloud PCs if the current time is later than endDate and earlier than expirationDate. For example, assume the endDate of a gallery image is 2023-9-14 and expirationDate is 2024-3-14, users are able to provision new Cloud PCs if today is 2023-10-01. Read-only.
            @end_date
            ## 
            # The date when the image is no longer available. Users are unable to provision new Cloud PCs if the current time is later than expirationDate. The value is usually endDate plus six months. For example, if the startDate is 2025-10-14, the expirationDate is usually 2026-04-14. Read-only.
            @expiration_date
            ## 
            # The offer name of this gallery image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            @offer_name
            ## 
            # The publisher name of this gallery image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            @publisher_name
            ## 
            # Indicates the size of this image in gigabytes. For example, 64. Read-only.
            @size_in_g_b
            ## 
            # The SKU name of this image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            @sku_name
            ## 
            # The date when the Cloud PC image is available for provisioning new Cloud PCs. For example, 2022-09-20. Read-only.
            @start_date
            ## 
            # The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. The default value is supported. Read-only.
            @status
            ## 
            ## Instantiates a new CloudPcGalleryImage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_gallery_image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcGalleryImage.new
            end
            ## 
            ## Gets the displayName property value. The display name of this gallery image. For example, Windows 11 Enterprise + Microsoft 365 Apps 22H2. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of this gallery image. For example, Windows 11 Enterprise + Microsoft 365 Apps 22H2. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDate property value. The date when the status of the image becomes supportedWithWarning. Users can still provision new Cloud PCs if the current time is later than endDate and earlier than expirationDate. For example, assume the endDate of a gallery image is 2023-9-14 and expirationDate is 2024-3-14, users are able to provision new Cloud PCs if today is 2023-10-01. Read-only.
            ## @return a date
            ## 
            def end_date
                return @end_date
            end
            ## 
            ## Sets the endDate property value. The date when the status of the image becomes supportedWithWarning. Users can still provision new Cloud PCs if the current time is later than endDate and earlier than expirationDate. For example, assume the endDate of a gallery image is 2023-9-14 and expirationDate is 2024-3-14, users are able to provision new Cloud PCs if today is 2023-10-01. Read-only.
            ## @param value Value to set for the endDate property.
            ## @return a void
            ## 
            def end_date=(value)
                @end_date = value
            end
            ## 
            ## Gets the expirationDate property value. The date when the image is no longer available. Users are unable to provision new Cloud PCs if the current time is later than expirationDate. The value is usually endDate plus six months. For example, if the startDate is 2025-10-14, the expirationDate is usually 2026-04-14. Read-only.
            ## @return a date
            ## 
            def expiration_date
                return @expiration_date
            end
            ## 
            ## Sets the expirationDate property value. The date when the image is no longer available. Users are unable to provision new Cloud PCs if the current time is later than expirationDate. The value is usually endDate plus six months. For example, if the startDate is 2025-10-14, the expirationDate is usually 2026-04-14. Read-only.
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
                    "endDate" => lambda {|n| @end_date = n.get_date_value() },
                    "expirationDate" => lambda {|n| @expiration_date = n.get_date_value() },
                    "offerName" => lambda {|n| @offer_name = n.get_string_value() },
                    "publisherName" => lambda {|n| @publisher_name = n.get_string_value() },
                    "sizeInGB" => lambda {|n| @size_in_g_b = n.get_number_value() },
                    "skuName" => lambda {|n| @sku_name = n.get_string_value() },
                    "startDate" => lambda {|n| @start_date = n.get_date_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::CloudPcGalleryImageStatus) },
                })
            end
            ## 
            ## Gets the offerName property value. The offer name of this gallery image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            ## @return a string
            ## 
            def offer_name
                return @offer_name
            end
            ## 
            ## Sets the offerName property value. The offer name of this gallery image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            ## @param value Value to set for the offerName property.
            ## @return a void
            ## 
            def offer_name=(value)
                @offer_name = value
            end
            ## 
            ## Gets the publisherName property value. The publisher name of this gallery image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            ## @return a string
            ## 
            def publisher_name
                return @publisher_name
            end
            ## 
            ## Sets the publisherName property value. The publisher name of this gallery image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            ## @param value Value to set for the publisherName property.
            ## @return a void
            ## 
            def publisher_name=(value)
                @publisher_name = value
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
                writer.write_date_value("endDate", @end_date)
                writer.write_date_value("expirationDate", @expiration_date)
                writer.write_string_value("offerName", @offer_name)
                writer.write_string_value("publisherName", @publisher_name)
                writer.write_number_value("sizeInGB", @size_in_g_b)
                writer.write_string_value("skuName", @sku_name)
                writer.write_date_value("startDate", @start_date)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the sizeInGB property value. Indicates the size of this image in gigabytes. For example, 64. Read-only.
            ## @return a integer
            ## 
            def size_in_g_b
                return @size_in_g_b
            end
            ## 
            ## Sets the sizeInGB property value. Indicates the size of this image in gigabytes. For example, 64. Read-only.
            ## @param value Value to set for the sizeInGB property.
            ## @return a void
            ## 
            def size_in_g_b=(value)
                @size_in_g_b = value
            end
            ## 
            ## Gets the skuName property value. The SKU name of this image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            ## @return a string
            ## 
            def sku_name
                return @sku_name
            end
            ## 
            ## Sets the skuName property value. The SKU name of this image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.
            ## @param value Value to set for the skuName property.
            ## @return a void
            ## 
            def sku_name=(value)
                @sku_name = value
            end
            ## 
            ## Gets the startDate property value. The date when the Cloud PC image is available for provisioning new Cloud PCs. For example, 2022-09-20. Read-only.
            ## @return a date
            ## 
            def start_date
                return @start_date
            end
            ## 
            ## Sets the startDate property value. The date when the Cloud PC image is available for provisioning new Cloud PCs. For example, 2022-09-20. Read-only.
            ## @param value Value to set for the startDate property.
            ## @return a void
            ## 
            def start_date=(value)
                @start_date = value
            end
            ## 
            ## Gets the status property value. The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. The default value is supported. Read-only.
            ## @return a cloud_pc_gallery_image_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. The default value is supported. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
