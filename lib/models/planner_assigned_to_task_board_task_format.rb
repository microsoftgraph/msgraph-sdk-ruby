require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PlannerAssignedToTaskBoardTaskFormat < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Dictionary of hints used to order tasks on the AssignedTo view of the Task Board. The key of each entry is one of the users the task is assigned to and the value is the order hint. The format of each value is defined as outlined here.
            @order_hints_by_assignee
            ## 
            # Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
            @unassigned_order_hint
            ## 
            ## Instantiates a new plannerAssignedToTaskBoardTaskFormat and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_assigned_to_task_board_task_format
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerAssignedToTaskBoardTaskFormat.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "orderHintsByAssignee" => lambda {|n| @order_hints_by_assignee = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerOrderHintsByAssignee.create_from_discriminator_value(pn) }) },
                    "unassignedOrderHint" => lambda {|n| @unassigned_order_hint = n.get_string_value() },
                })
            end
            ## 
            ## Gets the orderHintsByAssignee property value. Dictionary of hints used to order tasks on the AssignedTo view of the Task Board. The key of each entry is one of the users the task is assigned to and the value is the order hint. The format of each value is defined as outlined here.
            ## @return a planner_order_hints_by_assignee
            ## 
            def order_hints_by_assignee
                return @order_hints_by_assignee
            end
            ## 
            ## Sets the orderHintsByAssignee property value. Dictionary of hints used to order tasks on the AssignedTo view of the Task Board. The key of each entry is one of the users the task is assigned to and the value is the order hint. The format of each value is defined as outlined here.
            ## @param value Value to set for the order_hints_by_assignee property.
            ## @return a void
            ## 
            def order_hints_by_assignee=(value)
                @order_hints_by_assignee = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("orderHintsByAssignee", @order_hints_by_assignee)
                writer.write_string_value("unassignedOrderHint", @unassigned_order_hint)
            end
            ## 
            ## Gets the unassignedOrderHint property value. Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
            ## @return a string
            ## 
            def unassigned_order_hint
                return @unassigned_order_hint
            end
            ## 
            ## Sets the unassignedOrderHint property value. Hint value used to order the task on the AssignedTo view of the Task Board when the task is not assigned to anyone, or if the orderHintsByAssignee dictionary does not provide an order hint for the user the task is assigned to. The format is defined as outlined here.
            ## @param value Value to set for the unassigned_order_hint property.
            ## @return a void
            ## 
            def unassigned_order_hint=(value)
                @unassigned_order_hint = value
            end
        end
    end
end
