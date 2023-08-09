require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'
require_relative './security/security'

module MicrosoftGraph
    module Models
        class SecurityHost < MicrosoftGraph::Models::SecurityArtifact
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The hostComponents that are associated with this host.
            @components
            ## 
            # The hostCookies that are associated with this host.
            @cookies
            ## 
            # The first date and time this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            @first_seen_date_time
            ## 
            # The most recent date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # Passive DNS retrieval about this host.
            @passive_dns
            ## 
            # Reverse passive DNS retrieval about this host.
            @passive_dns_reverse
            ## 
            # Represents a calculated reputation of this host.
            @reputation
            ## 
            # The hostTrackers that are associated with this host.
            @trackers
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
            ## Instantiates a new host and sets the default values.
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
            ## Gets the firstSeenDateTime property value. The first date and time this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The first date and time this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
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
                    "components" => lambda {|n| @components = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostComponent.create_from_discriminator_value(pn) }) },
                    "cookies" => lambda {|n| @cookies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostCookie.create_from_discriminator_value(pn) }) },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "passiveDns" => lambda {|n| @passive_dns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityPassiveDnsRecord.create_from_discriminator_value(pn) }) },
                    "passiveDnsReverse" => lambda {|n| @passive_dns_reverse = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityPassiveDnsRecord.create_from_discriminator_value(pn) }) },
                    "reputation" => lambda {|n| @reputation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityHostReputation.create_from_discriminator_value(pn) }) },
                    "trackers" => lambda {|n| @trackers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostTracker.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastSeenDateTime property value. The most recent date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The most recent date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
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
                writer.write_collection_of_object_values("components", @components)
                writer.write_collection_of_object_values("cookies", @cookies)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_collection_of_object_values("passiveDns", @passive_dns)
                writer.write_collection_of_object_values("passiveDnsReverse", @passive_dns_reverse)
                writer.write_object_value("reputation", @reputation)
                writer.write_collection_of_object_values("trackers", @trackers)
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
        end
    end
end
