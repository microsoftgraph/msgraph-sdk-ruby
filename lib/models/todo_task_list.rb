require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TodoTaskList < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the task list.
            @display_name
            ## 
            # The collection of open extensions defined for the task list. Nullable.
            @extensions
            ## 
            # True if the user is owner of the given task list.
            @is_owner
            ## 
            # True if the task list is shared with other users
            @is_shared
            ## 
            # The tasks in this task list. Read-only. Nullable.
            @tasks
            ## 
            # The wellknownListName property
            @wellknown_list_name
            ## 
            ## Instantiates a new todoTaskList and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a todo_task_list
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TodoTaskList.new
            end
            ## 
            ## Gets the displayName property value. The name of the task list.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the task list.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the task list. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the task list. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "isOwner" => lambda {|n| @is_owner = n.get_boolean_value() },
                    "isShared" => lambda {|n| @is_shared = n.get_boolean_value() },
                    "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TodoTask.create_from_discriminator_value(pn) }) },
                    "wellknownListName" => lambda {|n| @wellknown_list_name = n.get_enum_value(MicrosoftGraph::Models::WellknownListName) },
                })
            end
            ## 
            ## Gets the isOwner property value. True if the user is owner of the given task list.
            ## @return a boolean
            ## 
            def is_owner
                return @is_owner
            end
            ## 
            ## Sets the isOwner property value. True if the user is owner of the given task list.
            ## @param value Value to set for the is_owner property.
            ## @return a void
            ## 
            def is_owner=(value)
                @is_owner = value
            end
            ## 
            ## Gets the isShared property value. True if the task list is shared with other users
            ## @return a boolean
            ## 
            def is_shared
                return @is_shared
            end
            ## 
            ## Sets the isShared property value. True if the task list is shared with other users
            ## @param value Value to set for the is_shared property.
            ## @return a void
            ## 
            def is_shared=(value)
                @is_shared = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_boolean_value("isOwner", @is_owner)
                writer.write_boolean_value("isShared", @is_shared)
                writer.write_collection_of_object_values("tasks", @tasks)
                writer.write_enum_value("wellknownListName", @wellknown_list_name)
            end
            ## 
            ## Gets the tasks property value. The tasks in this task list. Read-only. Nullable.
            ## @return a todo_task
            ## 
            def tasks
                return @tasks
            end
            ## 
            ## Sets the tasks property value. The tasks in this task list. Read-only. Nullable.
            ## @param value Value to set for the tasks property.
            ## @return a void
            ## 
            def tasks=(value)
                @tasks = value
            end
            ## 
            ## Gets the wellknownListName property value. The wellknownListName property
            ## @return a wellknown_list_name
            ## 
            def wellknown_list_name
                return @wellknown_list_name
            end
            ## 
            ## Sets the wellknownListName property value. The wellknownListName property
            ## @param value Value to set for the wellknown_list_name property.
            ## @return a void
            ## 
            def wellknown_list_name=(value)
                @wellknown_list_name = value
            end
        end
    end
end
