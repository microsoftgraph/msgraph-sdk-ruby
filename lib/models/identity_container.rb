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
            # Represents listeners for custom authentication extension events in Azure AD for workforce and customers.
            @authentication_event_listeners
            ## 
            # Represents the entry point for self-service sign-up and sign-in user flows in both Microsoft Entra workforce and external tenants.
            @authentication_events_flows
            ## 
            # Represents entry point for B2X/self-service sign-up identity userflows.
            @b2x_user_flows
            ## 
            # the entry point for the Conditional Access (CA) object model.
            @conditional_access
            ## 
            # Represents custom extensions to authentication flows in Azure AD for workforce and customers.
            @custom_authentication_extensions
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
            ## @param value Value to set for the apiConnectors property.
            ## @return a void
            ## 
            def api_connectors=(value)
                @api_connectors = value
            end
            ## 
            ## Gets the authenticationEventListeners property value. Represents listeners for custom authentication extension events in Azure AD for workforce and customers.
            ## @return a authentication_event_listener
            ## 
            def authentication_event_listeners
                return @authentication_event_listeners
            end
            ## 
            ## Sets the authenticationEventListeners property value. Represents listeners for custom authentication extension events in Azure AD for workforce and customers.
            ## @param value Value to set for the authenticationEventListeners property.
            ## @return a void
            ## 
            def authentication_event_listeners=(value)
                @authentication_event_listeners = value
            end
            ## 
            ## Gets the authenticationEventsFlows property value. Represents the entry point for self-service sign-up and sign-in user flows in both Microsoft Entra workforce and external tenants.
            ## @return a authentication_events_flow
            ## 
            def authentication_events_flows
                return @authentication_events_flows
            end
            ## 
            ## Sets the authenticationEventsFlows property value. Represents the entry point for self-service sign-up and sign-in user flows in both Microsoft Entra workforce and external tenants.
            ## @param value Value to set for the authenticationEventsFlows property.
            ## @return a void
            ## 
            def authentication_events_flows=(value)
                @authentication_events_flows = value
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
            ## @param value Value to set for the b2xUserFlows property.
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
            ## @param value Value to set for the conditionalAccess property.
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
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityContainer.new
            end
            ## 
            ## Gets the customAuthenticationExtensions property value. Represents custom extensions to authentication flows in Azure AD for workforce and customers.
            ## @return a custom_authentication_extension
            ## 
            def custom_authentication_extensions
                return @custom_authentication_extensions
            end
            ## 
            ## Sets the customAuthenticationExtensions property value. Represents custom extensions to authentication flows in Azure AD for workforce and customers.
            ## @param value Value to set for the customAuthenticationExtensions property.
            ## @return a void
            ## 
            def custom_authentication_extensions=(value)
                @custom_authentication_extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "apiConnectors" => lambda {|n| @api_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityApiConnector.create_from_discriminator_value(pn) }) },
                    "authenticationEventListeners" => lambda {|n| @authentication_event_listeners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationEventListener.create_from_discriminator_value(pn) }) },
                    "authenticationEventsFlows" => lambda {|n| @authentication_events_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationEventsFlow.create_from_discriminator_value(pn) }) },
                    "b2xUserFlows" => lambda {|n| @b2x_user_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::B2xIdentityUserFlow.create_from_discriminator_value(pn) }) },
                    "conditionalAccess" => lambda {|n| @conditional_access = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessRoot.create_from_discriminator_value(pn) }) },
                    "customAuthenticationExtensions" => lambda {|n| @custom_authentication_extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CustomAuthenticationExtension.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the identityProviders property.
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
                writer.write_collection_of_object_values("authenticationEventListeners", @authentication_event_listeners)
                writer.write_collection_of_object_values("authenticationEventsFlows", @authentication_events_flows)
                writer.write_collection_of_object_values("b2xUserFlows", @b2x_user_flows)
                writer.write_object_value("conditionalAccess", @conditional_access)
                writer.write_collection_of_object_values("customAuthenticationExtensions", @custom_authentication_extensions)
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
            ## @param value Value to set for the userFlowAttributes property.
            ## @return a void
            ## 
            def user_flow_attributes=(value)
                @user_flow_attributes = value
            end
        end
    end
end
