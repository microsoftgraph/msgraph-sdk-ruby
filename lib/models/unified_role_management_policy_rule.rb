require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicyRule < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines details of scope that's targeted by role management policy rule. The details can include the principal type, the role assignment type, and actions affecting a role. Supports $filter (eq, ne).
            @target
            ## 
            ## Instantiates a new unifiedRoleManagementPolicyRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule"
                            return UnifiedRoleManagementPolicyApprovalRule.new
                        when "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule"
                            return UnifiedRoleManagementPolicyAuthenticationContextRule.new
                        when "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule"
                            return UnifiedRoleManagementPolicyEnablementRule.new
                        when "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule"
                            return UnifiedRoleManagementPolicyExpirationRule.new
                        when "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule"
                            return UnifiedRoleManagementPolicyNotificationRule.new
                    end
                end
                return UnifiedRoleManagementPolicyRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleManagementPolicyRuleTarget.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("target", @target)
            end
            ## 
            ## Gets the target property value. Defines details of scope that's targeted by role management policy rule. The details can include the principal type, the role assignment type, and actions affecting a role. Supports $filter (eq, ne).
            ## @return a unified_role_management_policy_rule_target
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. Defines details of scope that's targeted by role management policy rule. The details can include the principal type, the role assignment type, and actions affecting a role. Supports $filter (eq, ne).
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
