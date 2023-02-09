require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PlannerPlan < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Nullable. Collection of buckets in the plan.
            @buckets
            ## 
            # Identifies the container of the plan. Specify only the url, the containerId and type, or all properties. After it is set, this property can’t be updated. Required.
            @container
            ## 
            # Read-only. The user who created the plan.
            @created_by
            ## 
            # Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @created_date_time
            ## 
            # Read-only. Nullable. Additional details about the plan.
            @details
            ## 
            # The owner property
            @owner
            ## 
            # Read-only. Nullable. Collection of tasks in the plan.
            @tasks
            ## 
            # Required. Title of the plan.
            @title
            ## 
            ## Gets the buckets property value. Read-only. Nullable. Collection of buckets in the plan.
            ## @return a planner_bucket
            ## 
            def buckets
                return @buckets
            end
            ## 
            ## Sets the buckets property value. Read-only. Nullable. Collection of buckets in the plan.
            ## @param value Value to set for the buckets property.
            ## @return a void
            ## 
            def buckets=(value)
                @buckets = value
            end
            ## 
            ## Instantiates a new plannerPlan and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the container property value. Identifies the container of the plan. Specify only the url, the containerId and type, or all properties. After it is set, this property can’t be updated. Required.
            ## @return a planner_plan_container
            ## 
            def container
                return @container
            end
            ## 
            ## Sets the container property value. Identifies the container of the plan. Specify only the url, the containerId and type, or all properties. After it is set, this property can’t be updated. Required.
            ## @param value Value to set for the container property.
            ## @return a void
            ## 
            def container=(value)
                @container = value
            end
            ## 
            ## Gets the createdBy property value. Read-only. The user who created the plan.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Read-only. The user who created the plan.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_plan
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerPlan.new
            end
            ## 
            ## Gets the details property value. Read-only. Nullable. Additional details about the plan.
            ## @return a planner_plan_details
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. Read-only. Nullable. Additional details about the plan.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "buckets" => lambda {|n| @buckets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PlannerBucket.create_from_discriminator_value(pn) }) },
                    "container" => lambda {|n| @container = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerPlanContainer.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "details" => lambda {|n| @details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerPlanDetails.create_from_discriminator_value(pn) }) },
                    "owner" => lambda {|n| @owner = n.get_string_value() },
                    "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PlannerTask.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                })
            end
            ## 
            ## Gets the owner property value. The owner property
            ## @return a string
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. The owner property
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
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
                writer.write_object_value("container", @container)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("details", @details)
                writer.write_string_value("owner", @owner)
                writer.write_collection_of_object_values("tasks", @tasks)
                writer.write_string_value("title", @title)
            end
            ## 
            ## Gets the tasks property value. Read-only. Nullable. Collection of tasks in the plan.
            ## @return a planner_task
            ## 
            def tasks
                return @tasks
            end
            ## 
            ## Sets the tasks property value. Read-only. Nullable. Collection of tasks in the plan.
            ## @param value Value to set for the tasks property.
            ## @return a void
            ## 
            def tasks=(value)
                @tasks = value
            end
            ## 
            ## Gets the title property value. Required. Title of the plan.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Required. Title of the plan.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
