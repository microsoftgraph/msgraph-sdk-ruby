require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PlannerBucket < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Name of the bucket.
            @name
            ## 
            # Hint used to order items of this type in a list view. For details about the supported format, see Using order hints in Planner.
            @order_hint
            ## 
            # Plan ID to which the bucket belongs.
            @plan_id
            ## 
            # Read-only. Nullable. The collection of tasks in the bucket.
            @tasks
            ## 
            ## Instantiates a new plannerBucket and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_bucket
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerBucket.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "orderHint" => lambda {|n| @order_hint = n.get_string_value() },
                    "planId" => lambda {|n| @plan_id = n.get_string_value() },
                    "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PlannerTask.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the name property value. Name of the bucket.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the bucket.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the orderHint property value. Hint used to order items of this type in a list view. For details about the supported format, see Using order hints in Planner.
            ## @return a string
            ## 
            def order_hint
                return @order_hint
            end
            ## 
            ## Sets the orderHint property value. Hint used to order items of this type in a list view. For details about the supported format, see Using order hints in Planner.
            ## @param value Value to set for the order_hint property.
            ## @return a void
            ## 
            def order_hint=(value)
                @order_hint = value
            end
            ## 
            ## Gets the planId property value. Plan ID to which the bucket belongs.
            ## @return a string
            ## 
            def plan_id
                return @plan_id
            end
            ## 
            ## Sets the planId property value. Plan ID to which the bucket belongs.
            ## @param value Value to set for the plan_id property.
            ## @return a void
            ## 
            def plan_id=(value)
                @plan_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("name", @name)
                writer.write_string_value("orderHint", @order_hint)
                writer.write_string_value("planId", @plan_id)
                writer.write_collection_of_object_values("tasks", @tasks)
            end
            ## 
            ## Gets the tasks property value. Read-only. Nullable. The collection of tasks in the bucket.
            ## @return a planner_task
            ## 
            def tasks
                return @tasks
            end
            ## 
            ## Sets the tasks property value. Read-only. Nullable. The collection of tasks in the bucket.
            ## @param value Value to set for the tasks property.
            ## @return a void
            ## 
            def tasks=(value)
                @tasks = value
            end
        end
    end
end
