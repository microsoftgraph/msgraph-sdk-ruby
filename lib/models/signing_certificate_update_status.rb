require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SigningCertificateUpdateStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Status of the last certificate update. Read-only. For a list of statuses, see certificateUpdateResult status.
            @certificate_update_result
            ## 
            # Date and time in ISO 8601 format and in UTC time when the certificate was last updated. Read-only.
            @last_run_date_time
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
            ## Gets the certificateUpdateResult property value. Status of the last certificate update. Read-only. For a list of statuses, see certificateUpdateResult status.
            ## @return a string
            ## 
            def certificate_update_result
                return @certificate_update_result
            end
            ## 
            ## Sets the certificateUpdateResult property value. Status of the last certificate update. Read-only. For a list of statuses, see certificateUpdateResult status.
            ## @param value Value to set for the certificate_update_result property.
            ## @return a void
            ## 
            def certificate_update_result=(value)
                @certificate_update_result = value
            end
            ## 
            ## Instantiates a new signingCertificateUpdateStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a signing_certificate_update_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SigningCertificateUpdateStatus.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "certificateUpdateResult" => lambda {|n| @certificate_update_result = n.get_string_value() },
                    "lastRunDateTime" => lambda {|n| @last_run_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastRunDateTime property value. Date and time in ISO 8601 format and in UTC time when the certificate was last updated. Read-only.
            ## @return a date_time
            ## 
            def last_run_date_time
                return @last_run_date_time
            end
            ## 
            ## Sets the lastRunDateTime property value. Date and time in ISO 8601 format and in UTC time when the certificate was last updated. Read-only.
            ## @param value Value to set for the last_run_date_time property.
            ## @return a void
            ## 
            def last_run_date_time=(value)
                @last_run_date_time = value
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
                writer.write_string_value("certificateUpdateResult", @certificate_update_result)
                writer.write_date_time_value("lastRunDateTime", @last_run_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
