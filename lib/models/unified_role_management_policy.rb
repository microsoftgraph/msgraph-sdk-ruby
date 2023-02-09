require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description for the policy.
            @description
            ## 
            # Display name for the policy.
            @display_name
            ## 
            # The list of effective rules like approval rules and expiration rules evaluated based on inherited referenced rules. For example, if there is a tenant-wide policy to enforce enabling an approval rule, the effective rule will be to enable approval even if the policy has a rule to disable approval. Supports $expand.
            @effective_rules
            ## 
            # This can only be set to true for a single tenant-wide policy which will apply to all scopes and roles. Set the scopeId to / and scopeType to Directory. Supports $filter (eq, ne).
            @is_organization_default
            ## 
            # The identity who last modified the role setting.
            @last_modified_by
            ## 
            # The time when the role setting was last modified.
            @last_modified_date_time
            ## 
            # The collection of rules like approval rules and expiration rules. Supports $expand.
            @rules
            ## 
            # The identifier of the scope where the policy is created. Can be / for the tenant or a group ID. Required.
            @scope_id
            ## 
            # The type of the scope where the policy is created. One of Directory, DirectoryRole. Required.
            @scope_type
            ## 
            ## Instantiates a new unifiedRoleManagementPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementPolicy.new
            end
            ## 
            ## Gets the description property value. Description for the policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description for the policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name for the policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for the policy.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the effectiveRules property value. The list of effective rules like approval rules and expiration rules evaluated based on inherited referenced rules. For example, if there is a tenant-wide policy to enforce enabling an approval rule, the effective rule will be to enable approval even if the policy has a rule to disable approval. Supports $expand.
            ## @return a unified_role_management_policy_rule
            ## 
            def effective_rules
                return @effective_rules
            end
            ## 
            ## Sets the effectiveRules property value. The list of effective rules like approval rules and expiration rules evaluated based on inherited referenced rules. For example, if there is a tenant-wide policy to enforce enabling an approval rule, the effective rule will be to enable approval even if the policy has a rule to disable approval. Supports $expand.
            ## @param value Value to set for the effective_rules property.
            ## @return a void
            ## 
            def effective_rules=(value)
                @effective_rules = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "effectiveRules" => lambda {|n| @effective_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleManagementPolicyRule.create_from_discriminator_value(pn) }) },
                    "isOrganizationDefault" => lambda {|n| @is_organization_default = n.get_boolean_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "rules" => lambda {|n| @rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleManagementPolicyRule.create_from_discriminator_value(pn) }) },
                    "scopeId" => lambda {|n| @scope_id = n.get_string_value() },
                    "scopeType" => lambda {|n| @scope_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isOrganizationDefault property value. This can only be set to true for a single tenant-wide policy which will apply to all scopes and roles. Set the scopeId to / and scopeType to Directory. Supports $filter (eq, ne).
            ## @return a boolean
            ## 
            def is_organization_default
                return @is_organization_default
            end
            ## 
            ## Sets the isOrganizationDefault property value. This can only be set to true for a single tenant-wide policy which will apply to all scopes and roles. Set the scopeId to / and scopeType to Directory. Supports $filter (eq, ne).
            ## @param value Value to set for the is_organization_default property.
            ## @return a void
            ## 
            def is_organization_default=(value)
                @is_organization_default = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The identity who last modified the role setting.
            ## @return a identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The identity who last modified the role setting.
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The time when the role setting was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The time when the role setting was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the rules property value. The collection of rules like approval rules and expiration rules. Supports $expand.
            ## @return a unified_role_management_policy_rule
            ## 
            def rules
                return @rules
            end
            ## 
            ## Sets the rules property value. The collection of rules like approval rules and expiration rules. Supports $expand.
            ## @param value Value to set for the rules property.
            ## @return a void
            ## 
            def rules=(value)
                @rules = value
            end
            ## 
            ## Gets the scopeId property value. The identifier of the scope where the policy is created. Can be / for the tenant or a group ID. Required.
            ## @return a string
            ## 
            def scope_id
                return @scope_id
            end
            ## 
            ## Sets the scopeId property value. The identifier of the scope where the policy is created. Can be / for the tenant or a group ID. Required.
            ## @param value Value to set for the scope_id property.
            ## @return a void
            ## 
            def scope_id=(value)
                @scope_id = value
            end
            ## 
            ## Gets the scopeType property value. The type of the scope where the policy is created. One of Directory, DirectoryRole. Required.
            ## @return a string
            ## 
            def scope_type
                return @scope_type
            end
            ## 
            ## Sets the scopeType property value. The type of the scope where the policy is created. One of Directory, DirectoryRole. Required.
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
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("effectiveRules", @effective_rules)
                writer.write_boolean_value("isOrganizationDefault", @is_organization_default)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_object_values("rules", @rules)
                writer.write_string_value("scopeId", @scope_id)
                writer.write_string_value("scopeType", @scope_type)
            end
        end
    end
end
