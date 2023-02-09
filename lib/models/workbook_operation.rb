require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookOperation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The error returned by the operation.
            @error
            ## 
            # The resource URI for the result.
            @resource_location
            ## 
            # The status property
            @status
            ## 
            ## Instantiates a new workbookOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookOperation.new
            end
            ## 
            ## Gets the error property value. The error returned by the operation.
            ## @return a workbook_operation_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. The error returned by the operation.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookOperationError.create_from_discriminator_value(pn) }) },
                    "resourceLocation" => lambda {|n| @resource_location = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::WorkbookOperationStatus) },
                })
            end
            ## 
            ## Gets the resourceLocation property value. The resource URI for the result.
            ## @return a string
            ## 
            def resource_location
                return @resource_location
            end
            ## 
            ## Sets the resourceLocation property value. The resource URI for the result.
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
                writer.write_object_value("error", @error)
                writer.write_string_value("resourceLocation", @resource_location)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a workbook_operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
