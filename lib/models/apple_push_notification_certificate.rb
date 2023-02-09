require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ApplePushNotificationCertificate < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Apple Id of the account used to create the MDM push certificate.
            @apple_identifier
            ## 
            # Not yet documented
            @certificate
            ## 
            # Certificate serial number. This property is read-only.
            @certificate_serial_number
            ## 
            # The reason the certificate upload failed.
            @certificate_upload_failure_reason
            ## 
            # The certificate upload status.
            @certificate_upload_status
            ## 
            # The expiration date and time for Apple push notification certificate.
            @expiration_date_time
            ## 
            # Last modified date and time for Apple push notification certificate.
            @last_modified_date_time
            ## 
            # Topic Id.
            @topic_identifier
            ## 
            ## Gets the appleIdentifier property value. Apple Id of the account used to create the MDM push certificate.
            ## @return a string
            ## 
            def apple_identifier
                return @apple_identifier
            end
            ## 
            ## Sets the appleIdentifier property value. Apple Id of the account used to create the MDM push certificate.
            ## @param value Value to set for the apple_identifier property.
            ## @return a void
            ## 
            def apple_identifier=(value)
                @apple_identifier = value
            end
            ## 
            ## Gets the certificate property value. Not yet documented
            ## @return a string
            ## 
            def certificate
                return @certificate
            end
            ## 
            ## Sets the certificate property value. Not yet documented
            ## @param value Value to set for the certificate property.
            ## @return a void
            ## 
            def certificate=(value)
                @certificate = value
            end
            ## 
            ## Gets the certificateSerialNumber property value. Certificate serial number. This property is read-only.
            ## @return a string
            ## 
            def certificate_serial_number
                return @certificate_serial_number
            end
            ## 
            ## Sets the certificateSerialNumber property value. Certificate serial number. This property is read-only.
            ## @param value Value to set for the certificate_serial_number property.
            ## @return a void
            ## 
            def certificate_serial_number=(value)
                @certificate_serial_number = value
            end
            ## 
            ## Gets the certificateUploadFailureReason property value. The reason the certificate upload failed.
            ## @return a string
            ## 
            def certificate_upload_failure_reason
                return @certificate_upload_failure_reason
            end
            ## 
            ## Sets the certificateUploadFailureReason property value. The reason the certificate upload failed.
            ## @param value Value to set for the certificate_upload_failure_reason property.
            ## @return a void
            ## 
            def certificate_upload_failure_reason=(value)
                @certificate_upload_failure_reason = value
            end
            ## 
            ## Gets the certificateUploadStatus property value. The certificate upload status.
            ## @return a string
            ## 
            def certificate_upload_status
                return @certificate_upload_status
            end
            ## 
            ## Sets the certificateUploadStatus property value. The certificate upload status.
            ## @param value Value to set for the certificate_upload_status property.
            ## @return a void
            ## 
            def certificate_upload_status=(value)
                @certificate_upload_status = value
            end
            ## 
            ## Instantiates a new applePushNotificationCertificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a apple_push_notification_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApplePushNotificationCertificate.new
            end
            ## 
            ## Gets the expirationDateTime property value. The expiration date and time for Apple push notification certificate.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expiration date and time for Apple push notification certificate.
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
                return super.merge({
                    "appleIdentifier" => lambda {|n| @apple_identifier = n.get_string_value() },
                    "certificate" => lambda {|n| @certificate = n.get_string_value() },
                    "certificateSerialNumber" => lambda {|n| @certificate_serial_number = n.get_string_value() },
                    "certificateUploadFailureReason" => lambda {|n| @certificate_upload_failure_reason = n.get_string_value() },
                    "certificateUploadStatus" => lambda {|n| @certificate_upload_status = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "topicIdentifier" => lambda {|n| @topic_identifier = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Last modified date and time for Apple push notification certificate.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Last modified date and time for Apple push notification certificate.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appleIdentifier", @apple_identifier)
                writer.write_string_value("certificate", @certificate)
                writer.write_string_value("certificateUploadFailureReason", @certificate_upload_failure_reason)
                writer.write_string_value("certificateUploadStatus", @certificate_upload_status)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("topicIdentifier", @topic_identifier)
            end
            ## 
            ## Gets the topicIdentifier property value. Topic Id.
            ## @return a string
            ## 
            def topic_identifier
                return @topic_identifier
            end
            ## 
            ## Sets the topicIdentifier property value. Topic Id.
            ## @param value Value to set for the topic_identifier property.
            ## @return a void
            ## 
            def topic_identifier=(value)
                @topic_identifier = value
            end
        end
    end
end
