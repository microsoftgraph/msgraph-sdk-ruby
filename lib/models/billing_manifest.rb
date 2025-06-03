require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class .models.partners.billingManifest < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The total file count for this partner tenant ID.
            @blob_count
            ## 
            # A collection of blob objects that contain details of all the files for the partner tenant ID.
            @blobs
            ## 
            # The date and time when a manifest resource was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The billing data file format. The possible value is: compressedJSONLines. Each blob is a compressed file and data in the file is in JSON lines format. Decompress the file to access the data.
            @data_format
            ## 
            # Version of data represented by the manifest. Any change in eTag indicates a new data version.
            @e_tag
            ## 
            # Indicates the division of data. If a given partition has more than the supported number, the data is split into multiple files, each file representing a specific partitionValue. By default, the data in the file is partitioned by the number of line items.
            @partition_type
            ## 
            # The Microsoft Entra tenant ID of the partner.
            @partner_tenant_id
            ## 
            # The root directory that contains all the files.
            @root_directory
            ## 
            # The SAS token for accessing the directory or an individual file in the directory.
            @sas_token
            ## 
            # The version of the manifest schema.
            @schema_version
            ## 
            ## Gets the blobCount property value. The total file count for this partner tenant ID.
            ## @return a integer
            ## 
            def blob_count
                return @blob_count
            end
            ## 
            ## Sets the blobCount property value. The total file count for this partner tenant ID.
            ## @param value Value to set for the blobCount property.
            ## @return a void
            ## 
            def blob_count=(value)
                @blob_count = value
            end
            ## 
            ## Gets the blobs property value. A collection of blob objects that contain details of all the files for the partner tenant ID.
            ## @return a .models.partners.billing_blob
            ## 
            def blobs
                return @blobs
            end
            ## 
            ## Sets the blobs property value. A collection of blob objects that contain details of all the files for the partner tenant ID.
            ## @param value Value to set for the blobs property.
            ## @return a void
            ## 
            def blobs=(value)
                @blobs = value
            end
            ## 
            ## Instantiates a new .models.partners.billingManifest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when a manifest resource was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when a manifest resource was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a .models.partners.billing_manifest
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return .models.partners.billingManifest.new
            end
            ## 
            ## Gets the dataFormat property value. The billing data file format. The possible value is: compressedJSONLines. Each blob is a compressed file and data in the file is in JSON lines format. Decompress the file to access the data.
            ## @return a string
            ## 
            def data_format
                return @data_format
            end
            ## 
            ## Sets the dataFormat property value. The billing data file format. The possible value is: compressedJSONLines. Each blob is a compressed file and data in the file is in JSON lines format. Decompress the file to access the data.
            ## @param value Value to set for the dataFormat property.
            ## @return a void
            ## 
            def data_format=(value)
                @data_format = value
            end
            ## 
            ## Gets the eTag property value. Version of data represented by the manifest. Any change in eTag indicates a new data version.
            ## @return a string
            ## 
            def e_tag
                return @e_tag
            end
            ## 
            ## Sets the eTag property value. Version of data represented by the manifest. Any change in eTag indicates a new data version.
            ## @param value Value to set for the eTag property.
            ## @return a void
            ## 
            def e_tag=(value)
                @e_tag = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "blobCount" => lambda {|n| @blob_count = n.get_number_value() },
                    "blobs" => lambda {|n| @blobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::.models.partners.billingBlob.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "dataFormat" => lambda {|n| @data_format = n.get_string_value() },
                    "eTag" => lambda {|n| @e_tag = n.get_string_value() },
                    "partitionType" => lambda {|n| @partition_type = n.get_string_value() },
                    "partnerTenantId" => lambda {|n| @partner_tenant_id = n.get_string_value() },
                    "rootDirectory" => lambda {|n| @root_directory = n.get_string_value() },
                    "sasToken" => lambda {|n| @sas_token = n.get_string_value() },
                    "schemaVersion" => lambda {|n| @schema_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the partitionType property value. Indicates the division of data. If a given partition has more than the supported number, the data is split into multiple files, each file representing a specific partitionValue. By default, the data in the file is partitioned by the number of line items.
            ## @return a string
            ## 
            def partition_type
                return @partition_type
            end
            ## 
            ## Sets the partitionType property value. Indicates the division of data. If a given partition has more than the supported number, the data is split into multiple files, each file representing a specific partitionValue. By default, the data in the file is partitioned by the number of line items.
            ## @param value Value to set for the partitionType property.
            ## @return a void
            ## 
            def partition_type=(value)
                @partition_type = value
            end
            ## 
            ## Gets the partnerTenantId property value. The Microsoft Entra tenant ID of the partner.
            ## @return a string
            ## 
            def partner_tenant_id
                return @partner_tenant_id
            end
            ## 
            ## Sets the partnerTenantId property value. The Microsoft Entra tenant ID of the partner.
            ## @param value Value to set for the partnerTenantId property.
            ## @return a void
            ## 
            def partner_tenant_id=(value)
                @partner_tenant_id = value
            end
            ## 
            ## Gets the rootDirectory property value. The root directory that contains all the files.
            ## @return a string
            ## 
            def root_directory
                return @root_directory
            end
            ## 
            ## Sets the rootDirectory property value. The root directory that contains all the files.
            ## @param value Value to set for the rootDirectory property.
            ## @return a void
            ## 
            def root_directory=(value)
                @root_directory = value
            end
            ## 
            ## Gets the sasToken property value. The SAS token for accessing the directory or an individual file in the directory.
            ## @return a string
            ## 
            def sas_token
                return @sas_token
            end
            ## 
            ## Sets the sasToken property value. The SAS token for accessing the directory or an individual file in the directory.
            ## @param value Value to set for the sasToken property.
            ## @return a void
            ## 
            def sas_token=(value)
                @sas_token = value
            end
            ## 
            ## Gets the schemaVersion property value. The version of the manifest schema.
            ## @return a string
            ## 
            def schema_version
                return @schema_version
            end
            ## 
            ## Sets the schemaVersion property value. The version of the manifest schema.
            ## @param value Value to set for the schemaVersion property.
            ## @return a void
            ## 
            def schema_version=(value)
                @schema_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("blobCount", @blob_count)
                writer.write_collection_of_object_values("blobs", @blobs)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("dataFormat", @data_format)
                writer.write_string_value("eTag", @e_tag)
                writer.write_string_value("partitionType", @partition_type)
                writer.write_string_value("partnerTenantId", @partner_tenant_id)
                writer.write_string_value("rootDirectory", @root_directory)
                writer.write_string_value("sasToken", @sas_token)
                writer.write_string_value("schemaVersion", @schema_version)
            end
        end
    end
end
