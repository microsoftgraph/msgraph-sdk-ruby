require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecuritySslCertificate < MicrosoftGraph::Models::SecurityArtifact
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when a certificate expires. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @expiration_date_time
            ## 
            # A hash of the certificate calculated on the data and signature.
            @fingerprint
            ## 
            # The first date and time when this sslCertificate was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @first_seen_date_time
            ## 
            # The date and time when a certificate was issued. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @issue_date_time
            ## 
            # The entity that grants this certificate.
            @issuer
            ## 
            # The most recent date and time when this sslCertificate was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # The host resources related with this sslCertificate.
            @related_hosts
            ## 
            # The serial number associated with an SSL certificate.
            @serial_number
            ## 
            # A SHA-1 hash of the certificate. Note: This is not the signature.
            @sha1
            ## 
            # The person, site, machine, and so on, this certificate is for.
            @subject
            ## 
            ## Instantiates a new SecuritySslCertificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.sslCertificate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ssl_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecuritySslCertificate.new
            end
            ## 
            ## Gets the expirationDateTime property value. The date and time when a certificate expires. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The date and time when a certificate expires. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the fingerprint property value. A hash of the certificate calculated on the data and signature.
            ## @return a string
            ## 
            def fingerprint
                return @fingerprint
            end
            ## 
            ## Sets the fingerprint property value. A hash of the certificate calculated on the data and signature.
            ## @param value Value to set for the fingerprint property.
            ## @return a void
            ## 
            def fingerprint=(value)
                @fingerprint = value
            end
            ## 
            ## Gets the firstSeenDateTime property value. The first date and time when this sslCertificate was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The first date and time when this sslCertificate was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the firstSeenDateTime property.
            ## @return a void
            ## 
            def first_seen_date_time=(value)
                @first_seen_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "fingerprint" => lambda {|n| @fingerprint = n.get_string_value() },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "issueDateTime" => lambda {|n| @issue_date_time = n.get_date_time_value() },
                    "issuer" => lambda {|n| @issuer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecuritySslCertificateEntity.create_from_discriminator_value(pn) }) },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "relatedHosts" => lambda {|n| @related_hosts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHost.create_from_discriminator_value(pn) }) },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "sha1" => lambda {|n| @sha1 = n.get_string_value() },
                    "subject" => lambda {|n| @subject = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecuritySslCertificateEntity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the issueDateTime property value. The date and time when a certificate was issued. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def issue_date_time
                return @issue_date_time
            end
            ## 
            ## Sets the issueDateTime property value. The date and time when a certificate was issued. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the issueDateTime property.
            ## @return a void
            ## 
            def issue_date_time=(value)
                @issue_date_time = value
            end
            ## 
            ## Gets the issuer property value. The entity that grants this certificate.
            ## @return a security_ssl_certificate_entity
            ## 
            def issuer
                return @issuer
            end
            ## 
            ## Sets the issuer property value. The entity that grants this certificate.
            ## @param value Value to set for the issuer property.
            ## @return a void
            ## 
            def issuer=(value)
                @issuer = value
            end
            ## 
            ## Gets the lastSeenDateTime property value. The most recent date and time when this sslCertificate was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The most recent date and time when this sslCertificate was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the relatedHosts property value. The host resources related with this sslCertificate.
            ## @return a security_host
            ## 
            def related_hosts
                return @related_hosts
            end
            ## 
            ## Sets the relatedHosts property value. The host resources related with this sslCertificate.
            ## @param value Value to set for the relatedHosts property.
            ## @return a void
            ## 
            def related_hosts=(value)
                @related_hosts = value
            end
            ## 
            ## Gets the serialNumber property value. The serial number associated with an SSL certificate.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. The serial number associated with an SSL certificate.
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("fingerprint", @fingerprint)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_date_time_value("issueDateTime", @issue_date_time)
                writer.write_object_value("issuer", @issuer)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_collection_of_object_values("relatedHosts", @related_hosts)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_string_value("sha1", @sha1)
                writer.write_object_value("subject", @subject)
            end
            ## 
            ## Gets the sha1 property value. A SHA-1 hash of the certificate. Note: This is not the signature.
            ## @return a string
            ## 
            def sha1
                return @sha1
            end
            ## 
            ## Sets the sha1 property value. A SHA-1 hash of the certificate. Note: This is not the signature.
            ## @param value Value to set for the sha1 property.
            ## @return a void
            ## 
            def sha1=(value)
                @sha1 = value
            end
            ## 
            ## Gets the subject property value. The person, site, machine, and so on, this certificate is for.
            ## @return a security_ssl_certificate_entity
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The person, site, machine, and so on, this certificate is for.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
        end
    end
end
