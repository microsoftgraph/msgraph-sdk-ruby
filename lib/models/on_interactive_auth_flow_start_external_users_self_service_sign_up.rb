require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp < MicrosoftGraph::Models::OnInteractiveAuthFlowStartHandler
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Optional. Specifies whether the authentication flow includes an option to sign up (create account) and sign in. Default value is false meaning only sign in is enabled.
            @is_sign_up_allowed
            ## 
            ## Instantiates a new OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_interactive_auth_flow_start_external_users_self_service_sign_up
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isSignUpAllowed" => lambda {|n| @is_sign_up_allowed = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isSignUpAllowed property value. Optional. Specifies whether the authentication flow includes an option to sign up (create account) and sign in. Default value is false meaning only sign in is enabled.
            ## @return a boolean
            ## 
            def is_sign_up_allowed
                return @is_sign_up_allowed
            end
            ## 
            ## Sets the isSignUpAllowed property value. Optional. Specifies whether the authentication flow includes an option to sign up (create account) and sign in. Default value is false meaning only sign in is enabled.
            ## @param value Value to set for the isSignUpAllowed property.
            ## @return a void
            ## 
            def is_sign_up_allowed=(value)
                @is_sign_up_allowed = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isSignUpAllowed", @is_sign_up_allowed)
            end
        end
    end
end
