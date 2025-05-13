require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnTokenIssuanceStartCustomExtension < MicrosoftGraph::Models::CustomAuthenticationExtension
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of claims to be returned by the API called by this custom authentication extension. Used to populate claims mapping experience in Microsoft Entra admin center. Optional.
            @claims_for_token_configuration
            ## 
            ## Gets the claimsForTokenConfiguration property value. Collection of claims to be returned by the API called by this custom authentication extension. Used to populate claims mapping experience in Microsoft Entra admin center. Optional.
            ## @return a on_token_issuance_start_return_claim
            ## 
            def claims_for_token_configuration
                return @claims_for_token_configuration
            end
            ## 
            ## Sets the claimsForTokenConfiguration property value. Collection of claims to be returned by the API called by this custom authentication extension. Used to populate claims mapping experience in Microsoft Entra admin center. Optional.
            ## @param value Value to set for the claimsForTokenConfiguration property.
            ## @return a void
            ## 
            def claims_for_token_configuration=(value)
                @claims_for_token_configuration = value
            end
            ## 
            ## Instantiates a new OnTokenIssuanceStartCustomExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onTokenIssuanceStartCustomExtension"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_token_issuance_start_custom_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnTokenIssuanceStartCustomExtension.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "claimsForTokenConfiguration" => lambda {|n| @claims_for_token_configuration = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnTokenIssuanceStartReturnClaim.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("claimsForTokenConfiguration", @claims_for_token_configuration)
            end
        end
    end
end
