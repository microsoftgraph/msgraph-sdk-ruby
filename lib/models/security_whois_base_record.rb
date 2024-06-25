require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityWhoisBaseRecord < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The contact information for the abuse contact.
            @abuse
            ## 
            # The contact information for the admin contact.
            @admin
            ## 
            # The contact information for the billing contact.
            @billing
            ## 
            # The domain status for this WHOIS object.
            @domain_status
            ## 
            # The date and time when this WHOIS record expires with the registrar. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @expiration_date_time
            ## 
            # The first seen date and time of this WHOIS record. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @first_seen_date_time
            ## 
            # The host property
            @host
            ## 
            # The last seen date and time of this WHOIS record. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # The date and time when this WHOIS record was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_update_date_time
            ## 
            # The nameservers for this WHOIS object.
            @nameservers
            ## 
            # The contact information for the noc contact.
            @noc
            ## 
            # The raw WHOIS details for this WHOIS object.
            @raw_whois_text
            ## 
            # The contact information for the registrant contact.
            @registrant
            ## 
            # The contact information for the registrar contact.
            @registrar
            ## 
            # The date and time when this WHOIS record was registered with a registrar. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @registration_date_time
            ## 
            # The contact information for the technical contact.
            @technical
            ## 
            # The WHOIS server that provides the details.
            @whois_server
            ## 
            # The contact information for the zone contact.
            @zone
            ## 
            ## Gets the abuse property value. The contact information for the abuse contact.
            ## @return a security_whois_contact
            ## 
            def abuse
                return @abuse
            end
            ## 
            ## Sets the abuse property value. The contact information for the abuse contact.
            ## @param value Value to set for the abuse property.
            ## @return a void
            ## 
            def abuse=(value)
                @abuse = value
            end
            ## 
            ## Gets the admin property value. The contact information for the admin contact.
            ## @return a security_whois_contact
            ## 
            def admin
                return @admin
            end
            ## 
            ## Sets the admin property value. The contact information for the admin contact.
            ## @param value Value to set for the admin property.
            ## @return a void
            ## 
            def admin=(value)
                @admin = value
            end
            ## 
            ## Gets the billing property value. The contact information for the billing contact.
            ## @return a security_whois_contact
            ## 
            def billing
                return @billing
            end
            ## 
            ## Sets the billing property value. The contact information for the billing contact.
            ## @param value Value to set for the billing property.
            ## @return a void
            ## 
            def billing=(value)
                @billing = value
            end
            ## 
            ## Instantiates a new SecurityWhoisBaseRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_whois_base_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.whoisHistoryRecord"
                            return SecurityWhoisHistoryRecord.new
                        when "#microsoft.graph.security.whoisRecord"
                            return SecurityWhoisRecord.new
                    end
                end
                return SecurityWhoisBaseRecord.new
            end
            ## 
            ## Gets the domainStatus property value. The domain status for this WHOIS object.
            ## @return a string
            ## 
            def domain_status
                return @domain_status
            end
            ## 
            ## Sets the domainStatus property value. The domain status for this WHOIS object.
            ## @param value Value to set for the domainStatus property.
            ## @return a void
            ## 
            def domain_status=(value)
                @domain_status = value
            end
            ## 
            ## Gets the expirationDateTime property value. The date and time when this WHOIS record expires with the registrar. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The date and time when this WHOIS record expires with the registrar. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the firstSeenDateTime property value. The first seen date and time of this WHOIS record. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The first seen date and time of this WHOIS record. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
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
                    "abuse" => lambda {|n| @abuse = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisContact.create_from_discriminator_value(pn) }) },
                    "admin" => lambda {|n| @admin = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisContact.create_from_discriminator_value(pn) }) },
                    "billing" => lambda {|n| @billing = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisContact.create_from_discriminator_value(pn) }) },
                    "domainStatus" => lambda {|n| @domain_status = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "host" => lambda {|n| @host = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityHost.create_from_discriminator_value(pn) }) },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "lastUpdateDateTime" => lambda {|n| @last_update_date_time = n.get_date_time_value() },
                    "nameservers" => lambda {|n| @nameservers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisNameserver.create_from_discriminator_value(pn) }) },
                    "noc" => lambda {|n| @noc = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisContact.create_from_discriminator_value(pn) }) },
                    "rawWhoisText" => lambda {|n| @raw_whois_text = n.get_string_value() },
                    "registrant" => lambda {|n| @registrant = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisContact.create_from_discriminator_value(pn) }) },
                    "registrar" => lambda {|n| @registrar = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisContact.create_from_discriminator_value(pn) }) },
                    "registrationDateTime" => lambda {|n| @registration_date_time = n.get_date_time_value() },
                    "technical" => lambda {|n| @technical = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisContact.create_from_discriminator_value(pn) }) },
                    "whoisServer" => lambda {|n| @whois_server = n.get_string_value() },
                    "zone" => lambda {|n| @zone = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisContact.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the host property value. The host property
            ## @return a security_host
            ## 
            def host
                return @host
            end
            ## 
            ## Sets the host property value. The host property
            ## @param value Value to set for the host property.
            ## @return a void
            ## 
            def host=(value)
                @host = value
            end
            ## 
            ## Gets the lastSeenDateTime property value. The last seen date and time of this WHOIS record. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The last seen date and time of this WHOIS record. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the lastUpdateDateTime property value. The date and time when this WHOIS record was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_update_date_time
                return @last_update_date_time
            end
            ## 
            ## Sets the lastUpdateDateTime property value. The date and time when this WHOIS record was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastUpdateDateTime property.
            ## @return a void
            ## 
            def last_update_date_time=(value)
                @last_update_date_time = value
            end
            ## 
            ## Gets the nameservers property value. The nameservers for this WHOIS object.
            ## @return a security_whois_nameserver
            ## 
            def nameservers
                return @nameservers
            end
            ## 
            ## Sets the nameservers property value. The nameservers for this WHOIS object.
            ## @param value Value to set for the nameservers property.
            ## @return a void
            ## 
            def nameservers=(value)
                @nameservers = value
            end
            ## 
            ## Gets the noc property value. The contact information for the noc contact.
            ## @return a security_whois_contact
            ## 
            def noc
                return @noc
            end
            ## 
            ## Sets the noc property value. The contact information for the noc contact.
            ## @param value Value to set for the noc property.
            ## @return a void
            ## 
            def noc=(value)
                @noc = value
            end
            ## 
            ## Gets the rawWhoisText property value. The raw WHOIS details for this WHOIS object.
            ## @return a string
            ## 
            def raw_whois_text
                return @raw_whois_text
            end
            ## 
            ## Sets the rawWhoisText property value. The raw WHOIS details for this WHOIS object.
            ## @param value Value to set for the rawWhoisText property.
            ## @return a void
            ## 
            def raw_whois_text=(value)
                @raw_whois_text = value
            end
            ## 
            ## Gets the registrant property value. The contact information for the registrant contact.
            ## @return a security_whois_contact
            ## 
            def registrant
                return @registrant
            end
            ## 
            ## Sets the registrant property value. The contact information for the registrant contact.
            ## @param value Value to set for the registrant property.
            ## @return a void
            ## 
            def registrant=(value)
                @registrant = value
            end
            ## 
            ## Gets the registrar property value. The contact information for the registrar contact.
            ## @return a security_whois_contact
            ## 
            def registrar
                return @registrar
            end
            ## 
            ## Sets the registrar property value. The contact information for the registrar contact.
            ## @param value Value to set for the registrar property.
            ## @return a void
            ## 
            def registrar=(value)
                @registrar = value
            end
            ## 
            ## Gets the registrationDateTime property value. The date and time when this WHOIS record was registered with a registrar. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def registration_date_time
                return @registration_date_time
            end
            ## 
            ## Sets the registrationDateTime property value. The date and time when this WHOIS record was registered with a registrar. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the registrationDateTime property.
            ## @return a void
            ## 
            def registration_date_time=(value)
                @registration_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("abuse", @abuse)
                writer.write_object_value("admin", @admin)
                writer.write_object_value("billing", @billing)
                writer.write_string_value("domainStatus", @domain_status)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_object_value("host", @host)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_date_time_value("lastUpdateDateTime", @last_update_date_time)
                writer.write_collection_of_object_values("nameservers", @nameservers)
                writer.write_object_value("noc", @noc)
                writer.write_string_value("rawWhoisText", @raw_whois_text)
                writer.write_object_value("registrant", @registrant)
                writer.write_object_value("registrar", @registrar)
                writer.write_date_time_value("registrationDateTime", @registration_date_time)
                writer.write_object_value("technical", @technical)
                writer.write_string_value("whoisServer", @whois_server)
                writer.write_object_value("zone", @zone)
            end
            ## 
            ## Gets the technical property value. The contact information for the technical contact.
            ## @return a security_whois_contact
            ## 
            def technical
                return @technical
            end
            ## 
            ## Sets the technical property value. The contact information for the technical contact.
            ## @param value Value to set for the technical property.
            ## @return a void
            ## 
            def technical=(value)
                @technical = value
            end
            ## 
            ## Gets the whoisServer property value. The WHOIS server that provides the details.
            ## @return a string
            ## 
            def whois_server
                return @whois_server
            end
            ## 
            ## Sets the whoisServer property value. The WHOIS server that provides the details.
            ## @param value Value to set for the whoisServer property.
            ## @return a void
            ## 
            def whois_server=(value)
                @whois_server = value
            end
            ## 
            ## Gets the zone property value. The contact information for the zone contact.
            ## @return a security_whois_contact
            ## 
            def zone
                return @zone
            end
            ## 
            ## Sets the zone property value. The contact information for the zone contact.
            ## @param value Value to set for the zone property.
            ## @return a void
            ## 
            def zone=(value)
                @zone = value
            end
        end
    end
end
