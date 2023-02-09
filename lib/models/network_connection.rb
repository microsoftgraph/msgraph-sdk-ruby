require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class NetworkConnection
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Name of the application managing the network connection (for example, Facebook or SMTP).
            @application_name
            ## 
            # Destination IP address (of the network connection).
            @destination_address
            ## 
            # Destination domain portion of the destination URL. (for example 'www.contoso.com').
            @destination_domain
            ## 
            # Location (by IP address mapping) associated with the destination of a network connection.
            @destination_location
            ## 
            # Destination port (of the network connection).
            @destination_port
            ## 
            # Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
            @destination_url
            ## 
            # Network connection direction. Possible values are: unknown, inbound, outbound.
            @direction
            ## 
            # Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @domain_registered_date_time
            ## 
            # The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
            @local_dns_name
            ## 
            # Network Address Translation destination IP address.
            @nat_destination_address
            ## 
            # Network Address Translation destination port.
            @nat_destination_port
            ## 
            # Network Address Translation source IP address.
            @nat_source_address
            ## 
            # Network Address Translation source port.
            @nat_source_port
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Network protocol. Possible values are: unknown, ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII.
            @protocol
            ## 
            # Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
            @risk_score
            ## 
            # Source (i.e. origin) IP address (of the network connection).
            @source_address
            ## 
            # Location (by IP address mapping) associated with the source of a network connection.
            @source_location
            ## 
            # Source (i.e. origin) IP port (of the network connection).
            @source_port
            ## 
            # Network connection status. Possible values are: unknown, attempted, succeeded, blocked, failed.
            @status
            ## 
            # Parameters (suffix) of the destination URL.
            @url_parameters
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
            ## Gets the applicationName property value. Name of the application managing the network connection (for example, Facebook or SMTP).
            ## @return a string
            ## 
            def application_name
                return @application_name
            end
            ## 
            ## Sets the applicationName property value. Name of the application managing the network connection (for example, Facebook or SMTP).
            ## @param value Value to set for the application_name property.
            ## @return a void
            ## 
            def application_name=(value)
                @application_name = value
            end
            ## 
            ## Instantiates a new networkConnection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a network_connection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkConnection.new
            end
            ## 
            ## Gets the destinationAddress property value. Destination IP address (of the network connection).
            ## @return a string
            ## 
            def destination_address
                return @destination_address
            end
            ## 
            ## Sets the destinationAddress property value. Destination IP address (of the network connection).
            ## @param value Value to set for the destination_address property.
            ## @return a void
            ## 
            def destination_address=(value)
                @destination_address = value
            end
            ## 
            ## Gets the destinationDomain property value. Destination domain portion of the destination URL. (for example 'www.contoso.com').
            ## @return a string
            ## 
            def destination_domain
                return @destination_domain
            end
            ## 
            ## Sets the destinationDomain property value. Destination domain portion of the destination URL. (for example 'www.contoso.com').
            ## @param value Value to set for the destination_domain property.
            ## @return a void
            ## 
            def destination_domain=(value)
                @destination_domain = value
            end
            ## 
            ## Gets the destinationLocation property value. Location (by IP address mapping) associated with the destination of a network connection.
            ## @return a string
            ## 
            def destination_location
                return @destination_location
            end
            ## 
            ## Sets the destinationLocation property value. Location (by IP address mapping) associated with the destination of a network connection.
            ## @param value Value to set for the destination_location property.
            ## @return a void
            ## 
            def destination_location=(value)
                @destination_location = value
            end
            ## 
            ## Gets the destinationPort property value. Destination port (of the network connection).
            ## @return a string
            ## 
            def destination_port
                return @destination_port
            end
            ## 
            ## Sets the destinationPort property value. Destination port (of the network connection).
            ## @param value Value to set for the destination_port property.
            ## @return a void
            ## 
            def destination_port=(value)
                @destination_port = value
            end
            ## 
            ## Gets the destinationUrl property value. Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
            ## @return a string
            ## 
            def destination_url
                return @destination_url
            end
            ## 
            ## Sets the destinationUrl property value. Network connection URL/URI string - excluding parameters. (for example 'www.contoso.com/products/default.html')
            ## @param value Value to set for the destination_url property.
            ## @return a void
            ## 
            def destination_url=(value)
                @destination_url = value
            end
            ## 
            ## Gets the direction property value. Network connection direction. Possible values are: unknown, inbound, outbound.
            ## @return a connection_direction
            ## 
            def direction
                return @direction
            end
            ## 
            ## Sets the direction property value. Network connection direction. Possible values are: unknown, inbound, outbound.
            ## @param value Value to set for the direction property.
            ## @return a void
            ## 
            def direction=(value)
                @direction = value
            end
            ## 
            ## Gets the domainRegisteredDateTime property value. Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def domain_registered_date_time
                return @domain_registered_date_time
            end
            ## 
            ## Sets the domainRegisteredDateTime property value. Date when the destination domain was registered. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the domain_registered_date_time property.
            ## @return a void
            ## 
            def domain_registered_date_time=(value)
                @domain_registered_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicationName" => lambda {|n| @application_name = n.get_string_value() },
                    "destinationAddress" => lambda {|n| @destination_address = n.get_string_value() },
                    "destinationDomain" => lambda {|n| @destination_domain = n.get_string_value() },
                    "destinationLocation" => lambda {|n| @destination_location = n.get_string_value() },
                    "destinationPort" => lambda {|n| @destination_port = n.get_string_value() },
                    "destinationUrl" => lambda {|n| @destination_url = n.get_string_value() },
                    "direction" => lambda {|n| @direction = n.get_enum_value(MicrosoftGraph::Models::ConnectionDirection) },
                    "domainRegisteredDateTime" => lambda {|n| @domain_registered_date_time = n.get_date_time_value() },
                    "localDnsName" => lambda {|n| @local_dns_name = n.get_string_value() },
                    "natDestinationAddress" => lambda {|n| @nat_destination_address = n.get_string_value() },
                    "natDestinationPort" => lambda {|n| @nat_destination_port = n.get_string_value() },
                    "natSourceAddress" => lambda {|n| @nat_source_address = n.get_string_value() },
                    "natSourcePort" => lambda {|n| @nat_source_port = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "protocol" => lambda {|n| @protocol = n.get_enum_value(MicrosoftGraph::Models::SecurityNetworkProtocol) },
                    "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                    "sourceAddress" => lambda {|n| @source_address = n.get_string_value() },
                    "sourceLocation" => lambda {|n| @source_location = n.get_string_value() },
                    "sourcePort" => lambda {|n| @source_port = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ConnectionStatus) },
                    "urlParameters" => lambda {|n| @url_parameters = n.get_string_value() },
                }
            end
            ## 
            ## Gets the localDnsName property value. The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
            ## @return a string
            ## 
            def local_dns_name
                return @local_dns_name
            end
            ## 
            ## Sets the localDnsName property value. The local DNS name resolution as it appears in the host's local DNS cache (for example, in case the 'hosts' file was tampered with).
            ## @param value Value to set for the local_dns_name property.
            ## @return a void
            ## 
            def local_dns_name=(value)
                @local_dns_name = value
            end
            ## 
            ## Gets the natDestinationAddress property value. Network Address Translation destination IP address.
            ## @return a string
            ## 
            def nat_destination_address
                return @nat_destination_address
            end
            ## 
            ## Sets the natDestinationAddress property value. Network Address Translation destination IP address.
            ## @param value Value to set for the nat_destination_address property.
            ## @return a void
            ## 
            def nat_destination_address=(value)
                @nat_destination_address = value
            end
            ## 
            ## Gets the natDestinationPort property value. Network Address Translation destination port.
            ## @return a string
            ## 
            def nat_destination_port
                return @nat_destination_port
            end
            ## 
            ## Sets the natDestinationPort property value. Network Address Translation destination port.
            ## @param value Value to set for the nat_destination_port property.
            ## @return a void
            ## 
            def nat_destination_port=(value)
                @nat_destination_port = value
            end
            ## 
            ## Gets the natSourceAddress property value. Network Address Translation source IP address.
            ## @return a string
            ## 
            def nat_source_address
                return @nat_source_address
            end
            ## 
            ## Sets the natSourceAddress property value. Network Address Translation source IP address.
            ## @param value Value to set for the nat_source_address property.
            ## @return a void
            ## 
            def nat_source_address=(value)
                @nat_source_address = value
            end
            ## 
            ## Gets the natSourcePort property value. Network Address Translation source port.
            ## @return a string
            ## 
            def nat_source_port
                return @nat_source_port
            end
            ## 
            ## Sets the natSourcePort property value. Network Address Translation source port.
            ## @param value Value to set for the nat_source_port property.
            ## @return a void
            ## 
            def nat_source_port=(value)
                @nat_source_port = value
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
            ## Gets the protocol property value. Network protocol. Possible values are: unknown, ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII.
            ## @return a security_network_protocol
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. Network protocol. Possible values are: unknown, ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII.
            ## @param value Value to set for the protocol property.
            ## @return a void
            ## 
            def protocol=(value)
                @protocol = value
            end
            ## 
            ## Gets the riskScore property value. Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
            ## @return a string
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. Provider generated/calculated risk score of the network connection. Recommended value range of 0-1, which equates to a percentage.
            ## @param value Value to set for the risk_score property.
            ## @return a void
            ## 
            def risk_score=(value)
                @risk_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("applicationName", @application_name)
                writer.write_string_value("destinationAddress", @destination_address)
                writer.write_string_value("destinationDomain", @destination_domain)
                writer.write_string_value("destinationLocation", @destination_location)
                writer.write_string_value("destinationPort", @destination_port)
                writer.write_string_value("destinationUrl", @destination_url)
                writer.write_enum_value("direction", @direction)
                writer.write_date_time_value("domainRegisteredDateTime", @domain_registered_date_time)
                writer.write_string_value("localDnsName", @local_dns_name)
                writer.write_string_value("natDestinationAddress", @nat_destination_address)
                writer.write_string_value("natDestinationPort", @nat_destination_port)
                writer.write_string_value("natSourceAddress", @nat_source_address)
                writer.write_string_value("natSourcePort", @nat_source_port)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("protocol", @protocol)
                writer.write_string_value("riskScore", @risk_score)
                writer.write_string_value("sourceAddress", @source_address)
                writer.write_string_value("sourceLocation", @source_location)
                writer.write_string_value("sourcePort", @source_port)
                writer.write_enum_value("status", @status)
                writer.write_string_value("urlParameters", @url_parameters)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceAddress property value. Source (i.e. origin) IP address (of the network connection).
            ## @return a string
            ## 
            def source_address
                return @source_address
            end
            ## 
            ## Sets the sourceAddress property value. Source (i.e. origin) IP address (of the network connection).
            ## @param value Value to set for the source_address property.
            ## @return a void
            ## 
            def source_address=(value)
                @source_address = value
            end
            ## 
            ## Gets the sourceLocation property value. Location (by IP address mapping) associated with the source of a network connection.
            ## @return a string
            ## 
            def source_location
                return @source_location
            end
            ## 
            ## Sets the sourceLocation property value. Location (by IP address mapping) associated with the source of a network connection.
            ## @param value Value to set for the source_location property.
            ## @return a void
            ## 
            def source_location=(value)
                @source_location = value
            end
            ## 
            ## Gets the sourcePort property value. Source (i.e. origin) IP port (of the network connection).
            ## @return a string
            ## 
            def source_port
                return @source_port
            end
            ## 
            ## Sets the sourcePort property value. Source (i.e. origin) IP port (of the network connection).
            ## @param value Value to set for the source_port property.
            ## @return a void
            ## 
            def source_port=(value)
                @source_port = value
            end
            ## 
            ## Gets the status property value. Network connection status. Possible values are: unknown, attempted, succeeded, blocked, failed.
            ## @return a connection_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Network connection status. Possible values are: unknown, attempted, succeeded, blocked, failed.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the urlParameters property value. Parameters (suffix) of the destination URL.
            ## @return a string
            ## 
            def url_parameters
                return @url_parameters
            end
            ## 
            ## Sets the urlParameters property value. Parameters (suffix) of the destination URL.
            ## @param value Value to set for the url_parameters property.
            ## @return a void
            ## 
            def url_parameters=(value)
                @url_parameters = value
            end
        end
    end
end
