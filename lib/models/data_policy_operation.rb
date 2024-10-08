require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DataPolicyOperation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents when the request for this data policy operation was completed, in UTC time, using the ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Null until the operation completes.
            @completed_date_time
            ## 
            # Specifies the progress of an operation.
            @progress
            ## 
            # Possible values are: notStarted, running, complete, failed, unknownFutureValue.
            @status
            ## 
            # The URL location to where data is being exported for export requests.
            @storage_location
            ## 
            # Represents when the request for this data operation was submitted, in UTC time, using the ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @submitted_date_time
            ## 
            # The id for the user on whom the operation is performed.
            @user_id
            ## 
            ## Gets the completedDateTime property value. Represents when the request for this data policy operation was completed, in UTC time, using the ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Null until the operation completes.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. Represents when the request for this data policy operation was completed, in UTC time, using the ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Null until the operation completes.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new DataPolicyOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a data_policy_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DataPolicyOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "progress" => lambda {|n| @progress = n.get_object_value(lambda {|pn| DataPolicyOperation::DataPolicyOperationProgress.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::DataPolicyOperationStatus) },
                    "storageLocation" => lambda {|n| @storage_location = n.get_string_value() },
                    "submittedDateTime" => lambda {|n| @submitted_date_time = n.get_date_time_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the progress property value. Specifies the progress of an operation.
            ## @return a data_policy_operation_progress
            ## 
            def progress
                return @progress
            end
            ## 
            ## Sets the progress property value. Specifies the progress of an operation.
            ## @param value Value to set for the progress property.
            ## @return a void
            ## 
            def progress=(value)
                @progress = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_object_value("progress", @progress)
                writer.write_enum_value("status", @status)
                writer.write_string_value("storageLocation", @storage_location)
                writer.write_date_time_value("submittedDateTime", @submitted_date_time)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the status property value. Possible values are: notStarted, running, complete, failed, unknownFutureValue.
            ## @return a data_policy_operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Possible values are: notStarted, running, complete, failed, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the storageLocation property value. The URL location to where data is being exported for export requests.
            ## @return a string
            ## 
            def storage_location
                return @storage_location
            end
            ## 
            ## Sets the storageLocation property value. The URL location to where data is being exported for export requests.
            ## @param value Value to set for the storageLocation property.
            ## @return a void
            ## 
            def storage_location=(value)
                @storage_location = value
            end
            ## 
            ## Gets the submittedDateTime property value. Represents when the request for this data operation was submitted, in UTC time, using the ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def submitted_date_time
                return @submitted_date_time
            end
            ## 
            ## Sets the submittedDateTime property value. Represents when the request for this data operation was submitted, in UTC time, using the ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the submittedDateTime property.
            ## @return a void
            ## 
            def submitted_date_time=(value)
                @submitted_date_time = value
            end
            ## 
            ## Gets the userId property value. The id for the user on whom the operation is performed.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The id for the user on whom the operation is performed.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class DataPolicyOperationProgress
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a data_policy_operation_progress
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DataPolicyOperationProgress.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
