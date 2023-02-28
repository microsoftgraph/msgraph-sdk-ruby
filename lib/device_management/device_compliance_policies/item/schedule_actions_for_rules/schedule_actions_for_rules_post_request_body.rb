require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/device_compliance_scheduled_action_for_rule'
require_relative '../../../device_management'
require_relative '../../device_compliance_policies'
require_relative '../item'
require_relative './schedule_actions_for_rules'

module MicrosoftGraph
    module DeviceManagement
        module DeviceCompliancePolicies
            module Item
                module ScheduleActionsForRules
                    class ScheduleActionsForRulesPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The deviceComplianceScheduledActionForRules property
                        @device_compliance_scheduled_action_for_rules
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
                        ## Instantiates a new scheduleActionsForRulesPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a schedule_actions_for_rules_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ScheduleActionsForRulesPostRequestBody.new
                        end
                        ## 
                        ## Gets the deviceComplianceScheduledActionForRules property value. The deviceComplianceScheduledActionForRules property
                        ## @return a device_compliance_scheduled_action_for_rule
                        ## 
                        def device_compliance_scheduled_action_for_rules
                            return @device_compliance_scheduled_action_for_rules
                        end
                        ## 
                        ## Sets the deviceComplianceScheduledActionForRules property value. The deviceComplianceScheduledActionForRules property
                        ## @param value Value to set for the device_compliance_scheduled_action_for_rules property.
                        ## @return a void
                        ## 
                        def device_compliance_scheduled_action_for_rules=(value)
                            @device_compliance_scheduled_action_for_rules = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "deviceComplianceScheduledActionForRules" => lambda {|n| @device_compliance_scheduled_action_for_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceComplianceScheduledActionForRule.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("deviceComplianceScheduledActionForRules", @device_compliance_scheduled_action_for_rules)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
