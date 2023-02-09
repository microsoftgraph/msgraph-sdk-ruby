require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationFlowsPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Inherited property. A description of the policy. Optional. Read-only.
            @description
            ## 
            # Inherited property. The human-readable name of the policy. Optional. Read-only.
            @display_name
            ## 
            # Contains selfServiceSignUpAuthenticationFlowConfiguration settings that convey whether self-service sign-up is enabled or disabled. Optional. Read-only.
            @self_service_sign_up
            ## 
            ## Instantiates a new authenticationFlowsPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a authentication_flows_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationFlowsPolicy.new
            end
            ## 
            ## Gets the description property value. Inherited property. A description of the policy. Optional. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Inherited property. A description of the policy. Optional. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Inherited property. The human-readable name of the policy. Optional. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Inherited property. The human-readable name of the policy. Optional. Read-only.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "selfServiceSignUp" => lambda {|n| @self_service_sign_up = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SelfServiceSignUpAuthenticationFlowConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the selfServiceSignUp property value. Contains selfServiceSignUpAuthenticationFlowConfiguration settings that convey whether self-service sign-up is enabled or disabled. Optional. Read-only.
            ## @return a self_service_sign_up_authentication_flow_configuration
            ## 
            def self_service_sign_up
                return @self_service_sign_up
            end
            ## 
            ## Sets the selfServiceSignUp property value. Contains selfServiceSignUpAuthenticationFlowConfiguration settings that convey whether self-service sign-up is enabled or disabled. Optional. Read-only.
            ## @param value Value to set for the self_service_sign_up property.
            ## @return a void
            ## 
            def self_service_sign_up=(value)
                @self_service_sign_up = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("selfServiceSignUp", @self_service_sign_up)
            end
        end
    end
end
