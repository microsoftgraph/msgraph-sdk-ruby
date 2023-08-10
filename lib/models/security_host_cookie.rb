require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityHostCookie < MicrosoftGraph::Models::SecurityArtifact
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The URI for which the cookie is valid.
            @domain
            ## 
            # The first date and time when this hostCookie was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            @first_seen_date_time
            ## 
            # The host property
            @host
            ## 
            # The most recent date and time when this hostCookie was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # The name of the cookie, for example, JSESSIONID or SEARCH_NAMESITE.
            @name
            ## 
            ## Instantiates a new securityHostCookie and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.hostCookie"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_host_cookie
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityHostCookie.new
            end
            ## 
            ## Gets the domain property value. The URI for which the cookie is valid.
            ## @return a string
            ## 
            def domain
                return @domain
            end
            ## 
            ## Sets the domain property value. The URI for which the cookie is valid.
            ## @param value Value to set for the domain property.
            ## @return a void
            ## 
            def domain=(value)
                @domain = value
            end
            ## 
            ## Gets the firstSeenDateTime property value. The first date and time when this hostCookie was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The first date and time when this hostCookie was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
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
                    "domain" => lambda {|n| @domain = n.get_string_value() },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "host" => lambda {|n| @host = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityHost.create_from_discriminator_value(pn) }) },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
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
            ## Gets the lastSeenDateTime property value. The most recent date and time when this hostCookie was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The most recent date and time when this hostCookie was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the name property value. The name of the cookie, for example, JSESSIONID or SEARCH_NAMESITE.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the cookie, for example, JSESSIONID or SEARCH_NAMESITE.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("domain", @domain)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_object_value("host", @host)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_string_value("name", @name)
            end
        end
    end
end
