require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CertificateBasedAuthConfiguration < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of certificate authorities which creates a trusted certificate chain.
            @certificate_authorities
            ## 
            ## Gets the certificateAuthorities property value. Collection of certificate authorities which creates a trusted certificate chain.
            ## @return a certificate_authority
            ## 
            def certificate_authorities
                return @certificate_authorities
            end
            ## 
            ## Sets the certificateAuthorities property value. Collection of certificate authorities which creates a trusted certificate chain.
            ## @param value Value to set for the certificate_authorities property.
            ## @return a void
            ## 
            def certificate_authorities=(value)
                @certificate_authorities = value
            end
            ## 
            ## Instantiates a new certificateBasedAuthConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a certificate_based_auth_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CertificateBasedAuthConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateAuthorities" => lambda {|n| @certificate_authorities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CertificateAuthority.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("certificateAuthorities", @certificate_authorities)
            end
        end
    end
end
