require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Todo < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The task lists in the users mailbox.
            @lists
            ## 
            ## Instantiates a new todo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a todo
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Todo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lists" => lambda {|n| @lists = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TodoTaskList.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lists property value. The task lists in the users mailbox.
            ## @return a todo_task_list
            ## 
            def lists
                return @lists
            end
            ## 
            ## Sets the lists property value. The task lists in the users mailbox.
            ## @param value Value to set for the lists property.
            ## @return a void
            ## 
            def lists=(value)
                @lists = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("lists", @lists)
            end
        end
    end
end
