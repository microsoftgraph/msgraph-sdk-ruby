require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Planner < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Nullable. Returns a collection of the specified buckets
            @buckets
            ## 
            # Read-only. Nullable. Returns a collection of the specified plans
            @plans
            ## 
            # Read-only. Nullable. Returns a collection of the specified tasks
            @tasks
            ## 
            ## Gets the buckets property value. Read-only. Nullable. Returns a collection of the specified buckets
            ## @return a planner_bucket
            ## 
            def buckets
                return @buckets
            end
            ## 
            ## Sets the buckets property value. Read-only. Nullable. Returns a collection of the specified buckets
            ## @param value Value to set for the buckets property.
            ## @return a void
            ## 
            def buckets=(value)
                @buckets = value
            end
            ## 
            ## Instantiates a new Planner and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Planner.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "buckets" => lambda {|n| @buckets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PlannerBucket.create_from_discriminator_value(pn) }) },
                    "plans" => lambda {|n| @plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PlannerPlan.create_from_discriminator_value(pn) }) },
                    "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PlannerTask.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the plans property value. Read-only. Nullable. Returns a collection of the specified plans
            ## @return a planner_plan
            ## 
            def plans
                return @plans
            end
            ## 
            ## Sets the plans property value. Read-only. Nullable. Returns a collection of the specified plans
            ## @param value Value to set for the plans property.
            ## @return a void
            ## 
            def plans=(value)
                @plans = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("buckets", @buckets)
                writer.write_collection_of_object_values("plans", @plans)
                writer.write_collection_of_object_values("tasks", @tasks)
            end
            ## 
            ## Gets the tasks property value. Read-only. Nullable. Returns a collection of the specified tasks
            ## @return a planner_task
            ## 
            def tasks
                return @tasks
            end
            ## 
            ## Sets the tasks property value. Read-only. Nullable. Returns a collection of the specified tasks
            ## @param value Value to set for the tasks property.
            ## @return a void
            ## 
            def tasks=(value)
                @tasks = value
            end
        end
    end
end
