require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class DelegatedAdminRelationship < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        @access_assignments
        @access_details
        @activated_date_time
        @created_date_time
        @customer
        @display_name
        @duration
        @end_date_time
        @last_modified_date_time
        @operations
        @requests
        @status
        ## 
        ## Gets the accessAssignments property value. 
        ## @return a delegated_admin_access_assignment
        ## 
        def access_assignments
            return @access_assignments
        end
        ## 
        ## Sets the accessAssignments property value. 
        ## @param value Value to set for the accessAssignments property.
        ## @return a void
        ## 
        def access_assignments=(value)
            @access_assignments = value
        end
        ## 
        ## Gets the accessDetails property value. 
        ## @return a delegated_admin_access_details
        ## 
        def access_details
            return @access_details
        end
        ## 
        ## Sets the accessDetails property value. 
        ## @param value Value to set for the accessDetails property.
        ## @return a void
        ## 
        def access_details=(value)
            @access_details = value
        end
        ## 
        ## Gets the activatedDateTime property value. 
        ## @return a date_time
        ## 
        def activated_date_time
            return @activated_date_time
        end
        ## 
        ## Sets the activatedDateTime property value. 
        ## @param value Value to set for the activatedDateTime property.
        ## @return a void
        ## 
        def activated_date_time=(value)
            @activated_date_time = value
        end
        ## 
        ## Instantiates a new delegatedAdminRelationship and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. 
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. 
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a delegated_admin_relationship
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DelegatedAdminRelationship.new
        end
        ## 
        ## Gets the customer property value. 
        ## @return a delegated_admin_relationship_customer_participant
        ## 
        def customer
            return @customer
        end
        ## 
        ## Sets the customer property value. 
        ## @param value Value to set for the customer property.
        ## @return a void
        ## 
        def customer=(value)
            @customer = value
        end
        ## 
        ## Gets the displayName property value. 
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. 
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the duration property value. 
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def duration
            return @duration
        end
        ## 
        ## Sets the duration property value. 
        ## @param value Value to set for the duration property.
        ## @return a void
        ## 
        def duration=(value)
            @duration = value
        end
        ## 
        ## Gets the endDateTime property value. 
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. 
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
        ## Gets the lastModifiedDateTime property value. 
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. 
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the operations property value. 
        ## @return a delegated_admin_relationship_operation
        ## 
        def operations
            return @operations
        end
        ## 
        ## Sets the operations property value. 
        ## @param value Value to set for the operations property.
        ## @return a void
        ## 
        def operations=(value)
            @operations = value
        end
        ## 
        ## Gets the requests property value. 
        ## @return a delegated_admin_relationship_request
        ## 
        def requests
            return @requests
        end
        ## 
        ## Sets the requests property value. 
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
        ## Gets the status property value. 
        ## @return a delegated_admin_relationship_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. 
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
