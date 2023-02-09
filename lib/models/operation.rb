require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Operation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The start time of the operation.
            @created_date_time
            ## 
            # The time of the last action of the operation.
            @last_action_date_time
            ## 
            # The current status of the operation: notStarted, running, completed, failed
            @status
            ## 
            ## Instantiates a new operation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The start time of the operation.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The start time of the operation.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.onenoteOperation"
                            return OnenoteOperation.new
                    end
                end
                return Operation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::OperationStatus) },
                })
            end
            ## 
            ## Gets the lastActionDateTime property value. The time of the last action of the operation.
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. The time of the last action of the operation.
            ## @param value Value to set for the last_action_date_time property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The current status of the operation: notStarted, running, completed, failed
            ## @return a operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The current status of the operation: notStarted, running, completed, failed
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
