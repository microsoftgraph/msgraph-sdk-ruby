require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties for a single installer file that is associated with a given mobileAppContent version.
        class MobileAppContentFile < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Azure Storage URI.
            @azure_storage_uri
            ## 
            # The time the Azure storage Uri expires.
            @azure_storage_uri_expiration_date_time
            ## 
            # The time the file was created.
            @created_date_time
            ## 
            # A value indicating whether the file is committed.
            @is_committed
            ## 
            # The manifest information.
            @manifest
            ## 
            # the file name.
            @name
            ## 
            # The size of the file prior to encryption.
            @size
            ## 
            # The size of the file after encryption.
            @size_encrypted
            ## 
            # Contains properties for upload request states.
            @upload_state
            ## 
            ## Gets the azureStorageUri property value. The Azure Storage URI.
            ## @return a string
            ## 
            def azure_storage_uri
                return @azure_storage_uri
            end
            ## 
            ## Sets the azureStorageUri property value. The Azure Storage URI.
            ## @param value Value to set for the azure_storage_uri property.
            ## @return a void
            ## 
            def azure_storage_uri=(value)
                @azure_storage_uri = value
            end
            ## 
            ## Gets the azureStorageUriExpirationDateTime property value. The time the Azure storage Uri expires.
            ## @return a date_time
            ## 
            def azure_storage_uri_expiration_date_time
                return @azure_storage_uri_expiration_date_time
            end
            ## 
            ## Sets the azureStorageUriExpirationDateTime property value. The time the Azure storage Uri expires.
            ## @param value Value to set for the azure_storage_uri_expiration_date_time property.
            ## @return a void
            ## 
            def azure_storage_uri_expiration_date_time=(value)
                @azure_storage_uri_expiration_date_time = value
            end
            ## 
            ## Instantiates a new mobileAppContentFile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The time the file was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time the file was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_content_file
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppContentFile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureStorageUri" => lambda {|n| @azure_storage_uri = n.get_string_value() },
                    "azureStorageUriExpirationDateTime" => lambda {|n| @azure_storage_uri_expiration_date_time = n.get_date_time_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "isCommitted" => lambda {|n| @is_committed = n.get_boolean_value() },
                    "manifest" => lambda {|n| @manifest = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sizeEncrypted" => lambda {|n| @size_encrypted = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "uploadState" => lambda {|n| @upload_state = n.get_enum_value(MicrosoftGraph::Models::MobileAppContentFileUploadState) },
                })
            end
            ## 
            ## Gets the isCommitted property value. A value indicating whether the file is committed.
            ## @return a boolean
            ## 
            def is_committed
                return @is_committed
            end
            ## 
            ## Sets the isCommitted property value. A value indicating whether the file is committed.
            ## @param value Value to set for the is_committed property.
            ## @return a void
            ## 
            def is_committed=(value)
                @is_committed = value
            end
            ## 
            ## Gets the manifest property value. The manifest information.
            ## @return a base64url
            ## 
            def manifest
                return @manifest
            end
            ## 
            ## Sets the manifest property value. The manifest information.
            ## @param value Value to set for the manifest property.
            ## @return a void
            ## 
            def manifest=(value)
                @manifest = value
            end
            ## 
            ## Gets the name property value. the file name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. the file name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("azureStorageUri", @azure_storage_uri)
                writer.write_date_time_value("azureStorageUriExpirationDateTime", @azure_storage_uri_expiration_date_time)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_boolean_value("isCommitted", @is_committed)
                writer.write_object_value("manifest", @manifest)
                writer.write_string_value("name", @name)
                writer.write_object_value("size", @size)
                writer.write_object_value("sizeEncrypted", @size_encrypted)
                writer.write_enum_value("uploadState", @upload_state)
            end
            ## 
            ## Gets the size property value. The size of the file prior to encryption.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The size of the file prior to encryption.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the sizeEncrypted property value. The size of the file after encryption.
            ## @return a int64
            ## 
            def size_encrypted
                return @size_encrypted
            end
            ## 
            ## Sets the sizeEncrypted property value. The size of the file after encryption.
            ## @param value Value to set for the size_encrypted property.
            ## @return a void
            ## 
            def size_encrypted=(value)
                @size_encrypted = value
            end
            ## 
            ## Gets the uploadState property value. Contains properties for upload request states.
            ## @return a mobile_app_content_file_upload_state
            ## 
            def upload_state
                return @upload_state
            end
            ## 
            ## Sets the uploadState property value. Contains properties for upload request states.
            ## @param value Value to set for the upload_state property.
            ## @return a void
            ## 
            def upload_state=(value)
                @upload_state = value
            end
        end
    end
end
