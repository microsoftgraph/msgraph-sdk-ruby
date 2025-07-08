require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProcessContentBatchRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The contentToProcess property
            @content_to_process
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A unique identifier provided by the client to correlate this specific request item within the batch.
            @request_id
            ## 
            # The unique identifier (Object ID or UPN) of the user in whose context the content should be processed.
            @user_id
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new ProcessContentBatchRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentToProcess property value. The contentToProcess property
            ## @return a process_content_request
            ## 
            def content_to_process
                return @content_to_process
            end
            ## 
            ## Sets the contentToProcess property value. The contentToProcess property
            ## @param value Value to set for the contentToProcess property.
            ## @return a void
            ## 
            def content_to_process=(value)
                @content_to_process = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a process_content_batch_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProcessContentBatchRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contentToProcess" => lambda {|n| @content_to_process = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProcessContentRequest.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "requestId" => lambda {|n| @request_id = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the requestId property value. A unique identifier provided by the client to correlate this specific request item within the batch.
            ## @return a string
            ## 
            def request_id
                return @request_id
            end
            ## 
            ## Sets the requestId property value. A unique identifier provided by the client to correlate this specific request item within the batch.
            ## @param value Value to set for the requestId property.
            ## @return a void
            ## 
            def request_id=(value)
                @request_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("contentToProcess", @content_to_process)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("requestId", @request_id)
                writer.write_string_value("userId", @user_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userId property value. The unique identifier (Object ID or UPN) of the user in whose context the content should be processed.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The unique identifier (Object ID or UPN) of the user in whose context the content should be processed.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
