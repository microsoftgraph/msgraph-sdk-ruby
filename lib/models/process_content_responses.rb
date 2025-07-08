require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProcessContentResponses
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier that matches the requestId provided in the corresponding processContentBatchRequest.
            @request_id
            ## 
            # The results property
            @results
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
            ## Instantiates a new ProcessContentResponses and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a process_content_responses
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProcessContentResponses.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "requestId" => lambda {|n| @request_id = n.get_string_value() },
                    "results" => lambda {|n| @results = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProcessContentResponse.create_from_discriminator_value(pn) }) },
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
            ## Gets the requestId property value. The unique identifier that matches the requestId provided in the corresponding processContentBatchRequest.
            ## @return a string
            ## 
            def request_id
                return @request_id
            end
            ## 
            ## Sets the requestId property value. The unique identifier that matches the requestId provided in the corresponding processContentBatchRequest.
            ## @param value Value to set for the requestId property.
            ## @return a void
            ## 
            def request_id=(value)
                @request_id = value
            end
            ## 
            ## Gets the results property value. The results property
            ## @return a process_content_response
            ## 
            def results
                return @results
            end
            ## 
            ## Sets the results property value. The results property
            ## @param value Value to set for the results property.
            ## @return a void
            ## 
            def results=(value)
                @results = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("requestId", @request_id)
                writer.write_object_value("results", @results)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
