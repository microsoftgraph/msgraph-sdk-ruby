require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicyEnablementRule < MicrosoftGraph::Models::UnifiedRoleManagementPolicyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of rules that are enabled for this policy rule. For example, MultiFactorAuthentication, Ticketing, and Justification.
            @enabled_rules
            ## 
            ## Instantiates a new UnifiedRoleManagementPolicyEnablementRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy_enablement_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementPolicyEnablementRule.new
            end
            ## 
            ## Gets the enabledRules property value. The collection of rules that are enabled for this policy rule. For example, MultiFactorAuthentication, Ticketing, and Justification.
            ## @return a string
            ## 
            def enabled_rules
                return @enabled_rules
            end
            ## 
            ## Sets the enabledRules property value. The collection of rules that are enabled for this policy rule. For example, MultiFactorAuthentication, Ticketing, and Justification.
            ## @param value Value to set for the enabled_rules property.
            ## @return a void
            ## 
            def enabled_rules=(value)
                @enabled_rules = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enabledRules" => lambda {|n| @enabled_rules = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("enabledRules", @enabled_rules)
            end
        end
    end
end
