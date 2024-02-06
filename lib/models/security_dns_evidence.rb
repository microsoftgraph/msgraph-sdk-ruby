require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityDnsEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The dnsServerIp property
            @dns_server_ip
            ## 
            # The domainName property
            @domain_name
            ## 
            # The hostIpAddress property
            @host_ip_address
            ## 
            # The ipAddresses property
            @ip_addresses
            ## 
            ## Instantiates a new securityDnsEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.dnsEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_dns_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDnsEvidence.new
            end
            ## 
            ## Gets the dnsServerIp property value. The dnsServerIp property
            ## @return a security_ip_evidence
            ## 
            def dns_server_ip
                return @dns_server_ip
            end
            ## 
            ## Sets the dnsServerIp property value. The dnsServerIp property
            ## @param value Value to set for the dnsServerIp property.
            ## @return a void
            ## 
            def dns_server_ip=(value)
                @dns_server_ip = value
            end
            ## 
            ## Gets the domainName property value. The domainName property
            ## @return a string
            ## 
            def domain_name
                return @domain_name
            end
            ## 
            ## Sets the domainName property value. The domainName property
            ## @param value Value to set for the domainName property.
            ## @return a void
            ## 
            def domain_name=(value)
                @domain_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "dnsServerIp" => lambda {|n| @dns_server_ip = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityIpEvidence.create_from_discriminator_value(pn) }) },
                    "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                    "hostIpAddress" => lambda {|n| @host_ip_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityIpEvidence.create_from_discriminator_value(pn) }) },
                    "ipAddresses" => lambda {|n| @ip_addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityIpEvidence.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hostIpAddress property value. The hostIpAddress property
            ## @return a security_ip_evidence
            ## 
            def host_ip_address
                return @host_ip_address
            end
            ## 
            ## Sets the hostIpAddress property value. The hostIpAddress property
            ## @param value Value to set for the hostIpAddress property.
            ## @return a void
            ## 
            def host_ip_address=(value)
                @host_ip_address = value
            end
            ## 
            ## Gets the ipAddresses property value. The ipAddresses property
            ## @return a security_ip_evidence
            ## 
            def ip_addresses
                return @ip_addresses
            end
            ## 
            ## Sets the ipAddresses property value. The ipAddresses property
            ## @param value Value to set for the ipAddresses property.
            ## @return a void
            ## 
            def ip_addresses=(value)
                @ip_addresses = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("dnsServerIp", @dns_server_ip)
                writer.write_string_value("domainName", @domain_name)
                writer.write_object_value("hostIpAddress", @host_ip_address)
                writer.write_collection_of_object_values("ipAddresses", @ip_addresses)
            end
        end
    end
end
