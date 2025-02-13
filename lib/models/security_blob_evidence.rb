require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityBlobEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The container which the blob belongs to.
            @blob_container
            ## 
            # The Etag associated with this blob.
            @etag
            ## 
            # The file hashes associated with this blob.
            @file_hashes
            ## 
            # The name of the blob.
            @name
            ## 
            # The full URL representation of the blob.
            @url
            ## 
            ## Gets the blobContainer property value. The container which the blob belongs to.
            ## @return a security_blob_container_evidence
            ## 
            def blob_container
                return @blob_container
            end
            ## 
            ## Sets the blobContainer property value. The container which the blob belongs to.
            ## @param value Value to set for the blobContainer property.
            ## @return a void
            ## 
            def blob_container=(value)
                @blob_container = value
            end
            ## 
            ## Instantiates a new SecurityBlobEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.blobEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_blob_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityBlobEvidence.new
            end
            ## 
            ## Gets the etag property value. The Etag associated with this blob.
            ## @return a string
            ## 
            def etag
                return @etag
            end
            ## 
            ## Sets the etag property value. The Etag associated with this blob.
            ## @param value Value to set for the etag property.
            ## @return a void
            ## 
            def etag=(value)
                @etag = value
            end
            ## 
            ## Gets the fileHashes property value. The file hashes associated with this blob.
            ## @return a security_file_hash
            ## 
            def file_hashes
                return @file_hashes
            end
            ## 
            ## Sets the fileHashes property value. The file hashes associated with this blob.
            ## @param value Value to set for the fileHashes property.
            ## @return a void
            ## 
            def file_hashes=(value)
                @file_hashes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "blobContainer" => lambda {|n| @blob_container = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityBlobContainerEvidence.create_from_discriminator_value(pn) }) },
                    "etag" => lambda {|n| @etag = n.get_string_value() },
                    "fileHashes" => lambda {|n| @file_hashes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityFileHash.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "url" => lambda {|n| @url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. The name of the blob.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the blob.
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
                writer.write_object_value("blobContainer", @blob_container)
                writer.write_string_value("etag", @etag)
                writer.write_collection_of_object_values("fileHashes", @file_hashes)
                writer.write_string_value("name", @name)
                writer.write_string_value("url", @url)
            end
            ## 
            ## Gets the url property value. The full URL representation of the blob.
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. The full URL representation of the blob.
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
        end
    end
end
