require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InvitationRedemptionIdentityProviderConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The fallback identity provider to be used in case no primary identity provider can be used for guest invitation redemption. Possible values are: defaultConfiguredIdp, emailOneTimePasscode, or microsoftAccount.
            @fallback_identity_provider
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Collection of identity providers in priority order of preference to be used for guest invitation redemption. Possible values are: azureActiveDirectory, externalFederation, or socialIdentityProviders.
            @primary_identity_provider_precedence_order
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new InvitationRedemptionIdentityProviderConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a invitation_redemption_identity_provider_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.defaultInvitationRedemptionIdentityProviderConfiguration"
                            return DefaultInvitationRedemptionIdentityProviderConfiguration.new
                    end
                end
                return InvitationRedemptionIdentityProviderConfiguration.new
            end
            ## 
            ## Gets the fallbackIdentityProvider property value. The fallback identity provider to be used in case no primary identity provider can be used for guest invitation redemption. Possible values are: defaultConfiguredIdp, emailOneTimePasscode, or microsoftAccount.
            ## @return a b2b_identity_providers_type
            ## 
            def fallback_identity_provider
                return @fallback_identity_provider
            end
            ## 
            ## Sets the fallbackIdentityProvider property value. The fallback identity provider to be used in case no primary identity provider can be used for guest invitation redemption. Possible values are: defaultConfiguredIdp, emailOneTimePasscode, or microsoftAccount.
            ## @param value Value to set for the fallbackIdentityProvider property.
            ## @return a void
            ## 
            def fallback_identity_provider=(value)
                @fallback_identity_provider = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "fallbackIdentityProvider" => lambda {|n| @fallback_identity_provider = n.get_enum_value(MicrosoftGraph::Models::B2bIdentityProvidersType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "primaryIdentityProviderPrecedenceOrder" => lambda {|n| @primary_identity_provider_precedence_order = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::B2bIdentityProvidersType.create_from_discriminator_value(pn) }) },
                }
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the primaryIdentityProviderPrecedenceOrder property value. Collection of identity providers in priority order of preference to be used for guest invitation redemption. Possible values are: azureActiveDirectory, externalFederation, or socialIdentityProviders.
            ## @return a b2b_identity_providers_type
            ## 
            def primary_identity_provider_precedence_order
                return @primary_identity_provider_precedence_order
            end
            ## 
            ## Sets the primaryIdentityProviderPrecedenceOrder property value. Collection of identity providers in priority order of preference to be used for guest invitation redemption. Possible values are: azureActiveDirectory, externalFederation, or socialIdentityProviders.
            ## @param value Value to set for the primaryIdentityProviderPrecedenceOrder property.
            ## @return a void
            ## 
            def primary_identity_provider_precedence_order=(value)
                @primary_identity_provider_precedence_order = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("fallbackIdentityProvider", @fallback_identity_provider)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("primaryIdentityProviderPrecedenceOrder", @primary_identity_provider_precedence_order)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
