require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Windows Information Protection DataRecoveryCertificate
        class WindowsInformationProtectionDataRecoveryCertificate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Data recovery Certificate
            @certificate
            ## 
            # Data recovery Certificate description
            @description
            ## 
            # Data recovery Certificate expiration datetime
            @expiration_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Data recovery Certificate subject name
            @subject_name
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
            ## Gets the certificate property value. Data recovery Certificate
            ## @return a base64url
            ## 
            def certificate
                return @certificate
            end
            ## 
            ## Sets the certificate property value. Data recovery Certificate
            ## @param value Value to set for the certificate property.
            ## @return a void
            ## 
            def certificate=(value)
                @certificate = value
            end
            ## 
            ## Instantiates a new windowsInformationProtectionDataRecoveryCertificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_data_recovery_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsInformationProtectionDataRecoveryCertificate.new
            end
            ## 
            ## Gets the description property value. Data recovery Certificate description
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Data recovery Certificate description
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the expirationDateTime property value. Data recovery Certificate expiration datetime
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Data recovery Certificate expiration datetime
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
                    "certificate" => lambda {|n| @certificate = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "subjectName" => lambda {|n| @subject_name = n.get_string_value() },
                }
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
                writer.write_object_value("certificate", @certificate)
                writer.write_string_value("description", @description)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("subjectName", @subject_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the subjectName property value. Data recovery Certificate subject name
            ## @return a string
            ## 
            def subject_name
                return @subject_name
            end
            ## 
            ## Sets the subjectName property value. Data recovery Certificate subject name
            ## @param value Value to set for the subject_name property.
            ## @return a void
            ## 
            def subject_name=(value)
                @subject_name = value
            end
        end
    end
end
