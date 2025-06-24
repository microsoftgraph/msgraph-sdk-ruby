require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PublicKeyInfrastructureRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The certificateBasedAuthConfigurations property
            @certificate_based_auth_configurations
            ## 
            ## Gets the certificateBasedAuthConfigurations property value. The certificateBasedAuthConfigurations property
            ## @return a certificate_based_auth_pki
            ## 
            def certificate_based_auth_configurations
                return @certificate_based_auth_configurations
            end
            ## 
            ## Sets the certificateBasedAuthConfigurations property value. The certificateBasedAuthConfigurations property
            ## @param value Value to set for the certificateBasedAuthConfigurations property.
            ## @return a void
            ## 
            def certificate_based_auth_configurations=(value)
                @certificate_based_auth_configurations = value
            end
            ## 
            ## Instantiates a new PublicKeyInfrastructureRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a public_key_infrastructure_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PublicKeyInfrastructureRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateBasedAuthConfigurations" => lambda {|n| @certificate_based_auth_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CertificateBasedAuthPki.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("certificateBasedAuthConfigurations", @certificate_based_auth_configurations)
            end
        end
    end
end
