require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Certification
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # URL that shows certification details for the application.
            @certification_details_url
            ## 
            # The timestamp when the current certification for the application will expire.
            @certification_expiration_date_time
            ## 
            # Indicates whether the application is certified by Microsoft.
            @is_certified_by_microsoft
            ## 
            # Indicates whether the application has been self-attested by the application developer or the publisher.
            @is_publisher_attested
            ## 
            # The timestamp when the certification for the application was most recently added or updated.
            @last_certification_date_time
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
            ## Gets the certificationDetailsUrl property value. URL that shows certification details for the application.
            ## @return a string
            ## 
            def certification_details_url
                return @certification_details_url
            end
            ## 
            ## Sets the certificationDetailsUrl property value. URL that shows certification details for the application.
            ## @param value Value to set for the certification_details_url property.
            ## @return a void
            ## 
            def certification_details_url=(value)
                @certification_details_url = value
            end
            ## 
            ## Gets the certificationExpirationDateTime property value. The timestamp when the current certification for the application will expire.
            ## @return a date_time
            ## 
            def certification_expiration_date_time
                return @certification_expiration_date_time
            end
            ## 
            ## Sets the certificationExpirationDateTime property value. The timestamp when the current certification for the application will expire.
            ## @param value Value to set for the certification_expiration_date_time property.
            ## @return a void
            ## 
            def certification_expiration_date_time=(value)
                @certification_expiration_date_time = value
            end
            ## 
            ## Instantiates a new certification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a certification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Certification.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "certificationDetailsUrl" => lambda {|n| @certification_details_url = n.get_string_value() },
                    "certificationExpirationDateTime" => lambda {|n| @certification_expiration_date_time = n.get_date_time_value() },
                    "isCertifiedByMicrosoft" => lambda {|n| @is_certified_by_microsoft = n.get_boolean_value() },
                    "isPublisherAttested" => lambda {|n| @is_publisher_attested = n.get_boolean_value() },
                    "lastCertificationDateTime" => lambda {|n| @last_certification_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isCertifiedByMicrosoft property value. Indicates whether the application is certified by Microsoft.
            ## @return a boolean
            ## 
            def is_certified_by_microsoft
                return @is_certified_by_microsoft
            end
            ## 
            ## Sets the isCertifiedByMicrosoft property value. Indicates whether the application is certified by Microsoft.
            ## @param value Value to set for the is_certified_by_microsoft property.
            ## @return a void
            ## 
            def is_certified_by_microsoft=(value)
                @is_certified_by_microsoft = value
            end
            ## 
            ## Gets the isPublisherAttested property value. Indicates whether the application has been self-attested by the application developer or the publisher.
            ## @return a boolean
            ## 
            def is_publisher_attested
                return @is_publisher_attested
            end
            ## 
            ## Sets the isPublisherAttested property value. Indicates whether the application has been self-attested by the application developer or the publisher.
            ## @param value Value to set for the is_publisher_attested property.
            ## @return a void
            ## 
            def is_publisher_attested=(value)
                @is_publisher_attested = value
            end
            ## 
            ## Gets the lastCertificationDateTime property value. The timestamp when the certification for the application was most recently added or updated.
            ## @return a date_time
            ## 
            def last_certification_date_time
                return @last_certification_date_time
            end
            ## 
            ## Sets the lastCertificationDateTime property value. The timestamp when the certification for the application was most recently added or updated.
            ## @param value Value to set for the last_certification_date_time property.
            ## @return a void
            ## 
            def last_certification_date_time=(value)
                @last_certification_date_time = value
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
                writer.write_date_time_value("certificationExpirationDateTime", @certification_expiration_date_time)
                writer.write_boolean_value("isPublisherAttested", @is_publisher_attested)
                writer.write_date_time_value("lastCertificationDateTime", @last_certification_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
