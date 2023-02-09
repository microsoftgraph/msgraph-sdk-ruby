require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Scheduled Action for Rule
        class DeviceComplianceScheduledActionForRule < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Name of the rule which this scheduled action applies to. Currently scheduled actions are created per policy instead of per rule, thus RuleName is always set to default value PasswordRequired.
            @rule_name
            ## 
            # The list of scheduled action configurations for this compliance policy. Compliance policy must have one and only one block scheduled action.
            @scheduled_action_configurations
            ## 
            ## Instantiates a new deviceComplianceScheduledActionForRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_scheduled_action_for_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceComplianceScheduledActionForRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ruleName" => lambda {|n| @rule_name = n.get_string_value() },
                    "scheduledActionConfigurations" => lambda {|n| @scheduled_action_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceComplianceActionItem.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the ruleName property value. Name of the rule which this scheduled action applies to. Currently scheduled actions are created per policy instead of per rule, thus RuleName is always set to default value PasswordRequired.
            ## @return a string
            ## 
            def rule_name
                return @rule_name
            end
            ## 
            ## Sets the ruleName property value. Name of the rule which this scheduled action applies to. Currently scheduled actions are created per policy instead of per rule, thus RuleName is always set to default value PasswordRequired.
            ## @param value Value to set for the rule_name property.
            ## @return a void
            ## 
            def rule_name=(value)
                @rule_name = value
            end
            ## 
            ## Gets the scheduledActionConfigurations property value. The list of scheduled action configurations for this compliance policy. Compliance policy must have one and only one block scheduled action.
            ## @return a device_compliance_action_item
            ## 
            def scheduled_action_configurations
                return @scheduled_action_configurations
            end
            ## 
            ## Sets the scheduledActionConfigurations property value. The list of scheduled action configurations for this compliance policy. Compliance policy must have one and only one block scheduled action.
            ## @param value Value to set for the scheduled_action_configurations property.
            ## @return a void
            ## 
            def scheduled_action_configurations=(value)
                @scheduled_action_configurations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("ruleName", @rule_name)
                writer.write_collection_of_object_values("scheduledActionConfigurations", @scheduled_action_configurations)
            end
        end
    end
end
