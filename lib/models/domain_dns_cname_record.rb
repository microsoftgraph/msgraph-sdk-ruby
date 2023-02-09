require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DomainDnsCnameRecord < MicrosoftGraph::Models::DomainDnsRecord
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The canonical name of the CNAME record. Used to configure the CNAME record at the DNS host.
            @canonical_name
            ## 
            ## Gets the canonicalName property value. The canonical name of the CNAME record. Used to configure the CNAME record at the DNS host.
            ## @return a string
            ## 
            def canonical_name
                return @canonical_name
            end
            ## 
            ## Sets the canonicalName property value. The canonical name of the CNAME record. Used to configure the CNAME record at the DNS host.
            ## @param value Value to set for the canonical_name property.
            ## @return a void
            ## 
            def canonical_name=(value)
                @canonical_name = value
            end
            ## 
            ## Instantiates a new DomainDnsCnameRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain_dns_cname_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DomainDnsCnameRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "canonicalName" => lambda {|n| @canonical_name = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("canonicalName", @canonical_name)
            end
        end
    end
end
