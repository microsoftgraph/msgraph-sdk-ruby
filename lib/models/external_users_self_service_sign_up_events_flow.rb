require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ExternalUsersSelfServiceSignUpEventsFlow < MicrosoftGraph::Models::AuthenticationEventsFlow
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The configuration for what to invoke when attributes are ready to be collected from the user.
            @on_attribute_collection
            ## 
            # Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.
            @on_authentication_method_load_start
            ## 
            # Required. The configuration for what to invoke when an authentication flow is ready to be initiated.
            @on_interactive_auth_flow_start
            ## 
            # The configuration for what to invoke during user creation.
            @on_user_create_start
            ## 
            ## Instantiates a new ExternalUsersSelfServiceSignUpEventsFlow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_users_self_service_sign_up_events_flow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalUsersSelfServiceSignUpEventsFlow.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "onAttributeCollection" => lambda {|n| @on_attribute_collection = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnAttributeCollectionHandler.create_from_discriminator_value(pn) }) },
                    "onAuthenticationMethodLoadStart" => lambda {|n| @on_authentication_method_load_start = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnAuthenticationMethodLoadStartHandler.create_from_discriminator_value(pn) }) },
                    "onInteractiveAuthFlowStart" => lambda {|n| @on_interactive_auth_flow_start = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnInteractiveAuthFlowStartHandler.create_from_discriminator_value(pn) }) },
                    "onUserCreateStart" => lambda {|n| @on_user_create_start = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnUserCreateStartHandler.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the onAttributeCollection property value. The configuration for what to invoke when attributes are ready to be collected from the user.
            ## @return a on_attribute_collection_handler
            ## 
            def on_attribute_collection
                return @on_attribute_collection
            end
            ## 
            ## Sets the onAttributeCollection property value. The configuration for what to invoke when attributes are ready to be collected from the user.
            ## @param value Value to set for the onAttributeCollection property.
            ## @return a void
            ## 
            def on_attribute_collection=(value)
                @on_attribute_collection = value
            end
            ## 
            ## Gets the onAuthenticationMethodLoadStart property value. Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.
            ## @return a on_authentication_method_load_start_handler
            ## 
            def on_authentication_method_load_start
                return @on_authentication_method_load_start
            end
            ## 
            ## Sets the onAuthenticationMethodLoadStart property value. Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.
            ## @param value Value to set for the onAuthenticationMethodLoadStart property.
            ## @return a void
            ## 
            def on_authentication_method_load_start=(value)
                @on_authentication_method_load_start = value
            end
            ## 
            ## Gets the onInteractiveAuthFlowStart property value. Required. The configuration for what to invoke when an authentication flow is ready to be initiated.
            ## @return a on_interactive_auth_flow_start_handler
            ## 
            def on_interactive_auth_flow_start
                return @on_interactive_auth_flow_start
            end
            ## 
            ## Sets the onInteractiveAuthFlowStart property value. Required. The configuration for what to invoke when an authentication flow is ready to be initiated.
            ## @param value Value to set for the onInteractiveAuthFlowStart property.
            ## @return a void
            ## 
            def on_interactive_auth_flow_start=(value)
                @on_interactive_auth_flow_start = value
            end
            ## 
            ## Gets the onUserCreateStart property value. The configuration for what to invoke during user creation.
            ## @return a on_user_create_start_handler
            ## 
            def on_user_create_start
                return @on_user_create_start
            end
            ## 
            ## Sets the onUserCreateStart property value. The configuration for what to invoke during user creation.
            ## @param value Value to set for the onUserCreateStart property.
            ## @return a void
            ## 
            def on_user_create_start=(value)
                @on_user_create_start = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("onAttributeCollection", @on_attribute_collection)
                writer.write_object_value("onAuthenticationMethodLoadStart", @on_authentication_method_load_start)
                writer.write_object_value("onInteractiveAuthFlowStart", @on_interactive_auth_flow_start)
                writer.write_object_value("onUserCreateStart", @on_user_create_start)
            end
        end
    end
end
