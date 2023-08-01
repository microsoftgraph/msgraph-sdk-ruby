require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SmsAuthenticationMethodTarget < MicrosoftGraph::Models::AuthenticationMethodTarget
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Determines if users can use this authentication method to sign in to Azure AD. true if users can use this method for primary authentication, otherwise false.
            @is_usable_for_sign_in
            ## 
            ## Instantiates a new smsAuthenticationMethodTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sms_authentication_method_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SmsAuthenticationMethodTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isUsableForSignIn" => lambda {|n| @is_usable_for_sign_in = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isUsableForSignIn property value. Determines if users can use this authentication method to sign in to Azure AD. true if users can use this method for primary authentication, otherwise false.
            ## @return a boolean
            ## 
            def is_usable_for_sign_in
                return @is_usable_for_sign_in
            end
            ## 
            ## Sets the isUsableForSignIn property value. Determines if users can use this authentication method to sign in to Azure AD. true if users can use this method for primary authentication, otherwise false.
            ## @param value Value to set for the isUsableForSignIn property.
            ## @return a void
            ## 
            def is_usable_for_sign_in=(value)
                @is_usable_for_sign_in = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isUsableForSignIn", @is_usable_for_sign_in)
            end
        end
    end
end
