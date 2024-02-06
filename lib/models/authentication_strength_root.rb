require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationStrengthRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Names and descriptions of all valid authentication method modes in the system.
            @authentication_method_modes
            ## 
            # The combinations property
            @combinations
            ## 
            # A collection of authentication strength policies that exist for this tenant, including both built-in and custom policies.
            @policies
            ## 
            ## Gets the authenticationMethodModes property value. Names and descriptions of all valid authentication method modes in the system.
            ## @return a authentication_method_mode_detail
            ## 
            def authentication_method_modes
                return @authentication_method_modes
            end
            ## 
            ## Sets the authenticationMethodModes property value. Names and descriptions of all valid authentication method modes in the system.
            ## @param value Value to set for the authenticationMethodModes property.
            ## @return a void
            ## 
            def authentication_method_modes=(value)
                @authentication_method_modes = value
            end
            ## 
            ## Gets the combinations property value. The combinations property
            ## @return a authentication_method_modes
            ## 
            def combinations
                return @combinations
            end
            ## 
            ## Sets the combinations property value. The combinations property
            ## @param value Value to set for the combinations property.
            ## @return a void
            ## 
            def combinations=(value)
                @combinations = value
            end
            ## 
            ## Instantiates a new authenticationStrengthRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_strength_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationStrengthRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationMethodModes" => lambda {|n| @authentication_method_modes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodModeDetail.create_from_discriminator_value(pn) }) },
                    "combinations" => lambda {|n| @combinations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodModes.create_from_discriminator_value(pn) }) },
                    "policies" => lambda {|n| @policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationStrengthPolicy.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policies property value. A collection of authentication strength policies that exist for this tenant, including both built-in and custom policies.
            ## @return a authentication_strength_policy
            ## 
            def policies
                return @policies
            end
            ## 
            ## Sets the policies property value. A collection of authentication strength policies that exist for this tenant, including both built-in and custom policies.
            ## @param value Value to set for the policies property.
            ## @return a void
            ## 
            def policies=(value)
                @policies = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("authenticationMethodModes", @authentication_method_modes) unless @authentication_method_modes.nil?
                writer.write_collection_of_object_values("combinations", @combinations) unless @combinations.nil?
                writer.write_collection_of_object_values("policies", @policies) unless @policies.nil?
            end
        end
    end
end
