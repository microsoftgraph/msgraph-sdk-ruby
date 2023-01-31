require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class DelegatedAdminRelationshipOperation < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        @created_date_time
        @data
        @last_modified_date_time
        @operation_type
        @status
        ## 
        ## Instantiates a new delegatedAdminRelationshipOperation and sets the default values.
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
        ## @return a delegated_admin_relationship_operation
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DelegatedAdminRelationshipOperation.new
        end
        ## 
        ## Gets the data property value. 
        ## @return a string
        ## 
        def data
            return @data
        end
        ## 
        ## Sets the data property value. 
        ## @param value Value to set for the data property.
        ## @return a void
        ## 
        def data=(value)
            @data = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "data" => lambda {|n| @data = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "operationType" => lambda {|n| @operation_type = n.get_enum_value(MicrosoftGraph::Models::DelegatedAdminRelationshipOperationType) },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::LongRunningOperationStatus) },
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
        ## Gets the operationType property value. 
        ## @return a delegated_admin_relationship_operation_type
        ## 
        def operation_type
            return @operation_type
        end
        ## 
        ## Sets the operationType property value. 
        ## @param value Value to set for the operationType property.
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
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("data", @data)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_enum_value("operationType", @operation_type)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the status property value. 
        ## @return a long_running_operation_status
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