require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LearningAssignment < MicrosoftGraph::Models::LearningCourseActivity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Assigned date for the course activity. Optional.
            @assigned_date_time
            ## 
            # The user ID of the assigner. Optional.
            @assigner_user_id
            ## 
            # The assignmentType property
            @assignment_type
            ## 
            # Due date for the course activity. Optional.
            @due_date_time
            ## 
            # Notes for the course activity. Optional.
            @notes
            ## 
            ## Gets the assignedDateTime property value. Assigned date for the course activity. Optional.
            ## @return a date_time
            ## 
            def assigned_date_time
                return @assigned_date_time
            end
            ## 
            ## Sets the assignedDateTime property value. Assigned date for the course activity. Optional.
            ## @param value Value to set for the assigned_date_time property.
            ## @return a void
            ## 
            def assigned_date_time=(value)
                @assigned_date_time = value
            end
            ## 
            ## Gets the assignerUserId property value. The user ID of the assigner. Optional.
            ## @return a string
            ## 
            def assigner_user_id
                return @assigner_user_id
            end
            ## 
            ## Sets the assignerUserId property value. The user ID of the assigner. Optional.
            ## @param value Value to set for the assigner_user_id property.
            ## @return a void
            ## 
            def assigner_user_id=(value)
                @assigner_user_id = value
            end
            ## 
            ## Gets the assignmentType property value. The assignmentType property
            ## @return a assignment_type
            ## 
            def assignment_type
                return @assignment_type
            end
            ## 
            ## Sets the assignmentType property value. The assignmentType property
            ## @param value Value to set for the assignment_type property.
            ## @return a void
            ## 
            def assignment_type=(value)
                @assignment_type = value
            end
            ## 
            ## Instantiates a new LearningAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a learning_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LearningAssignment.new
            end
            ## 
            ## Gets the dueDateTime property value. Due date for the course activity. Optional.
            ## @return a date_time_time_zone
            ## 
            def due_date_time
                return @due_date_time
            end
            ## 
            ## Sets the dueDateTime property value. Due date for the course activity. Optional.
            ## @param value Value to set for the due_date_time property.
            ## @return a void
            ## 
            def due_date_time=(value)
                @due_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedDateTime" => lambda {|n| @assigned_date_time = n.get_date_time_value() },
                    "assignerUserId" => lambda {|n| @assigner_user_id = n.get_string_value() },
                    "assignmentType" => lambda {|n| @assignment_type = n.get_enum_value(MicrosoftGraph::Models::AssignmentType) },
                    "dueDateTime" => lambda {|n| @due_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "notes" => lambda {|n| @notes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the notes property value. Notes for the course activity. Optional.
            ## @return a item_body
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Notes for the course activity. Optional.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("assignedDateTime", @assigned_date_time)
                writer.write_string_value("assignerUserId", @assigner_user_id)
                writer.write_enum_value("assignmentType", @assignment_type)
                writer.write_object_value("dueDateTime", @due_date_time)
                writer.write_object_value("notes", @notes)
            end
        end
    end
end
