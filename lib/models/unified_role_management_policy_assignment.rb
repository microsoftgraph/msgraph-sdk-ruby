require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicyAssignment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The policy that's associated with a policy assignment. Supports $expand and a nested $expand of the rules and effectiveRules relationships for the policy.
            @policy
            ## 
            # The id of the policy. Inherited from entity.
            @policy_id
            ## 
            # The identifier of the role definition object where the policy applies. If not specified, the policy applies to all roles. Supports $filter (eq).
            @role_definition_id
            ## 
            # The identifier of the scope where the policy is assigned.  Can be / for the tenant or a group ID. Required.
            @scope_id
            ## 
            # The type of the scope where the policy is assigned. One of Directory, DirectoryRole. Required.
            @scope_type
            ## 
            ## Instantiates a new unifiedRoleManagementPolicyAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementPolicyAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "policy" => lambda {|n| @policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleManagementPolicy.create_from_discriminator_value(pn) }) },
                    "policyId" => lambda {|n| @policy_id = n.get_string_value() },
                    "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                    "scopeId" => lambda {|n| @scope_id = n.get_string_value() },
                    "scopeType" => lambda {|n| @scope_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the policy property value. The policy that's associated with a policy assignment. Supports $expand and a nested $expand of the rules and effectiveRules relationships for the policy.
            ## @return a unified_role_management_policy
            ## 
            def policy
                return @policy
            end
            ## 
            ## Sets the policy property value. The policy that's associated with a policy assignment. Supports $expand and a nested $expand of the rules and effectiveRules relationships for the policy.
            ## @param value Value to set for the policy property.
            ## @return a void
            ## 
            def policy=(value)
                @policy = value
            end
            ## 
            ## Gets the policyId property value. The id of the policy. Inherited from entity.
            ## @return a string
            ## 
            def policy_id
                return @policy_id
            end
            ## 
            ## Sets the policyId property value. The id of the policy. Inherited from entity.
            ## @param value Value to set for the policy_id property.
            ## @return a void
            ## 
            def policy_id=(value)
                @policy_id = value
            end
            ## 
            ## Gets the roleDefinitionId property value. The identifier of the role definition object where the policy applies. If not specified, the policy applies to all roles. Supports $filter (eq).
            ## @return a string
            ## 
            def role_definition_id
                return @role_definition_id
            end
            ## 
            ## Sets the roleDefinitionId property value. The identifier of the role definition object where the policy applies. If not specified, the policy applies to all roles. Supports $filter (eq).
            ## @param value Value to set for the role_definition_id property.
            ## @return a void
            ## 
            def role_definition_id=(value)
                @role_definition_id = value
            end
            ## 
            ## Gets the scopeId property value. The identifier of the scope where the policy is assigned.  Can be / for the tenant or a group ID. Required.
            ## @return a string
            ## 
            def scope_id
                return @scope_id
            end
            ## 
            ## Sets the scopeId property value. The identifier of the scope where the policy is assigned.  Can be / for the tenant or a group ID. Required.
            ## @param value Value to set for the scope_id property.
            ## @return a void
            ## 
            def scope_id=(value)
                @scope_id = value
            end
            ## 
            ## Gets the scopeType property value. The type of the scope where the policy is assigned. One of Directory, DirectoryRole. Required.
            ## @return a string
            ## 
            def scope_type
                return @scope_type
            end
            ## 
            ## Sets the scopeType property value. The type of the scope where the policy is assigned. One of Directory, DirectoryRole. Required.
            ## @param value Value to set for the scope_type property.
            ## @return a void
            ## 
            def scope_type=(value)
                @scope_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("policy", @policy)
                writer.write_string_value("policyId", @policy_id)
                writer.write_string_value("roleDefinitionId", @role_definition_id)
                writer.write_string_value("scopeId", @scope_id)
                writer.write_string_value("scopeType", @scope_type)
            end
        end
    end
end
