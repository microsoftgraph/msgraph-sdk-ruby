require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignmentRequest < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The access package associated with the accessPackageAssignmentRequest. An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources. Read-only. Nullable.  Supports $expand.
            @access_package
            ## 
            # Answers provided by the requestor to accessPackageQuestions asked of them at the time of request.
            @answers
            ## 
            # For a requestType of userAdd or adminAdd, this is an access package assignment requested to be created.  For a requestType of userRemove, adminRemove or systemRemove, this has the id property of an existing assignment to be removed.   Supports $expand.
            @assignment
            ## 
            # The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @completed_date_time
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Supports $filter.
            @created_date_time
            ## 
            # The type of the request. The possible values are: notSpecified, userAdd, UserExtend, userUpdate, userRemove, adminAdd, adminUpdate, adminRemove, systemAdd, systemUpdate, systemRemove, onBehalfAdd (not supported), unknownFutureValue. A request from the user themselves would have requestType of userAdd, userUpdate or userRemove. This property cannot be changed once set.
            @request_type
            ## 
            # The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable. Supports $expand.
            @requestor
            ## 
            # The range of dates that access is to be assigned to the requestor. This property cannot be changed once set.
            @schedule
            ## 
            # The state of the request. The possible values are: submitted, pendingApproval, delivering, delivered, deliveryFailed, denied, scheduled, canceled, partiallyDelivered, unknownFutureValue. Read-only. Supports $filter (eq).
            @state
            ## 
            # More information on the request processing status. Read-only.
            @status
            ## 
            ## Gets the accessPackage property value. The access package associated with the accessPackageAssignmentRequest. An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources. Read-only. Nullable.  Supports $expand.
            ## @return a access_package
            ## 
            def access_package
                return @access_package
            end
            ## 
            ## Sets the accessPackage property value. The access package associated with the accessPackageAssignmentRequest. An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources. Read-only. Nullable.  Supports $expand.
            ## @param value Value to set for the access_package property.
            ## @return a void
            ## 
            def access_package=(value)
                @access_package = value
            end
            ## 
            ## Gets the answers property value. Answers provided by the requestor to accessPackageQuestions asked of them at the time of request.
            ## @return a access_package_answer
            ## 
            def answers
                return @answers
            end
            ## 
            ## Sets the answers property value. Answers provided by the requestor to accessPackageQuestions asked of them at the time of request.
            ## @param value Value to set for the answers property.
            ## @return a void
            ## 
            def answers=(value)
                @answers = value
            end
            ## 
            ## Gets the assignment property value. For a requestType of userAdd or adminAdd, this is an access package assignment requested to be created.  For a requestType of userRemove, adminRemove or systemRemove, this has the id property of an existing assignment to be removed.   Supports $expand.
            ## @return a access_package_assignment
            ## 
            def assignment
                return @assignment
            end
            ## 
            ## Sets the assignment property value. For a requestType of userAdd or adminAdd, this is an access package assignment requested to be created.  For a requestType of userRemove, adminRemove or systemRemove, this has the id property of an existing assignment to be removed.   Supports $expand.
            ## @param value Value to set for the assignment property.
            ## @return a void
            ## 
            def assignment=(value)
                @assignment = value
            end
            ## 
            ## Gets the completedDateTime property value. The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the completed_date_time property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new accessPackageAssignmentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Supports $filter.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Supports $filter.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessPackage" => lambda {|n| @access_package = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "answers" => lambda {|n| @answers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageAnswer.create_from_discriminator_value(pn) }) },
                    "assignment" => lambda {|n| @assignment = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignment.create_from_discriminator_value(pn) }) },
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "requestType" => lambda {|n| @request_type = n.get_enum_value(MicrosoftGraph::Models::AccessPackageRequestType) },
                    "requestor" => lambda {|n| @requestor = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageSubject.create_from_discriminator_value(pn) }) },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EntitlementManagementSchedule.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::AccessPackageRequestState) },
                    "status" => lambda {|n| @status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the requestType property value. The type of the request. The possible values are: notSpecified, userAdd, UserExtend, userUpdate, userRemove, adminAdd, adminUpdate, adminRemove, systemAdd, systemUpdate, systemRemove, onBehalfAdd (not supported), unknownFutureValue. A request from the user themselves would have requestType of userAdd, userUpdate or userRemove. This property cannot be changed once set.
            ## @return a access_package_request_type
            ## 
            def request_type
                return @request_type
            end
            ## 
            ## Sets the requestType property value. The type of the request. The possible values are: notSpecified, userAdd, UserExtend, userUpdate, userRemove, adminAdd, adminUpdate, adminRemove, systemAdd, systemUpdate, systemRemove, onBehalfAdd (not supported), unknownFutureValue. A request from the user themselves would have requestType of userAdd, userUpdate or userRemove. This property cannot be changed once set.
            ## @param value Value to set for the request_type property.
            ## @return a void
            ## 
            def request_type=(value)
                @request_type = value
            end
            ## 
            ## Gets the requestor property value. The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable. Supports $expand.
            ## @return a access_package_subject
            ## 
            def requestor
                return @requestor
            end
            ## 
            ## Sets the requestor property value. The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the requestor property.
            ## @return a void
            ## 
            def requestor=(value)
                @requestor = value
            end
            ## 
            ## Gets the schedule property value. The range of dates that access is to be assigned to the requestor. This property cannot be changed once set.
            ## @return a entitlement_management_schedule
            ## 
            def schedule
                return @schedule
            end
            ## 
            ## Sets the schedule property value. The range of dates that access is to be assigned to the requestor. This property cannot be changed once set.
            ## @param value Value to set for the schedule property.
            ## @return a void
            ## 
            def schedule=(value)
                @schedule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accessPackage", @access_package)
                writer.write_collection_of_object_values("answers", @answers)
                writer.write_object_value("assignment", @assignment)
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("requestType", @request_type)
                writer.write_object_value("requestor", @requestor)
                writer.write_object_value("schedule", @schedule)
                writer.write_enum_value("state", @state)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the state property value. The state of the request. The possible values are: submitted, pendingApproval, delivering, delivered, deliveryFailed, denied, scheduled, canceled, partiallyDelivered, unknownFutureValue. Read-only. Supports $filter (eq).
            ## @return a access_package_request_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state of the request. The possible values are: submitted, pendingApproval, delivering, delivered, deliveryFailed, denied, scheduled, canceled, partiallyDelivered, unknownFutureValue. Read-only. Supports $filter (eq).
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the status property value. More information on the request processing status. Read-only.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. More information on the request processing status. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
