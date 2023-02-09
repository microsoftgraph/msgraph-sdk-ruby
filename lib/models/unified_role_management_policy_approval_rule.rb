require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicyApprovalRule < MicrosoftGraph::Models::UnifiedRoleManagementPolicyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The settings for approval of the role assignment.
            @setting
            ## 
            ## Instantiates a new UnifiedRoleManagementPolicyApprovalRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy_approval_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementPolicyApprovalRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "setting" => lambda {|n| @setting = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ApprovalSettings.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("setting", @setting)
            end
            ## 
            ## Gets the setting property value. The settings for approval of the role assignment.
            ## @return a approval_settings
            ## 
            def setting
                return @setting
            end
            ## 
            ## Sets the setting property value. The settings for approval of the role assignment.
            ## @param value Value to set for the setting property.
            ## @return a void
            ## 
            def setting=(value)
                @setting = value
            end
        end
    end
end
