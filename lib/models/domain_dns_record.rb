require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DomainDnsRecord < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If false, this record must be configured by the customer at the DNS host for Microsoft Online Services to operate correctly with the domain.
            @is_optional
            ## 
            # Value used when configuring the name of the DNS record at the DNS host.
            @label
            ## 
            # Indicates what type of DNS record this entity represents.The value can be one of the following: CName, Mx, Srv, Txt.
            @record_type
            ## 
            # Microsoft Online Service or feature that has a dependency on this DNS record.Can be one of the following values: null, Email, Sharepoint, EmailInternalRelayOnly, OfficeCommunicationsOnline, SharePointDefaultDomain, FullRedelegation, SharePointPublic, OrgIdAuthentication, Yammer, Intune.
            @supported_service
            ## 
            # Value to use when configuring the time-to-live (ttl) property of the DNS record at the DNS host. Not nullable.
            @ttl
            ## 
            ## Instantiates a new domainDnsRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain_dns_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.domainDnsCnameRecord"
                            return DomainDnsCnameRecord.new
                        when "#microsoft.graph.domainDnsMxRecord"
                            return DomainDnsMxRecord.new
                        when "#microsoft.graph.domainDnsSrvRecord"
                            return DomainDnsSrvRecord.new
                        when "#microsoft.graph.domainDnsTxtRecord"
                            return DomainDnsTxtRecord.new
                        when "#microsoft.graph.domainDnsUnavailableRecord"
                            return DomainDnsUnavailableRecord.new
                    end
                end
                return DomainDnsRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isOptional" => lambda {|n| @is_optional = n.get_boolean_value() },
                    "label" => lambda {|n| @label = n.get_string_value() },
                    "recordType" => lambda {|n| @record_type = n.get_string_value() },
                    "supportedService" => lambda {|n| @supported_service = n.get_string_value() },
                    "ttl" => lambda {|n| @ttl = n.get_number_value() },
                })
            end
            ## 
            ## Gets the isOptional property value. If false, this record must be configured by the customer at the DNS host for Microsoft Online Services to operate correctly with the domain.
            ## @return a boolean
            ## 
            def is_optional
                return @is_optional
            end
            ## 
            ## Sets the isOptional property value. If false, this record must be configured by the customer at the DNS host for Microsoft Online Services to operate correctly with the domain.
            ## @param value Value to set for the is_optional property.
            ## @return a void
            ## 
            def is_optional=(value)
                @is_optional = value
            end
            ## 
            ## Gets the label property value. Value used when configuring the name of the DNS record at the DNS host.
            ## @return a string
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. Value used when configuring the name of the DNS record at the DNS host.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
            end
            ## 
            ## Gets the recordType property value. Indicates what type of DNS record this entity represents.The value can be one of the following: CName, Mx, Srv, Txt.
            ## @return a string
            ## 
            def record_type
                return @record_type
            end
            ## 
            ## Sets the recordType property value. Indicates what type of DNS record this entity represents.The value can be one of the following: CName, Mx, Srv, Txt.
            ## @param value Value to set for the record_type property.
            ## @return a void
            ## 
            def record_type=(value)
                @record_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isOptional", @is_optional)
                writer.write_string_value("label", @label)
                writer.write_string_value("recordType", @record_type)
                writer.write_string_value("supportedService", @supported_service)
                writer.write_number_value("ttl", @ttl)
            end
            ## 
            ## Gets the supportedService property value. Microsoft Online Service or feature that has a dependency on this DNS record.Can be one of the following values: null, Email, Sharepoint, EmailInternalRelayOnly, OfficeCommunicationsOnline, SharePointDefaultDomain, FullRedelegation, SharePointPublic, OrgIdAuthentication, Yammer, Intune.
            ## @return a string
            ## 
            def supported_service
                return @supported_service
            end
            ## 
            ## Sets the supportedService property value. Microsoft Online Service or feature that has a dependency on this DNS record.Can be one of the following values: null, Email, Sharepoint, EmailInternalRelayOnly, OfficeCommunicationsOnline, SharePointDefaultDomain, FullRedelegation, SharePointPublic, OrgIdAuthentication, Yammer, Intune.
            ## @param value Value to set for the supported_service property.
            ## @return a void
            ## 
            def supported_service=(value)
                @supported_service = value
            end
            ## 
            ## Gets the ttl property value. Value to use when configuring the time-to-live (ttl) property of the DNS record at the DNS host. Not nullable.
            ## @return a integer
            ## 
            def ttl
                return @ttl
            end
            ## 
            ## Sets the ttl property value. Value to use when configuring the time-to-live (ttl) property of the DNS record at the DNS host. Not nullable.
            ## @param value Value to set for the ttl property.
            ## @return a void
            ## 
            def ttl=(value)
                @ttl = value
            end
        end
    end
end
