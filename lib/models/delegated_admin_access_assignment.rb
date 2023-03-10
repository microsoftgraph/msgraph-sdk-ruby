require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DelegatedAdminAccessAssignment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessContainer property
            @access_container
            ## 
            # The accessDetails property
            @access_details
            ## 
            # The date and time in ISO 8601 format and in UTC time when the access assignment was created. Read-only.
            @created_date_time
            ## 
            # The date and time in ISO 8601 and in UTC time when this access assignment was last modified. Read-only.
            @last_modified_date_time
            ## 
            # The status of the access assignment. Read-only. The possible values are: pending, active, deleting, deleted, error, unknownFutureValue.
            @status
            ## 
            ## Gets the accessContainer property value. The accessContainer property
            ## @return a delegated_admin_access_container
            ## 
            def access_container
                return @access_container
            end
            ## 
            ## Sets the accessContainer property value. The accessContainer property
            ## @param value Value to set for the access_container property.
            ## @return a void
            ## 
            def access_container=(value)
                @access_container = value
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
            ## @param value Value to set for the access_details property.
            ## @return a void
            ## 
            def access_details=(value)
                @access_details = value
            end
            ## 
            ## Instantiates a new DelegatedAdminAccessAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time in ISO 8601 format and in UTC time when the access assignment was created. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time in ISO 8601 format and in UTC time when the access assignment was created. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a delegated_admin_access_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DelegatedAdminAccessAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessContainer" => lambda {|n| @access_container = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminAccessContainer.create_from_discriminator_value(pn) }) },
                    "accessDetails" => lambda {|n| @access_details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminAccessDetails.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::DelegatedAdminAccessAssignmentStatus) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time in ISO 8601 and in UTC time when this access assignment was last modified. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time in ISO 8601 and in UTC time when this access assignment was last modified. Read-only.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accessContainer", @access_container)
                writer.write_object_value("accessDetails", @access_details)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the access assignment. Read-only. The possible values are: pending, active, deleting, deleted, error, unknownFutureValue.
            ## @return a delegated_admin_access_assignment_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the access assignment. Read-only. The possible values are: pending, active, deleting, deleted, error, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
