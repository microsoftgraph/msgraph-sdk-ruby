require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PlannerProgressTaskBoardTaskFormat < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Hint value used to order the task on the progress view of the task board. For details about the supported format, see Using order hints in Planner.
            @order_hint
            ## 
            ## Instantiates a new plannerProgressTaskBoardTaskFormat and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_progress_task_board_task_format
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerProgressTaskBoardTaskFormat.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "orderHint" => lambda {|n| @order_hint = n.get_string_value() },
                })
            end
            ## 
            ## Gets the orderHint property value. Hint value used to order the task on the progress view of the task board. For details about the supported format, see Using order hints in Planner.
            ## @return a string
            ## 
            def order_hint
                return @order_hint
            end
            ## 
            ## Sets the orderHint property value. Hint value used to order the task on the progress view of the task board. For details about the supported format, see Using order hints in Planner.
            ## @param value Value to set for the order_hint property.
            ## @return a void
            ## 
            def order_hint=(value)
                @order_hint = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("orderHint", @order_hint)
            end
        end
    end
end
