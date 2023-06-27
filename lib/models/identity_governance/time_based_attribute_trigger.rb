require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraph
    module Models
        module IdentityGovernance
            class TimeBasedAttributeTrigger < MicrosoftGraph::Models::IdentityGovernance::WorkflowExecutionTrigger
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # How many days before or after the time-based attribute specified the workflow should trigger. For example, if the attribute is employeeHireDate and offsetInDays is -1, then the workflow should trigger one day before the employee hire date. The value can range between -180 and 180 days.
                @offset_in_days
                ## 
                # The timeBasedAttribute property
                @time_based_attribute
                ## 
                ## Instantiates a new TimeBasedAttributeTrigger and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a time_based_attribute_trigger
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TimeBasedAttributeTrigger.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "offsetInDays" => lambda {|n| @offset_in_days = n.get_number_value() },
                        "timeBasedAttribute" => lambda {|n| @time_based_attribute = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernance::WorkflowTriggerTimeBasedAttribute) },
                    })
                end
                ## 
                ## Gets the offsetInDays property value. How many days before or after the time-based attribute specified the workflow should trigger. For example, if the attribute is employeeHireDate and offsetInDays is -1, then the workflow should trigger one day before the employee hire date. The value can range between -180 and 180 days.
                ## @return a integer
                ## 
                def offset_in_days
                    return @offset_in_days
                end
                ## 
                ## Sets the offsetInDays property value. How many days before or after the time-based attribute specified the workflow should trigger. For example, if the attribute is employeeHireDate and offsetInDays is -1, then the workflow should trigger one day before the employee hire date. The value can range between -180 and 180 days.
                ## @param value Value to set for the offset_in_days property.
                ## @return a void
                ## 
                def offset_in_days=(value)
                    @offset_in_days = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_number_value("offsetInDays", @offset_in_days)
                    writer.write_enum_value("timeBasedAttribute", @time_based_attribute)
                end
                ## 
                ## Gets the timeBasedAttribute property value. The timeBasedAttribute property
                ## @return a workflow_trigger_time_based_attribute
                ## 
                def time_based_attribute
                    return @time_based_attribute
                end
                ## 
                ## Sets the timeBasedAttribute property value. The timeBasedAttribute property
                ## @param value Value to set for the time_based_attribute property.
                ## @return a void
                ## 
                def time_based_attribute=(value)
                    @time_based_attribute = value
                end
            end
        end
    end
end
