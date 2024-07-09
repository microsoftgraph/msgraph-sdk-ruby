require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityHost < MicrosoftGraph::Models::SecurityArtifact
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The hostPairs that are resources associated with a host, where that host is the parentHost and has an outgoing pairing to a childHost.
            @child_host_pairs
            ## 
            # The hostComponents that are associated with this host.
            @components
            ## 
            # The hostCookies that are associated with this host.
            @cookies
            ## 
            # The first date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @first_seen_date_time
            ## 
            # The hostPairs that are associated with this host, where this host is either the parentHost or childHost.
            @host_pairs
            ## 
            # The most recent date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # The hostPairs that are associated with a host, where that host is the childHost and has an incoming pairing with a parentHost.
            @parent_host_pairs
            ## 
            # Passive DNS retrieval about this host.
            @passive_dns
            ## 
            # Reverse passive DNS retrieval about this host.
            @passive_dns_reverse
            ## 
            # The hostPorts associated with a host.
            @ports
            ## 
            # Represents a calculated reputation of this host.
            @reputation
            ## 
            # The hostSslCertificates that are associated with this host.
            @ssl_certificates
            ## 
            # The subdomains that are associated with this host.
            @subdomains
            ## 
            # The hostTrackers that are associated with this host.
            @trackers
            ## 
            # The most recent whoisRecord for this host.
            @whois
            ## 
            ## Gets the childHostPairs property value. The hostPairs that are resources associated with a host, where that host is the parentHost and has an outgoing pairing to a childHost.
            ## @return a security_host_pair
            ## 
            def child_host_pairs
                return @child_host_pairs
            end
            ## 
            ## Sets the childHostPairs property value. The hostPairs that are resources associated with a host, where that host is the parentHost and has an outgoing pairing to a childHost.
            ## @param value Value to set for the childHostPairs property.
            ## @return a void
            ## 
            def child_host_pairs=(value)
                @child_host_pairs = value
            end
            ## 
            ## Gets the components property value. The hostComponents that are associated with this host.
            ## @return a security_host_component
            ## 
            def components
                return @components
            end
            ## 
            ## Sets the components property value. The hostComponents that are associated with this host.
            ## @param value Value to set for the components property.
            ## @return a void
            ## 
            def components=(value)
                @components = value
            end
            ## 
            ## Instantiates a new SecurityHost and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.host"
            end
            ## 
            ## Gets the cookies property value. The hostCookies that are associated with this host.
            ## @return a security_host_cookie
            ## 
            def cookies
                return @cookies
            end
            ## 
            ## Sets the cookies property value. The hostCookies that are associated with this host.
            ## @param value Value to set for the cookies property.
            ## @return a void
            ## 
            def cookies=(value)
                @cookies = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_host
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.hostname"
                            return SecurityHostname.new
                        when "#microsoft.graph.security.ipAddress"
                            return SecurityIpAddress.new
                    end
                end
                return SecurityHost.new
            end
            ## 
            ## Gets the firstSeenDateTime property value. The first date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The first date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
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
                    "childHostPairs" => lambda {|n| @child_host_pairs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostPair.create_from_discriminator_value(pn) }) },
                    "components" => lambda {|n| @components = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostComponent.create_from_discriminator_value(pn) }) },
                    "cookies" => lambda {|n| @cookies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostCookie.create_from_discriminator_value(pn) }) },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "hostPairs" => lambda {|n| @host_pairs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostPair.create_from_discriminator_value(pn) }) },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "parentHostPairs" => lambda {|n| @parent_host_pairs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostPair.create_from_discriminator_value(pn) }) },
                    "passiveDns" => lambda {|n| @passive_dns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityPassiveDnsRecord.create_from_discriminator_value(pn) }) },
                    "passiveDnsReverse" => lambda {|n| @passive_dns_reverse = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityPassiveDnsRecord.create_from_discriminator_value(pn) }) },
                    "ports" => lambda {|n| @ports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostPort.create_from_discriminator_value(pn) }) },
                    "reputation" => lambda {|n| @reputation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityHostReputation.create_from_discriminator_value(pn) }) },
                    "sslCertificates" => lambda {|n| @ssl_certificates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostSslCertificate.create_from_discriminator_value(pn) }) },
                    "subdomains" => lambda {|n| @subdomains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecuritySubdomain.create_from_discriminator_value(pn) }) },
                    "trackers" => lambda {|n| @trackers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostTracker.create_from_discriminator_value(pn) }) },
                    "whois" => lambda {|n| @whois = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisRecord.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hostPairs property value. The hostPairs that are associated with this host, where this host is either the parentHost or childHost.
            ## @return a security_host_pair
            ## 
            def host_pairs
                return @host_pairs
            end
            ## 
            ## Sets the hostPairs property value. The hostPairs that are associated with this host, where this host is either the parentHost or childHost.
            ## @param value Value to set for the hostPairs property.
            ## @return a void
            ## 
            def host_pairs=(value)
                @host_pairs = value
            end
            ## 
            ## Gets the lastSeenDateTime property value. The most recent date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The most recent date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the parentHostPairs property value. The hostPairs that are associated with a host, where that host is the childHost and has an incoming pairing with a parentHost.
            ## @return a security_host_pair
            ## 
            def parent_host_pairs
                return @parent_host_pairs
            end
            ## 
            ## Sets the parentHostPairs property value. The hostPairs that are associated with a host, where that host is the childHost and has an incoming pairing with a parentHost.
            ## @param value Value to set for the parentHostPairs property.
            ## @return a void
            ## 
            def parent_host_pairs=(value)
                @parent_host_pairs = value
            end
            ## 
            ## Gets the passiveDns property value. Passive DNS retrieval about this host.
            ## @return a security_passive_dns_record
            ## 
            def passive_dns
                return @passive_dns
            end
            ## 
            ## Sets the passiveDns property value. Passive DNS retrieval about this host.
            ## @param value Value to set for the passiveDns property.
            ## @return a void
            ## 
            def passive_dns=(value)
                @passive_dns = value
            end
            ## 
            ## Gets the passiveDnsReverse property value. Reverse passive DNS retrieval about this host.
            ## @return a security_passive_dns_record
            ## 
            def passive_dns_reverse
                return @passive_dns_reverse
            end
            ## 
            ## Sets the passiveDnsReverse property value. Reverse passive DNS retrieval about this host.
            ## @param value Value to set for the passiveDnsReverse property.
            ## @return a void
            ## 
            def passive_dns_reverse=(value)
                @passive_dns_reverse = value
            end
            ## 
            ## Gets the ports property value. The hostPorts associated with a host.
            ## @return a security_host_port
            ## 
            def ports
                return @ports
            end
            ## 
            ## Sets the ports property value. The hostPorts associated with a host.
            ## @param value Value to set for the ports property.
            ## @return a void
            ## 
            def ports=(value)
                @ports = value
            end
            ## 
            ## Gets the reputation property value. Represents a calculated reputation of this host.
            ## @return a security_host_reputation
            ## 
            def reputation
                return @reputation
            end
            ## 
            ## Sets the reputation property value. Represents a calculated reputation of this host.
            ## @param value Value to set for the reputation property.
            ## @return a void
            ## 
            def reputation=(value)
                @reputation = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("childHostPairs", @child_host_pairs)
                writer.write_collection_of_object_values("components", @components)
                writer.write_collection_of_object_values("cookies", @cookies)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_collection_of_object_values("hostPairs", @host_pairs)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_collection_of_object_values("parentHostPairs", @parent_host_pairs)
                writer.write_collection_of_object_values("passiveDns", @passive_dns)
                writer.write_collection_of_object_values("passiveDnsReverse", @passive_dns_reverse)
                writer.write_collection_of_object_values("ports", @ports)
                writer.write_object_value("reputation", @reputation)
                writer.write_collection_of_object_values("sslCertificates", @ssl_certificates)
                writer.write_collection_of_object_values("subdomains", @subdomains)
                writer.write_collection_of_object_values("trackers", @trackers)
                writer.write_object_value("whois", @whois)
            end
            ## 
            ## Gets the sslCertificates property value. The hostSslCertificates that are associated with this host.
            ## @return a security_host_ssl_certificate
            ## 
            def ssl_certificates
                return @ssl_certificates
            end
            ## 
            ## Sets the sslCertificates property value. The hostSslCertificates that are associated with this host.
            ## @param value Value to set for the sslCertificates property.
            ## @return a void
            ## 
            def ssl_certificates=(value)
                @ssl_certificates = value
            end
            ## 
            ## Gets the subdomains property value. The subdomains that are associated with this host.
            ## @return a security_subdomain
            ## 
            def subdomains
                return @subdomains
            end
            ## 
            ## Sets the subdomains property value. The subdomains that are associated with this host.
            ## @param value Value to set for the subdomains property.
            ## @return a void
            ## 
            def subdomains=(value)
                @subdomains = value
            end
            ## 
            ## Gets the trackers property value. The hostTrackers that are associated with this host.
            ## @return a security_host_tracker
            ## 
            def trackers
                return @trackers
            end
            ## 
            ## Sets the trackers property value. The hostTrackers that are associated with this host.
            ## @param value Value to set for the trackers property.
            ## @return a void
            ## 
            def trackers=(value)
                @trackers = value
            end
            ## 
            ## Gets the whois property value. The most recent whoisRecord for this host.
            ## @return a security_whois_record
            ## 
            def whois
                return @whois
            end
            ## 
            ## Sets the whois property value. The most recent whoisRecord for this host.
            ## @param value Value to set for the whois property.
            ## @return a void
            ## 
            def whois=(value)
                @whois = value
            end
        end
    end
end
