require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicyAuthenticationContextRule < MicrosoftGraph::Models::UnifiedRoleManagementPolicyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The value of the authentication context claim.
            @claim_value
            ## 
            # Whether this rule is enabled.
            @is_enabled
            ## 
            ## Gets the claimValue property value. The value of the authentication context claim.
            ## @return a string
            ## 
            def claim_value
                return @claim_value
            end
            ## 
            ## Sets the claimValue property value. The value of the authentication context claim.
            ## @param value Value to set for the claim_value property.
            ## @return a void
            ## 
            def claim_value=(value)
                @claim_value = value
            end
            ## 
            ## Instantiates a new UnifiedRoleManagementPolicyAuthenticationContextRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy_authentication_context_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementPolicyAuthenticationContextRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "claimValue" => lambda {|n| @claim_value = n.get_string_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isEnabled property value. Whether this rule is enabled.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Whether this rule is enabled.
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("claimValue", @claim_value)
                writer.write_boolean_value("isEnabled", @is_enabled)
            end
        end
    end
end
