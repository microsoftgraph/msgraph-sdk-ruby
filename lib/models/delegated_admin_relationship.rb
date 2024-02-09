require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DelegatedAdminRelationship < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The access assignments associated with the delegated admin relationship.
            @access_assignments
            ## 
            # The accessDetails property
            @access_details
            ## 
            # The date and time in ISO 8601 format and in UTC time when the relationship became active. Read-only.
            @activated_date_time
            ## 
            # The duration by which the validity of the relationship is automatically extended, denoted in ISO 8601 format. Supported values are: P0D, PT0S, P180D. The default value is PT0S. PT0S indicates that the relationship expires when the endDateTime is reached and it isn't automatically extended.
            @auto_extend_duration
            ## 
            # The date and time in ISO 8601 format and in UTC time when the relationship was created. Read-only.
            @created_date_time
            ## 
            # The display name and unique identifier of the customer of the relationship. This is configured either by the partner at the time the relationship is created or by the system after the customer approves the relationship. Can't be changed by the customer.
            @customer
            ## 
            # The display name of the relationship used for ease of identification. Must be unique across all delegated admin relationships of the partner and is set by the partner only when the relationship is in the created status and can't be changed by the customer.
            @display_name
            ## 
            # The duration of the relationship in ISO 8601 format. Must be a value between P1D and P2Y inclusive. This is set by the partner only when the relationship is in the created status and can't be changed by the customer.
            @duration
            ## 
            # The date and time in ISO 8601 format and in UTC time when the status of relationship changes to either terminated or expired. Calculated as endDateTime = activatedDateTime + duration. Read-only.
            @end_date_time
            ## 
            # The date and time in ISO 8601 format and in UTC time when the relationship was last modified. Read-only.
            @last_modified_date_time
            ## 
            # The long running operations associated with the delegated admin relationship.
            @operations
            ## 
            # The requests associated with the delegated admin relationship.
            @requests
            ## 
            # The status of the relationship. Read Only. The possible values are: activating, active, approvalPending, approved, created, expired, expiring, terminated, terminating, terminationRequested, unknownFutureValue. Supports $orderby.
            @status
            ## 
            ## Gets the accessAssignments property value. The access assignments associated with the delegated admin relationship.
            ## @return a delegated_admin_access_assignment
            ## 
            def access_assignments
                return @access_assignments
            end
            ## 
            ## Sets the accessAssignments property value. The access assignments associated with the delegated admin relationship.
            ## @param value Value to set for the accessAssignments property.
            ## @return a void
            ## 
            def access_assignments=(value)
                @access_assignments = value
            end
            ## 
            ## Gets the accessDetails property value. The accessDetails property
            ## @return a delegated_admin_access_details
            ## 
            def access_details
                return @access_details
            end
            ## 
            ## Sets the accessDetails property value. The accessDetails property
            ## @param value Value to set for the accessDetails property.
            ## @return a void
            ## 
            def access_details=(value)
                @access_details = value
            end
            ## 
            ## Gets the activatedDateTime property value. The date and time in ISO 8601 format and in UTC time when the relationship became active. Read-only.
            ## @return a date_time
            ## 
            def activated_date_time
                return @activated_date_time
            end
            ## 
            ## Sets the activatedDateTime property value. The date and time in ISO 8601 format and in UTC time when the relationship became active. Read-only.
            ## @param value Value to set for the activatedDateTime property.
            ## @return a void
            ## 
            def activated_date_time=(value)
                @activated_date_time = value
            end
            ## 
            ## Gets the autoExtendDuration property value. The duration by which the validity of the relationship is automatically extended, denoted in ISO 8601 format. Supported values are: P0D, PT0S, P180D. The default value is PT0S. PT0S indicates that the relationship expires when the endDateTime is reached and it isn't automatically extended.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def auto_extend_duration
                return @auto_extend_duration
            end
            ## 
            ## Sets the autoExtendDuration property value. The duration by which the validity of the relationship is automatically extended, denoted in ISO 8601 format. Supported values are: P0D, PT0S, P180D. The default value is PT0S. PT0S indicates that the relationship expires when the endDateTime is reached and it isn't automatically extended.
            ## @param value Value to set for the autoExtendDuration property.
            ## @return a void
            ## 
            def auto_extend_duration=(value)
                @auto_extend_duration = value
            end
            ## 
            ## Instantiates a new DelegatedAdminRelationship and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time in ISO 8601 format and in UTC time when the relationship was created. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time in ISO 8601 format and in UTC time when the relationship was created. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a delegated_admin_relationship
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.resellerDelegatedAdminRelationship"
                            return ResellerDelegatedAdminRelationship.new
                    end
                end
                return DelegatedAdminRelationship.new
            end
            ## 
            ## Gets the customer property value. The display name and unique identifier of the customer of the relationship. This is configured either by the partner at the time the relationship is created or by the system after the customer approves the relationship. Can't be changed by the customer.
            ## @return a delegated_admin_relationship_customer_participant
            ## 
            def customer
                return @customer
            end
            ## 
            ## Sets the customer property value. The display name and unique identifier of the customer of the relationship. This is configured either by the partner at the time the relationship is created or by the system after the customer approves the relationship. Can't be changed by the customer.
            ## @param value Value to set for the customer property.
            ## @return a void
            ## 
            def customer=(value)
                @customer = value
            end
            ## 
            ## Gets the displayName property value. The display name of the relationship used for ease of identification. Must be unique across all delegated admin relationships of the partner and is set by the partner only when the relationship is in the created status and can't be changed by the customer.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the relationship used for ease of identification. Must be unique across all delegated admin relationships of the partner and is set by the partner only when the relationship is in the created status and can't be changed by the customer.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the duration property value. The duration of the relationship in ISO 8601 format. Must be a value between P1D and P2Y inclusive. This is set by the partner only when the relationship is in the created status and can't be changed by the customer.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. The duration of the relationship in ISO 8601 format. Must be a value between P1D and P2Y inclusive. This is set by the partner only when the relationship is in the created status and can't be changed by the customer.
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
            end
            ## 
            ## Gets the endDateTime property value. The date and time in ISO 8601 format and in UTC time when the status of relationship changes to either terminated or expired. Calculated as endDateTime = activatedDateTime + duration. Read-only.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The date and time in ISO 8601 format and in UTC time when the status of relationship changes to either terminated or expired. Calculated as endDateTime = activatedDateTime + duration. Read-only.
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessAssignments" => lambda {|n| @access_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminAccessAssignment.create_from_discriminator_value(pn) }) },
                    "accessDetails" => lambda {|n| @access_details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminAccessDetails.create_from_discriminator_value(pn) }) },
                    "activatedDateTime" => lambda {|n| @activated_date_time = n.get_date_time_value() },
                    "autoExtendDuration" => lambda {|n| @auto_extend_duration = n.get_duration_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customer" => lambda {|n| @customer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminRelationshipCustomerParticipant.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "duration" => lambda {|n| @duration = n.get_duration_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminRelationshipOperation.create_from_discriminator_value(pn) }) },
                    "requests" => lambda {|n| @requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminRelationshipRequest.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::DelegatedAdminRelationshipStatus) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time in ISO 8601 format and in UTC time when the relationship was last modified. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time in ISO 8601 format and in UTC time when the relationship was last modified. Read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the operations property value. The long running operations associated with the delegated admin relationship.
            ## @return a delegated_admin_relationship_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The long running operations associated with the delegated admin relationship.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the requests property value. The requests associated with the delegated admin relationship.
            ## @return a delegated_admin_relationship_request
            ## 
            def requests
                return @requests
            end
            ## 
            ## Sets the requests property value. The requests associated with the delegated admin relationship.
            ## @param value Value to set for the requests property.
            ## @return a void
            ## 
            def requests=(value)
                @requests = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("accessAssignments", @access_assignments)
                writer.write_object_value("accessDetails", @access_details)
                writer.write_date_time_value("activatedDateTime", @activated_date_time)
                writer.write_duration_value("autoExtendDuration", @auto_extend_duration)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("customer", @customer)
                writer.write_string_value("displayName", @display_name)
                writer.write_duration_value("duration", @duration)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("requests", @requests)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the relationship. Read Only. The possible values are: activating, active, approvalPending, approved, created, expired, expiring, terminated, terminating, terminationRequested, unknownFutureValue. Supports $orderby.
            ## @return a delegated_admin_relationship_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the relationship. Read Only. The possible values are: activating, active, approvalPending, approved, created, expired, expiring, terminated, terminating, terminationRequested, unknownFutureValue. Supports $orderby.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
