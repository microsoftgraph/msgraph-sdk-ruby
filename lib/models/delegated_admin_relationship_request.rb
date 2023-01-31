require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class DelegatedAdminRelationshipRequest < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        @action
        @created_date_time
        @last_modified_date_time
        @status
        ## 
        ## Gets the action property value. 
        ## @return a delegated_admin_relationship_request_action
        ## 
        def action
            return @action
        end
        ## 
        ## Sets the action property value. 
        ## @param value Value to set for the action property.
        ## @return a void
        ## 
        def action=(value)
            @action = value
        end
        ## 
        ## Instantiates a new delegatedAdminRelationshipRequest and sets the default values.
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
        ## @return a delegated_admin_relationship_request
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DelegatedAdminRelationshipRequest.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraph::Models::DelegatedAdminRelationshipRequestAction) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::DelegatedAdminRelationshipRequestStatus) },
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("action", @action)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the status property value. 
        ## @return a delegated_admin_relationship_request_status
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
