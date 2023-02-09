require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnenoteOperation < MicrosoftGraph::Models::Operation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The error returned by the operation.
            @error
            ## 
            # The operation percent complete if the operation is still in running status.
            @percent_complete
            ## 
            # The resource id.
            @resource_id
            ## 
            # The resource URI for the object. For example, the resource URI for a copied page or section.
            @resource_location
            ## 
            ## Instantiates a new OnenoteOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a onenote_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnenoteOperation.new
            end
            ## 
            ## Gets the error property value. The error returned by the operation.
            ## @return a onenote_operation_error
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
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnenoteOperationError.create_from_discriminator_value(pn) }) },
                    "percentComplete" => lambda {|n| @percent_complete = n.get_string_value() },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "resourceLocation" => lambda {|n| @resource_location = n.get_string_value() },
                })
            end
            ## 
            ## Gets the percentComplete property value. The operation percent complete if the operation is still in running status.
            ## @return a string
            ## 
            def percent_complete
                return @percent_complete
            end
            ## 
            ## Sets the percentComplete property value. The operation percent complete if the operation is still in running status.
            ## @param value Value to set for the percent_complete property.
            ## @return a void
            ## 
            def percent_complete=(value)
                @percent_complete = value
            end
            ## 
            ## Gets the resourceId property value. The resource id.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The resource id.
            ## @param value Value to set for the resource_id property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Gets the resourceLocation property value. The resource URI for the object. For example, the resource URI for a copied page or section.
            ## @return a string
            ## 
            def resource_location
                return @resource_location
            end
            ## 
            ## Sets the resourceLocation property value. The resource URI for the object. For example, the resource URI for a copied page or section.
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
                writer.write_string_value("percentComplete", @percent_complete)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_string_value("resourceLocation", @resource_location)
            end
        end
    end
end
