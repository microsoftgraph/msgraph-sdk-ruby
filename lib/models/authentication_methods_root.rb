require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationMethodsRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the state of a user's authentication methods, including which methods are registered and which features the user is registered and capable of (such as multi-factor authentication, self-service password reset, and passwordless authentication).
            @user_registration_details
            ## 
            ## Instantiates a new authenticationMethodsRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_methods_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationMethodsRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "userRegistrationDetails" => lambda {|n| @user_registration_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserRegistrationDetails.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("userRegistrationDetails", @user_registration_details) unless @user_registration_details.nil?
            end
            ## 
            ## Gets the userRegistrationDetails property value. Represents the state of a user's authentication methods, including which methods are registered and which features the user is registered and capable of (such as multi-factor authentication, self-service password reset, and passwordless authentication).
            ## @return a user_registration_details
            ## 
            def user_registration_details
                return @user_registration_details
            end
            ## 
            ## Sets the userRegistrationDetails property value. Represents the state of a user's authentication methods, including which methods are registered and which features the user is registered and capable of (such as multi-factor authentication, self-service password reset, and passwordless authentication).
            ## @param value Value to set for the userRegistrationDetails property.
            ## @return a void
            ## 
            def user_registration_details=(value)
                @user_registration_details = value
            end
        end
    end
end
