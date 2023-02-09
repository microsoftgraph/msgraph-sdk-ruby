require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationMethodTarget < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Determines if the user is enforced to register the authentication method.
            @is_registration_required
            ## 
            # The targetType property
            @target_type
            ## 
            ## Instantiates a new authenticationMethodTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a authentication_method_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget"
                            return MicrosoftAuthenticatorAuthenticationMethodTarget.new
                    end
                end
                return AuthenticationMethodTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isRegistrationRequired" => lambda {|n| @is_registration_required = n.get_boolean_value() },
                    "targetType" => lambda {|n| @target_type = n.get_enum_value(MicrosoftGraph::Models::AuthenticationMethodTargetType) },
                })
            end
            ## 
            ## Gets the isRegistrationRequired property value. Determines if the user is enforced to register the authentication method.
            ## @return a boolean
            ## 
            def is_registration_required
                return @is_registration_required
            end
            ## 
            ## Sets the isRegistrationRequired property value. Determines if the user is enforced to register the authentication method.
            ## @param value Value to set for the is_registration_required property.
            ## @return a void
            ## 
            def is_registration_required=(value)
                @is_registration_required = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isRegistrationRequired", @is_registration_required)
                writer.write_enum_value("targetType", @target_type)
            end
            ## 
            ## Gets the targetType property value. The targetType property
            ## @return a authentication_method_target_type
            ## 
            def target_type
                return @target_type
            end
            ## 
            ## Sets the targetType property value. The targetType property
            ## @param value Value to set for the target_type property.
            ## @return a void
            ## 
            def target_type=(value)
                @target_type = value
            end
        end
    end
end
