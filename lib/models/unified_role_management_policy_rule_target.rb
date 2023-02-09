require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicyRuleTarget
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of caller that's the target of the policy rule. Allowed values are: None, Admin, EndUser.
            @caller
            ## 
            # The list of role settings that are enforced and cannot be overridden by child scopes. Use All for all settings.
            @enforced_settings
            ## 
            # The list of role settings that can be inherited by child scopes. Use All for all settings.
            @inheritable_settings
            ## 
            # The role assignment type that's the target of policy rule. Allowed values are: Eligibility, Assignment.
            @level
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The role management operations that are the target of the policy rule. Allowed values are: All, Activate, Deactivate, Assign, Update, Remove, Extend, Renew.
            @operations
            ## 
            # The targetObjects property
            @target_objects
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the caller property value. The type of caller that's the target of the policy rule. Allowed values are: None, Admin, EndUser.
            ## @return a string
            ## 
            def caller
                return @caller
            end
            ## 
            ## Sets the caller property value. The type of caller that's the target of the policy rule. Allowed values are: None, Admin, EndUser.
            ## @param value Value to set for the caller property.
            ## @return a void
            ## 
            def caller=(value)
                @caller = value
            end
            ## 
            ## Instantiates a new unifiedRoleManagementPolicyRuleTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy_rule_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementPolicyRuleTarget.new
            end
            ## 
            ## Gets the enforcedSettings property value. The list of role settings that are enforced and cannot be overridden by child scopes. Use All for all settings.
            ## @return a string
            ## 
            def enforced_settings
                return @enforced_settings
            end
            ## 
            ## Sets the enforcedSettings property value. The list of role settings that are enforced and cannot be overridden by child scopes. Use All for all settings.
            ## @param value Value to set for the enforced_settings property.
            ## @return a void
            ## 
            def enforced_settings=(value)
                @enforced_settings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "caller" => lambda {|n| @caller = n.get_string_value() },
                    "enforcedSettings" => lambda {|n| @enforced_settings = n.get_collection_of_primitive_values(String) },
                    "inheritableSettings" => lambda {|n| @inheritable_settings = n.get_collection_of_primitive_values(String) },
                    "level" => lambda {|n| @level = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleManagementPolicyRuleTargetOperations.create_from_discriminator_value(pn) }) },
                    "targetObjects" => lambda {|n| @target_objects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the inheritableSettings property value. The list of role settings that can be inherited by child scopes. Use All for all settings.
            ## @return a string
            ## 
            def inheritable_settings
                return @inheritable_settings
            end
            ## 
            ## Sets the inheritableSettings property value. The list of role settings that can be inherited by child scopes. Use All for all settings.
            ## @param value Value to set for the inheritable_settings property.
            ## @return a void
            ## 
            def inheritable_settings=(value)
                @inheritable_settings = value
            end
            ## 
            ## Gets the level property value. The role assignment type that's the target of policy rule. Allowed values are: Eligibility, Assignment.
            ## @return a string
            ## 
            def level
                return @level
            end
            ## 
            ## Sets the level property value. The role assignment type that's the target of policy rule. Allowed values are: Eligibility, Assignment.
            ## @param value Value to set for the level property.
            ## @return a void
            ## 
            def level=(value)
                @level = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the operations property value. The role management operations that are the target of the policy rule. Allowed values are: All, Activate, Deactivate, Assign, Update, Remove, Extend, Renew.
            ## @return a unified_role_management_policy_rule_target_operations
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The role management operations that are the target of the policy rule. Allowed values are: All, Activate, Deactivate, Assign, Update, Remove, Extend, Renew.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("caller", @caller)
                writer.write_collection_of_primitive_values("enforcedSettings", @enforced_settings)
                writer.write_collection_of_primitive_values("inheritableSettings", @inheritable_settings)
                writer.write_string_value("level", @level)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("targetObjects", @target_objects)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the targetObjects property value. The targetObjects property
            ## @return a directory_object
            ## 
            def target_objects
                return @target_objects
            end
            ## 
            ## Sets the targetObjects property value. The targetObjects property
            ## @param value Value to set for the target_objects property.
            ## @return a void
            ## 
            def target_objects=(value)
                @target_objects = value
            end
        end
    end
end
