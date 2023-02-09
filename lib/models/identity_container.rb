require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityContainer < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents entry point for API connectors.
            @api_connectors
            ## 
            # Represents entry point for B2X/self-service sign-up identity userflows.
            @b2x_user_flows
            ## 
            # the entry point for the Conditional Access (CA) object model.
            @conditional_access
            ## 
            # The identityProviders property
            @identity_providers
            ## 
            # Represents entry point for identity userflow attributes.
            @user_flow_attributes
            ## 
            ## Gets the apiConnectors property value. Represents entry point for API connectors.
            ## @return a identity_api_connector
            ## 
            def api_connectors
                return @api_connectors
            end
            ## 
            ## Sets the apiConnectors property value. Represents entry point for API connectors.
            ## @param value Value to set for the api_connectors property.
            ## @return a void
            ## 
            def api_connectors=(value)
                @api_connectors = value
            end
            ## 
            ## Gets the b2xUserFlows property value. Represents entry point for B2X/self-service sign-up identity userflows.
            ## @return a b2x_identity_user_flow
            ## 
            def b2x_user_flows
                return @b2x_user_flows
            end
            ## 
            ## Sets the b2xUserFlows property value. Represents entry point for B2X/self-service sign-up identity userflows.
            ## @param value Value to set for the b2x_user_flows property.
            ## @return a void
            ## 
            def b2x_user_flows=(value)
                @b2x_user_flows = value
            end
            ## 
            ## Gets the conditionalAccess property value. the entry point for the Conditional Access (CA) object model.
            ## @return a conditional_access_root
            ## 
            def conditional_access
                return @conditional_access
            end
            ## 
            ## Sets the conditionalAccess property value. the entry point for the Conditional Access (CA) object model.
            ## @param value Value to set for the conditional_access property.
            ## @return a void
            ## 
            def conditional_access=(value)
                @conditional_access = value
            end
            ## 
            ## Instantiates a new IdentityContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityContainer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "apiConnectors" => lambda {|n| @api_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityApiConnector.create_from_discriminator_value(pn) }) },
                    "b2xUserFlows" => lambda {|n| @b2x_user_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::B2xIdentityUserFlow.create_from_discriminator_value(pn) }) },
                    "conditionalAccess" => lambda {|n| @conditional_access = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessRoot.create_from_discriminator_value(pn) }) },
                    "identityProviders" => lambda {|n| @identity_providers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityProviderBase.create_from_discriminator_value(pn) }) },
                    "userFlowAttributes" => lambda {|n| @user_flow_attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityUserFlowAttribute.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identityProviders property value. The identityProviders property
            ## @return a identity_provider_base
            ## 
            def identity_providers
                return @identity_providers
            end
            ## 
            ## Sets the identityProviders property value. The identityProviders property
            ## @param value Value to set for the identity_providers property.
            ## @return a void
            ## 
            def identity_providers=(value)
                @identity_providers = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("apiConnectors", @api_connectors)
                writer.write_collection_of_object_values("b2xUserFlows", @b2x_user_flows)
                writer.write_object_value("conditionalAccess", @conditional_access)
                writer.write_collection_of_object_values("identityProviders", @identity_providers)
                writer.write_collection_of_object_values("userFlowAttributes", @user_flow_attributes)
            end
            ## 
            ## Gets the userFlowAttributes property value. Represents entry point for identity userflow attributes.
            ## @return a identity_user_flow_attribute
            ## 
            def user_flow_attributes
                return @user_flow_attributes
            end
            ## 
            ## Sets the userFlowAttributes property value. Represents entry point for identity userflow attributes.
            ## @param value Value to set for the user_flow_attributes property.
            ## @return a void
            ## 
            def user_flow_attributes=(value)
                @user_flow_attributes = value
            end
        end
    end
end
