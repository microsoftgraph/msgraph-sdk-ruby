require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class PlannerGroup < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Read-only. Nullable. Returns the plannerPlans owned by the group.
        @plans
        ## 
        ## Instantiates a new plannerGroup and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a planner_group
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PlannerGroup.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "plans" => lambda {|n| @plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PlannerPlan.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the plans property value. Read-only. Nullable. Returns the plannerPlans owned by the group.
        ## @return a planner_plan
        ## 
        def plans
            return @plans
        end
        ## 
        ## Sets the plans property value. Read-only. Nullable. Returns the plannerPlans owned by the group.
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
            writer.write_collection_of_object_values("plans", @plans)
        end
    end
end
