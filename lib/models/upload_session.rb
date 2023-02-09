require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UploadSession
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date and time in UTC that the upload session will expire. The complete file must be uploaded before this expiration time is reached.
            @expiration_date_time
            ## 
            # A collection of byte ranges that the server is missing for the file. These ranges are zero indexed and of the format 'start-end' (e.g. '0-26' to indicate the first 27 bytes of the file). When uploading files as Outlook attachments, instead of a collection of ranges, this property always indicates a single value '{start}', the location in the file where the next upload should begin.
            @next_expected_ranges
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The URL endpoint that accepts PUT requests for byte ranges of the file.
            @upload_url
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
            ## Instantiates a new uploadSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a upload_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UploadSession.new
            end
            ## 
            ## Gets the expirationDateTime property value. The date and time in UTC that the upload session will expire. The complete file must be uploaded before this expiration time is reached.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The date and time in UTC that the upload session will expire. The complete file must be uploaded before this expiration time is reached.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "nextExpectedRanges" => lambda {|n| @next_expected_ranges = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "uploadUrl" => lambda {|n| @upload_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the nextExpectedRanges property value. A collection of byte ranges that the server is missing for the file. These ranges are zero indexed and of the format 'start-end' (e.g. '0-26' to indicate the first 27 bytes of the file). When uploading files as Outlook attachments, instead of a collection of ranges, this property always indicates a single value '{start}', the location in the file where the next upload should begin.
            ## @return a string
            ## 
            def next_expected_ranges
                return @next_expected_ranges
            end
            ## 
            ## Sets the nextExpectedRanges property value. A collection of byte ranges that the server is missing for the file. These ranges are zero indexed and of the format 'start-end' (e.g. '0-26' to indicate the first 27 bytes of the file). When uploading files as Outlook attachments, instead of a collection of ranges, this property always indicates a single value '{start}', the location in the file where the next upload should begin.
            ## @param value Value to set for the next_expected_ranges property.
            ## @return a void
            ## 
            def next_expected_ranges=(value)
                @next_expected_ranges = value
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
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_collection_of_primitive_values("nextExpectedRanges", @next_expected_ranges)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("uploadUrl", @upload_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the uploadUrl property value. The URL endpoint that accepts PUT requests for byte ranges of the file.
            ## @return a string
            ## 
            def upload_url
                return @upload_url
            end
            ## 
            ## Sets the uploadUrl property value. The URL endpoint that accepts PUT requests for byte ranges of the file.
            ## @param value Value to set for the upload_url property.
            ## @return a void
            ## 
            def upload_url=(value)
                @upload_url = value
            end
        end
    end
end
