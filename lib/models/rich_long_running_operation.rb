require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RichLongRunningOperation < MicrosoftGraph::Models::LongRunningOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Error that caused the operation to fail.
            @error
            ## 
            # A value between 0 and 100 that indicates the progress of the operation.
            @percentage_complete
            ## 
            # The unique identifier for the result.
            @resource_id
            ## 
            # The type of the operation.
            @type
            ## 
            ## Instantiates a new RichLongRunningOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a rich_long_running_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RichLongRunningOperation.new
            end
            ## 
            ## Gets the error property value. Error that caused the operation to fail.
            ## @return a public_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Error that caused the operation to fail.
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
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicError.create_from_discriminator_value(pn) }) },
                    "percentageComplete" => lambda {|n| @percentage_complete = n.get_number_value() },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the percentageComplete property value. A value between 0 and 100 that indicates the progress of the operation.
            ## @return a integer
            ## 
            def percentage_complete
                return @percentage_complete
            end
            ## 
            ## Sets the percentageComplete property value. A value between 0 and 100 that indicates the progress of the operation.
            ## @param value Value to set for the percentage_complete property.
            ## @return a void
            ## 
            def percentage_complete=(value)
                @percentage_complete = value
            end
            ## 
            ## Gets the resourceId property value. The unique identifier for the result.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The unique identifier for the result.
            ## @param value Value to set for the resource_id property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
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
                writer.write_number_value("percentageComplete", @percentage_complete)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_string_value("type", @type)
            end
            ## 
            ## Gets the type property value. The type of the operation.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type of the operation.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
