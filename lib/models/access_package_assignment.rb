require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
            @access_package
            ## 
            # Read-only. Supports $filter (eq) on the id property and $expand query parameters.
            @assignment_policy
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @expired_date_time
            ## 
            # When the access assignment is to be in place. Read-only.
            @schedule
            ## 
            # The state of the access package assignment. The possible values are: delivering, partiallyDelivered, delivered, expired, deliveryFailed, unknownFutureValue. Read-only. Supports $filter (eq).
            @state
            ## 
            # More information about the assignment lifecycle.  Possible values include Delivering, Delivered, NearExpiry1DayNotificationTriggered, or ExpiredNotificationTriggered.  Read-only.
            @status
            ## 
            # The subject of the access package assignment. Read-only. Nullable. Supports $expand. Supports $filter (eq) on objectId.
            @target
            ## 
            ## Gets the accessPackage property value. Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
            ## @return a access_package
            ## 
            def access_package
                return @access_package
            end
            ## 
            ## Sets the accessPackage property value. Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
            ## @param value Value to set for the access_package property.
            ## @return a void
            ## 
            def access_package=(value)
                @access_package = value
            end
            ## 
            ## Gets the assignmentPolicy property value. Read-only. Supports $filter (eq) on the id property and $expand query parameters.
            ## @return a access_package_assignment_policy
            ## 
            def assignment_policy
                return @assignment_policy
            end
            ## 
            ## Sets the assignmentPolicy property value. Read-only. Supports $filter (eq) on the id property and $expand query parameters.
            ## @param value Value to set for the assignment_policy property.
            ## @return a void
            ## 
            def assignment_policy=(value)
                @assignment_policy = value
            end
            ## 
            ## Instantiates a new accessPackageAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignment.new
            end
            ## 
            ## Gets the expiredDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def expired_date_time
                return @expired_date_time
            end
            ## 
            ## Sets the expiredDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the expired_date_time property.
            ## @return a void
            ## 
            def expired_date_time=(value)
                @expired_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessPackage" => lambda {|n| @access_package = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "assignmentPolicy" => lambda {|n| @assignment_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignmentPolicy.create_from_discriminator_value(pn) }) },
                    "expiredDateTime" => lambda {|n| @expired_date_time = n.get_date_time_value() },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EntitlementManagementSchedule.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::AccessPackageAssignmentState) },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageSubject.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the schedule property value. When the access assignment is to be in place. Read-only.
            ## @return a entitlement_management_schedule
            ## 
            def schedule
                return @schedule
            end
            ## 
            ## Sets the schedule property value. When the access assignment is to be in place. Read-only.
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
                writer.write_object_value("assignmentPolicy", @assignment_policy)
                writer.write_date_time_value("expiredDateTime", @expired_date_time)
                writer.write_object_value("schedule", @schedule)
                writer.write_enum_value("state", @state)
                writer.write_string_value("status", @status)
                writer.write_object_value("target", @target)
            end
            ## 
            ## Gets the state property value. The state of the access package assignment. The possible values are: delivering, partiallyDelivered, delivered, expired, deliveryFailed, unknownFutureValue. Read-only. Supports $filter (eq).
            ## @return a access_package_assignment_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state of the access package assignment. The possible values are: delivering, partiallyDelivered, delivered, expired, deliveryFailed, unknownFutureValue. Read-only. Supports $filter (eq).
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the status property value. More information about the assignment lifecycle.  Possible values include Delivering, Delivered, NearExpiry1DayNotificationTriggered, or ExpiredNotificationTriggered.  Read-only.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. More information about the assignment lifecycle.  Possible values include Delivering, Delivered, NearExpiry1DayNotificationTriggered, or ExpiredNotificationTriggered.  Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the target property value. The subject of the access package assignment. Read-only. Nullable. Supports $expand. Supports $filter (eq) on objectId.
            ## @return a access_package_subject
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The subject of the access package assignment. Read-only. Nullable. Supports $expand. Supports $filter (eq) on objectId.
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
