require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FileSecurityState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Complex type containing file hashes (cryptographic and location-sensitive).
            @file_hash
            ## 
            # File name (without path).
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Full file path of the file/imageFile.
            @path
            ## 
            # Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.
            @risk_score
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
            ## Instantiates a new fileSecurityState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a file_security_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileSecurityState.new
            end
            ## 
            ## Gets the fileHash property value. Complex type containing file hashes (cryptographic and location-sensitive).
            ## @return a file_hash
            ## 
            def file_hash
                return @file_hash
            end
            ## 
            ## Sets the fileHash property value. Complex type containing file hashes (cryptographic and location-sensitive).
            ## @param value Value to set for the file_hash property.
            ## @return a void
            ## 
            def file_hash=(value)
                @file_hash = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "fileHash" => lambda {|n| @file_hash = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileHash.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "path" => lambda {|n| @path = n.get_string_value() },
                    "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. File name (without path).
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. File name (without path).
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
            ## Gets the path property value. Full file path of the file/imageFile.
            ## @return a string
            ## 
            def path
                return @path
            end
            ## 
            ## Sets the path property value. Full file path of the file/imageFile.
            ## @param value Value to set for the path property.
            ## @return a void
            ## 
            def path=(value)
                @path = value
            end
            ## 
            ## Gets the riskScore property value. Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.
            ## @return a string
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.
            ## @param value Value to set for the risk_score property.
            ## @return a void
            ## 
            def risk_score=(value)
                @risk_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("fileHash", @file_hash)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("path", @path)
                writer.write_string_value("riskScore", @risk_score)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
