require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Represents the status of a Viva Engage async operation that is an operation that transcends thelifetime of a single API request. These operations are long-running or too expensive to completewithin the time frame of their original request.
        class EngagementAsyncOperation < MicrosoftGraph::Models::LongRunningOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The type of the long-running operation. The possible values are: createCommunity, unknownFutureValue.
            @operation_type
            ## 
            # The ID of the object created or modified as a result of this async operation.
            @resource_id
            ## 
            ## Instantiates a new EngagementAsyncOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a engagement_async_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EngagementAsyncOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "operationType" => lambda {|n| @operation_type = n.get_enum_value(MicrosoftGraph::Models::EngagementAsyncOperationType) },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the operationType property value. The type of the long-running operation. The possible values are: createCommunity, unknownFutureValue.
            ## @return a engagement_async_operation_type
            ## 
            def operation_type
                return @operation_type
            end
            ## 
            ## Sets the operationType property value. The type of the long-running operation. The possible values are: createCommunity, unknownFutureValue.
            ## @param value Value to set for the operationType property.
            ## @return a void
            ## 
            def operation_type=(value)
                @operation_type = value
            end
            ## 
            ## Gets the resourceId property value. The ID of the object created or modified as a result of this async operation.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The ID of the object created or modified as a result of this async operation.
            ## @param value Value to set for the resourceId property.
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
                writer.write_enum_value("operationType", @operation_type)
                writer.write_string_value("resourceId", @resource_id)
            end
        end
    end
end
