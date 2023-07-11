require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ParseExpressionResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Error details, if expression evaluation resulted in an error.
            @error
            ## 
            # A collection of values produced by the evaluation of the expression.
            @evaluation_result
            ## 
            # true if the evaluation was successful.
            @evaluation_succeeded
            ## 
            # The OdataType property
            @odata_type
            ## 
            # An attributeMappingSource object representing the parsed expression.
            @parsed_expression
            ## 
            # true if the expression was parsed successfully.
            @parsing_succeeded
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new parseExpressionResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a parse_expression_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ParseExpressionResponse.new
            end
            ## 
            ## Gets the error property value. Error details, if expression evaluation resulted in an error.
            ## @return a public_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Error details, if expression evaluation resulted in an error.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## Gets the evaluationResult property value. A collection of values produced by the evaluation of the expression.
            ## @return a string
            ## 
            def evaluation_result
                return @evaluation_result
            end
            ## 
            ## Sets the evaluationResult property value. A collection of values produced by the evaluation of the expression.
            ## @param value Value to set for the evaluation_result property.
            ## @return a void
            ## 
            def evaluation_result=(value)
                @evaluation_result = value
            end
            ## 
            ## Gets the evaluationSucceeded property value. true if the evaluation was successful.
            ## @return a boolean
            ## 
            def evaluation_succeeded
                return @evaluation_succeeded
            end
            ## 
            ## Sets the evaluationSucceeded property value. true if the evaluation was successful.
            ## @param value Value to set for the evaluation_succeeded property.
            ## @return a void
            ## 
            def evaluation_succeeded=(value)
                @evaluation_succeeded = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicError.create_from_discriminator_value(pn) }) },
                    "evaluationResult" => lambda {|n| @evaluation_result = n.get_collection_of_primitive_values(String) },
                    "evaluationSucceeded" => lambda {|n| @evaluation_succeeded = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "parsedExpression" => lambda {|n| @parsed_expression = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttributeMappingSource.create_from_discriminator_value(pn) }) },
                    "parsingSucceeded" => lambda {|n| @parsing_succeeded = n.get_boolean_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the parsedExpression property value. An attributeMappingSource object representing the parsed expression.
            ## @return a attribute_mapping_source
            ## 
            def parsed_expression
                return @parsed_expression
            end
            ## 
            ## Sets the parsedExpression property value. An attributeMappingSource object representing the parsed expression.
            ## @param value Value to set for the parsed_expression property.
            ## @return a void
            ## 
            def parsed_expression=(value)
                @parsed_expression = value
            end
            ## 
            ## Gets the parsingSucceeded property value. true if the expression was parsed successfully.
            ## @return a boolean
            ## 
            def parsing_succeeded
                return @parsing_succeeded
            end
            ## 
            ## Sets the parsingSucceeded property value. true if the expression was parsed successfully.
            ## @param value Value to set for the parsing_succeeded property.
            ## @return a void
            ## 
            def parsing_succeeded=(value)
                @parsing_succeeded = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("error", @error)
                writer.write_collection_of_primitive_values("evaluationResult", @evaluation_result)
                writer.write_boolean_value("evaluationSucceeded", @evaluation_succeeded)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("parsedExpression", @parsed_expression)
                writer.write_boolean_value("parsingSucceeded", @parsing_succeeded)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
