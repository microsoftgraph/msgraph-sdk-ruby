require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SamlOrWsFedExternalDomainFederation < MicrosoftGraph::Models::SamlOrWsFedProvider
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of domain names of the external organizations that the tenant is federating with. Supports $filter (eq).
            @domains
            ## 
            ## Instantiates a new SamlOrWsFedExternalDomainFederation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.samlOrWsFedExternalDomainFederation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a saml_or_ws_fed_external_domain_federation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SamlOrWsFedExternalDomainFederation.new
            end
            ## 
            ## Gets the domains property value. Collection of domain names of the external organizations that the tenant is federating with. Supports $filter (eq).
            ## @return a external_domain_name
            ## 
            def domains
                return @domains
            end
            ## 
            ## Sets the domains property value. Collection of domain names of the external organizations that the tenant is federating with. Supports $filter (eq).
            ## @param value Value to set for the domains property.
            ## @return a void
            ## 
            def domains=(value)
                @domains = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "domains" => lambda {|n| @domains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalDomainName.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("domains", @domains)
            end
        end
    end
end
