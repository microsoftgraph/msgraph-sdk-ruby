require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LongRunningOperation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The start time of the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The time of the last action in the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_action_date_time
            ## 
            # URI of the resource that the operation is performed on.
            @resource_location
            ## 
            # The status of the operation. The possible values are: notStarted, running, succeeded, failed, unknownFutureValue.
            @status
            ## 
            # Details about the status of the operation.
            @status_detail
            ## 
            ## Instantiates a new longRunningOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The start time of the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The start time of the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a long_running_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.richLongRunningOperation"
                            return RichLongRunningOperation.new
                    end
                end
                return LongRunningOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "resourceLocation" => lambda {|n| @resource_location = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::LongRunningOperationStatus) },
                    "statusDetail" => lambda {|n| @status_detail = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastActionDateTime property value. The time of the last action in the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. The time of the last action in the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the last_action_date_time property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
            end
            ## 
            ## Gets the resourceLocation property value. URI of the resource that the operation is performed on.
            ## @return a string
            ## 
            def resource_location
                return @resource_location
            end
            ## 
            ## Sets the resourceLocation property value. URI of the resource that the operation is performed on.
            ## @param value Value to set for the resource_location property.
            ## @return a void
            ## 
            def resource_location=(value)
                @resource_location = value
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
                writer.write_string_value("resourceLocation", @resource_location)
                writer.write_enum_value("status", @status)
                writer.write_string_value("statusDetail", @status_detail)
            end
            ## 
            ## Gets the status property value. The status of the operation. The possible values are: notStarted, running, succeeded, failed, unknownFutureValue.
            ## @return a long_running_operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the operation. The possible values are: notStarted, running, succeeded, failed, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the statusDetail property value. Details about the status of the operation.
            ## @return a string
            ## 
            def status_detail
                return @status_detail
            end
            ## 
            ## Sets the statusDetail property value. Details about the status of the operation.
            ## @param value Value to set for the status_detail property.
            ## @return a void
            ## 
            def status_detail=(value)
                @status_detail = value
            end
        end
    end
end
