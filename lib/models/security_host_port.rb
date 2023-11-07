require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityHostPort < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The hostPortBanners retrieved from scanning the port.
            @banners
            ## 
            # The first date and time when Microsoft Defender Threat Intelligence observed the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            @first_seen_date_time
            ## 
            # The host property
            @host
            ## 
            # The last date and time when Microsoft Defender Threat Intelligence scanned the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            @last_scan_date_time
            ## 
            # The last date and time when Microsoft Defender Threat Intelligence observed the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # The most recent sslCertificate used to communicate on the port.
            @most_recent_ssl_certificate
            ## 
            # The numerical identifier of the port which is standardized across the internet.
            @port
            ## 
            # The general protocol used to scan the port. The possible values are: tcp, udp, unknownFutureValue.
            @protocol
            ## 
            # The hostPortComponents retrieved from scanning the port.
            @services
            ## 
            # The status of the port. The possible values are: open, filtered, closed, unknownFutureValue.
            @status
            ## 
            # The total amount of times that Microsoft Defender Threat Intelligence has observed the hostPort in all its scans.
            @times_observed
            ## 
            ## Gets the banners property value. The hostPortBanners retrieved from scanning the port.
            ## @return a security_host_port_banner
            ## 
            def banners
                return @banners
            end
            ## 
            ## Sets the banners property value. The hostPortBanners retrieved from scanning the port.
            ## @param value Value to set for the banners property.
            ## @return a void
            ## 
            def banners=(value)
                @banners = value
            end
            ## 
            ## Instantiates a new securityHostPort and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_host_port
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityHostPort.new
            end
            ## 
            ## Gets the firstSeenDateTime property value. The first date and time when Microsoft Defender Threat Intelligence observed the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The first date and time when Microsoft Defender Threat Intelligence observed the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
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
                    "banners" => lambda {|n| @banners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostPortBanner.create_from_discriminator_value(pn) }) },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "host" => lambda {|n| @host = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityHost.create_from_discriminator_value(pn) }) },
                    "lastScanDateTime" => lambda {|n| @last_scan_date_time = n.get_date_time_value() },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "mostRecentSslCertificate" => lambda {|n| @most_recent_ssl_certificate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecuritySslCertificate.create_from_discriminator_value(pn) }) },
                    "port" => lambda {|n| @port = n.get_number_value() },
                    "protocol" => lambda {|n| @protocol = n.get_enum_value(MicrosoftGraph::Models::SecurityHostPortProtocol) },
                    "services" => lambda {|n| @services = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostPortComponent.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SecurityHostPortStatus) },
                    "timesObserved" => lambda {|n| @times_observed = n.get_number_value() },
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
            ## Gets the lastScanDateTime property value. The last date and time when Microsoft Defender Threat Intelligence scanned the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_scan_date_time
                return @last_scan_date_time
            end
            ## 
            ## Sets the lastScanDateTime property value. The last date and time when Microsoft Defender Threat Intelligence scanned the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastScanDateTime property.
            ## @return a void
            ## 
            def last_scan_date_time=(value)
                @last_scan_date_time = value
            end
            ## 
            ## Gets the lastSeenDateTime property value. The last date and time when Microsoft Defender Threat Intelligence observed the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The last date and time when Microsoft Defender Threat Intelligence observed the hostPort. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the mostRecentSslCertificate property value. The most recent sslCertificate used to communicate on the port.
            ## @return a security_ssl_certificate
            ## 
            def most_recent_ssl_certificate
                return @most_recent_ssl_certificate
            end
            ## 
            ## Sets the mostRecentSslCertificate property value. The most recent sslCertificate used to communicate on the port.
            ## @param value Value to set for the mostRecentSslCertificate property.
            ## @return a void
            ## 
            def most_recent_ssl_certificate=(value)
                @most_recent_ssl_certificate = value
            end
            ## 
            ## Gets the port property value. The numerical identifier of the port which is standardized across the internet.
            ## @return a integer
            ## 
            def port
                return @port
            end
            ## 
            ## Sets the port property value. The numerical identifier of the port which is standardized across the internet.
            ## @param value Value to set for the port property.
            ## @return a void
            ## 
            def port=(value)
                @port = value
            end
            ## 
            ## Gets the protocol property value. The general protocol used to scan the port. The possible values are: tcp, udp, unknownFutureValue.
            ## @return a security_host_port_protocol
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. The general protocol used to scan the port. The possible values are: tcp, udp, unknownFutureValue.
            ## @param value Value to set for the protocol property.
            ## @return a void
            ## 
            def protocol=(value)
                @protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("banners", @banners)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_object_value("host", @host)
                writer.write_date_time_value("lastScanDateTime", @last_scan_date_time)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_object_value("mostRecentSslCertificate", @most_recent_ssl_certificate)
                writer.write_number_value("port", @port)
                writer.write_enum_value("protocol", @protocol)
                writer.write_collection_of_object_values("services", @services)
                writer.write_enum_value("status", @status)
                writer.write_number_value("timesObserved", @times_observed)
            end
            ## 
            ## Gets the services property value. The hostPortComponents retrieved from scanning the port.
            ## @return a security_host_port_component
            ## 
            def services
                return @services
            end
            ## 
            ## Sets the services property value. The hostPortComponents retrieved from scanning the port.
            ## @param value Value to set for the services property.
            ## @return a void
            ## 
            def services=(value)
                @services = value
            end
            ## 
            ## Gets the status property value. The status of the port. The possible values are: open, filtered, closed, unknownFutureValue.
            ## @return a security_host_port_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the port. The possible values are: open, filtered, closed, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the timesObserved property value. The total amount of times that Microsoft Defender Threat Intelligence has observed the hostPort in all its scans.
            ## @return a integer
            ## 
            def times_observed
                return @times_observed
            end
            ## 
            ## Sets the timesObserved property value. The total amount of times that Microsoft Defender Threat Intelligence has observed the hostPort in all its scans.
            ## @param value Value to set for the timesObserved property.
            ## @return a void
            ## 
            def times_observed=(value)
                @times_observed = value
            end
        end
    end
end
