require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CopilotAdminLimitedMode < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of a Microsoft Entra group, for which the value of isEnabledForGroup is applied. The default value is null. If isEnabledForGroup is set to true, the groupId value must be provided for the Copilot limited mode in Teams meetings to be enabled for the members of the group. Optional.
            @group_id
            ## 
            # Enables the user to be in limited mode for Copilot in Teams meetings. When copilotAdminLimitedMode=true, users in this mode can ask any questions, but Copilot doesn't respond to certain questions related to inferring emotions, behavior, or judgments. When copilotAdminLimitedMode=false, it responds to all types of questions grounded to the meeting conversation. The default value is false.
            @is_enabled_for_group
            ## 
            ## Instantiates a new CopilotAdminLimitedMode and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a copilot_admin_limited_mode
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CopilotAdminLimitedMode.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "isEnabledForGroup" => lambda {|n| @is_enabled_for_group = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the groupId property value. The ID of a Microsoft Entra group, for which the value of isEnabledForGroup is applied. The default value is null. If isEnabledForGroup is set to true, the groupId value must be provided for the Copilot limited mode in Teams meetings to be enabled for the members of the group. Optional.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The ID of a Microsoft Entra group, for which the value of isEnabledForGroup is applied. The default value is null. If isEnabledForGroup is set to true, the groupId value must be provided for the Copilot limited mode in Teams meetings to be enabled for the members of the group. Optional.
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the isEnabledForGroup property value. Enables the user to be in limited mode for Copilot in Teams meetings. When copilotAdminLimitedMode=true, users in this mode can ask any questions, but Copilot doesn't respond to certain questions related to inferring emotions, behavior, or judgments. When copilotAdminLimitedMode=false, it responds to all types of questions grounded to the meeting conversation. The default value is false.
            ## @return a boolean
            ## 
            def is_enabled_for_group
                return @is_enabled_for_group
            end
            ## 
            ## Sets the isEnabledForGroup property value. Enables the user to be in limited mode for Copilot in Teams meetings. When copilotAdminLimitedMode=true, users in this mode can ask any questions, but Copilot doesn't respond to certain questions related to inferring emotions, behavior, or judgments. When copilotAdminLimitedMode=false, it responds to all types of questions grounded to the meeting conversation. The default value is false.
            ## @param value Value to set for the isEnabledForGroup property.
            ## @return a void
            ## 
            def is_enabled_for_group=(value)
                @is_enabled_for_group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("groupId", @group_id)
                writer.write_boolean_value("isEnabledForGroup", @is_enabled_for_group)
            end
        end
    end
end
