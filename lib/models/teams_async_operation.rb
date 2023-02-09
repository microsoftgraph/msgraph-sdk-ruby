require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsAsyncOperation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of times the operation was attempted before being marked successful or failed.
            @attempts_count
            ## 
            # Time when the operation was created.
            @created_date_time
            ## 
            # Any error that causes the async operation to fail.
            @error
            ## 
            # Time when the async operation was last updated.
            @last_action_date_time
            ## 
            # The operationType property
            @operation_type
            ## 
            # The status property
            @status
            ## 
            # The ID of the object that's created or modified as result of this async operation, typically a team.
            @target_resource_id
            ## 
            # The location of the object that's created or modified as result of this async operation. This URL should be treated as an opaque value and not parsed into its component paths.
            @target_resource_location
            ## 
            ## Gets the attemptsCount property value. Number of times the operation was attempted before being marked successful or failed.
            ## @return a integer
            ## 
            def attempts_count
                return @attempts_count
            end
            ## 
            ## Sets the attemptsCount property value. Number of times the operation was attempted before being marked successful or failed.
            ## @param value Value to set for the attempts_count property.
            ## @return a void
            ## 
            def attempts_count=(value)
                @attempts_count = value
            end
            ## 
            ## Instantiates a new teamsAsyncOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Time when the operation was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Time when the operation was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teams_async_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAsyncOperation.new
            end
            ## 
            ## Gets the error property value. Any error that causes the async operation to fail.
            ## @return a operation_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Any error that causes the async operation to fail.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attemptsCount" => lambda {|n| @attempts_count = n.get_number_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OperationError.create_from_discriminator_value(pn) }) },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "operationType" => lambda {|n| @operation_type = n.get_enum_value(MicrosoftGraph::Models::TeamsAsyncOperationType) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::TeamsAsyncOperationStatus) },
                    "targetResourceId" => lambda {|n| @target_resource_id = n.get_string_value() },
                    "targetResourceLocation" => lambda {|n| @target_resource_location = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastActionDateTime property value. Time when the async operation was last updated.
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. Time when the async operation was last updated.
            ## @param value Value to set for the last_action_date_time property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
            end
            ## 
            ## Gets the operationType property value. The operationType property
            ## @return a teams_async_operation_type
            ## 
            def operation_type
                return @operation_type
            end
            ## 
            ## Sets the operationType property value. The operationType property
            ## @param value Value to set for the operation_type property.
            ## @return a void
            ## 
            def operation_type=(value)
                @operation_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("attemptsCount", @attempts_count)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("error", @error)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_enum_value("operationType", @operation_type)
                writer.write_enum_value("status", @status)
                writer.write_string_value("targetResourceId", @target_resource_id)
                writer.write_string_value("targetResourceLocation", @target_resource_location)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a teams_async_operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the targetResourceId property value. The ID of the object that's created or modified as result of this async operation, typically a team.
            ## @return a string
            ## 
            def target_resource_id
                return @target_resource_id
            end
            ## 
            ## Sets the targetResourceId property value. The ID of the object that's created or modified as result of this async operation, typically a team.
            ## @param value Value to set for the target_resource_id property.
            ## @return a void
            ## 
            def target_resource_id=(value)
                @target_resource_id = value
            end
            ## 
            ## Gets the targetResourceLocation property value. The location of the object that's created or modified as result of this async operation. This URL should be treated as an opaque value and not parsed into its component paths.
            ## @return a string
            ## 
            def target_resource_location
                return @target_resource_location
            end
            ## 
            ## Sets the targetResourceLocation property value. The location of the object that's created or modified as result of this async operation. This URL should be treated as an opaque value and not parsed into its component paths.
            ## @param value Value to set for the target_resource_location property.
            ## @return a void
            ## 
            def target_resource_location=(value)
                @target_resource_location = value
            end
        end
    end
end
