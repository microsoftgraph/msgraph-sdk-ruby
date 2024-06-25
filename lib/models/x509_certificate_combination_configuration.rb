require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class X509CertificateCombinationConfiguration < MicrosoftGraph::Models::AuthenticationCombinationConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The allowedIssuerSkis property
            @allowed_issuer_skis
            ## 
            # The allowedPolicyOIDs property
            @allowed_policy_o_i_ds
            ## 
            ## Gets the allowedIssuerSkis property value. The allowedIssuerSkis property
            ## @return a string
            ## 
            def allowed_issuer_skis
                return @allowed_issuer_skis
            end
            ## 
            ## Sets the allowedIssuerSkis property value. The allowedIssuerSkis property
            ## @param value Value to set for the allowedIssuerSkis property.
            ## @return a void
            ## 
            def allowed_issuer_skis=(value)
                @allowed_issuer_skis = value
            end
            ## 
            ## Gets the allowedPolicyOIDs property value. The allowedPolicyOIDs property
            ## @return a string
            ## 
            def allowed_policy_o_i_ds
                return @allowed_policy_o_i_ds
            end
            ## 
            ## Sets the allowedPolicyOIDs property value. The allowedPolicyOIDs property
            ## @param value Value to set for the allowedPolicyOIDs property.
            ## @return a void
            ## 
            def allowed_policy_o_i_ds=(value)
                @allowed_policy_o_i_ds = value
            end
            ## 
            ## Instantiates a new X509CertificateCombinationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.x509CertificateCombinationConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a x509_certificate_combination_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return X509CertificateCombinationConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedIssuerSkis" => lambda {|n| @allowed_issuer_skis = n.get_collection_of_primitive_values(String) },
                    "allowedPolicyOIDs" => lambda {|n| @allowed_policy_o_i_ds = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("allowedIssuerSkis", @allowed_issuer_skis)
                writer.write_collection_of_primitive_values("allowedPolicyOIDs", @allowed_policy_o_i_ds)
            end
        end
    end
end
