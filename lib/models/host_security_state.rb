require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class HostSecurityState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
            @fqdn
            ## 
            # The isAzureAdJoined property
            @is_azure_ad_joined
            ## 
            # The isAzureAdRegistered property
            @is_azure_ad_registered
            ## 
            # True if the host is domain joined to an on-premises Active Directory domain.
            @is_hybrid_azure_domain_joined
            ## 
            # The local host name, without the DNS domain name.
            @net_bios_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
            @os
            ## 
            # Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
            @private_ip_address
            ## 
            # Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
            @public_ip_address
            ## 
            # Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.
            @risk_score
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
            ## Instantiates a new hostSecurityState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a host_security_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HostSecurityState.new
            end
            ## 
            ## Gets the fqdn property value. Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
            ## @return a string
            ## 
            def fqdn
                return @fqdn
            end
            ## 
            ## Sets the fqdn property value. Host FQDN (Fully Qualified Domain Name) (for example, machine.company.com).
            ## @param value Value to set for the fqdn property.
            ## @return a void
            ## 
            def fqdn=(value)
                @fqdn = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "fqdn" => lambda {|n| @fqdn = n.get_string_value() },
                    "isAzureAdJoined" => lambda {|n| @is_azure_ad_joined = n.get_boolean_value() },
                    "isAzureAdRegistered" => lambda {|n| @is_azure_ad_registered = n.get_boolean_value() },
                    "isHybridAzureDomainJoined" => lambda {|n| @is_hybrid_azure_domain_joined = n.get_boolean_value() },
                    "netBiosName" => lambda {|n| @net_bios_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "os" => lambda {|n| @os = n.get_string_value() },
                    "privateIpAddress" => lambda {|n| @private_ip_address = n.get_string_value() },
                    "publicIpAddress" => lambda {|n| @public_ip_address = n.get_string_value() },
                    "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isAzureAdJoined property value. The isAzureAdJoined property
            ## @return a boolean
            ## 
            def is_azure_ad_joined
                return @is_azure_ad_joined
            end
            ## 
            ## Sets the isAzureAdJoined property value. The isAzureAdJoined property
            ## @param value Value to set for the is_azure_ad_joined property.
            ## @return a void
            ## 
            def is_azure_ad_joined=(value)
                @is_azure_ad_joined = value
            end
            ## 
            ## Gets the isAzureAdRegistered property value. The isAzureAdRegistered property
            ## @return a boolean
            ## 
            def is_azure_ad_registered
                return @is_azure_ad_registered
            end
            ## 
            ## Sets the isAzureAdRegistered property value. The isAzureAdRegistered property
            ## @param value Value to set for the is_azure_ad_registered property.
            ## @return a void
            ## 
            def is_azure_ad_registered=(value)
                @is_azure_ad_registered = value
            end
            ## 
            ## Gets the isHybridAzureDomainJoined property value. True if the host is domain joined to an on-premises Active Directory domain.
            ## @return a boolean
            ## 
            def is_hybrid_azure_domain_joined
                return @is_hybrid_azure_domain_joined
            end
            ## 
            ## Sets the isHybridAzureDomainJoined property value. True if the host is domain joined to an on-premises Active Directory domain.
            ## @param value Value to set for the is_hybrid_azure_domain_joined property.
            ## @return a void
            ## 
            def is_hybrid_azure_domain_joined=(value)
                @is_hybrid_azure_domain_joined = value
            end
            ## 
            ## Gets the netBiosName property value. The local host name, without the DNS domain name.
            ## @return a string
            ## 
            def net_bios_name
                return @net_bios_name
            end
            ## 
            ## Sets the netBiosName property value. The local host name, without the DNS domain name.
            ## @param value Value to set for the net_bios_name property.
            ## @return a void
            ## 
            def net_bios_name=(value)
                @net_bios_name = value
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
            ## Gets the os property value. Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
            ## @return a string
            ## 
            def os
                return @os
            end
            ## 
            ## Sets the os property value. Host Operating System. (For example, Windows10, MacOS, RHEL, etc.).
            ## @param value Value to set for the os property.
            ## @return a void
            ## 
            def os=(value)
                @os = value
            end
            ## 
            ## Gets the privateIpAddress property value. Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
            ## @return a string
            ## 
            def private_ip_address
                return @private_ip_address
            end
            ## 
            ## Sets the privateIpAddress property value. Private (not routable) IPv4 or IPv6 address (see RFC 1918) at the time of the alert.
            ## @param value Value to set for the private_ip_address property.
            ## @return a void
            ## 
            def private_ip_address=(value)
                @private_ip_address = value
            end
            ## 
            ## Gets the publicIpAddress property value. Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
            ## @return a string
            ## 
            def public_ip_address
                return @public_ip_address
            end
            ## 
            ## Sets the publicIpAddress property value. Publicly routable IPv4 or IPv6 address (see RFC 1918) at time of the alert.
            ## @param value Value to set for the public_ip_address property.
            ## @return a void
            ## 
            def public_ip_address=(value)
                @public_ip_address = value
            end
            ## 
            ## Gets the riskScore property value. Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.
            ## @return a string
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. Provider-generated/calculated risk score of the host.  Recommended value range of 0-1, which equates to a percentage.
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
                writer.write_string_value("fqdn", @fqdn)
                writer.write_boolean_value("isAzureAdJoined", @is_azure_ad_joined)
                writer.write_boolean_value("isAzureAdRegistered", @is_azure_ad_registered)
                writer.write_boolean_value("isHybridAzureDomainJoined", @is_hybrid_azure_domain_joined)
                writer.write_string_value("netBiosName", @net_bios_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("os", @os)
                writer.write_string_value("privateIpAddress", @private_ip_address)
                writer.write_string_value("publicIpAddress", @public_ip_address)
                writer.write_string_value("riskScore", @risk_score)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
