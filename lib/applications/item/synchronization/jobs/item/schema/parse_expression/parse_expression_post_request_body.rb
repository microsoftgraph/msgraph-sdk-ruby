require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/attribute_definition'
require_relative '../../../../../../../models/expression_input_object'
require_relative '../../../../../../applications'
require_relative '../../../../../item'
require_relative '../../../../synchronization'
require_relative '../../../jobs'
require_relative '../../item'
require_relative '../schema'
require_relative './parse_expression'

module MicrosoftGraph
    module Applications
        module Item
            module Synchronization
                module Jobs
                    module Item
                        module Schema
                            module ParseExpression
                                class ParseExpressionPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The expression property
                                    @expression
                                    ## 
                                    # The targetAttributeDefinition property
                                    @target_attribute_definition
                                    ## 
                                    # The testInputObject property
                                    @test_input_object
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
                                    ## Instantiates a new parseExpressionPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a parse_expression_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ParseExpressionPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the expression property value. The expression property
                                    ## @return a string
                                    ## 
                                    def expression
                                        return @expression
                                    end
                                    ## 
                                    ## Sets the expression property value. The expression property
                                    ## @param value Value to set for the expression property.
                                    ## @return a void
                                    ## 
                                    def expression=(value)
                                        @expression = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "expression" => lambda {|n| @expression = n.get_string_value() },
                                            "targetAttributeDefinition" => lambda {|n| @target_attribute_definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttributeDefinition.create_from_discriminator_value(pn) }) },
                                            "testInputObject" => lambda {|n| @test_input_object = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExpressionInputObject.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_string_value("expression", @expression)
                                        writer.write_object_value("targetAttributeDefinition", @target_attribute_definition)
                                        writer.write_object_value("testInputObject", @test_input_object)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the targetAttributeDefinition property value. The targetAttributeDefinition property
                                    ## @return a attribute_definition
                                    ## 
                                    def target_attribute_definition
                                        return @target_attribute_definition
                                    end
                                    ## 
                                    ## Sets the targetAttributeDefinition property value. The targetAttributeDefinition property
                                    ## @param value Value to set for the target_attribute_definition property.
                                    ## @return a void
                                    ## 
                                    def target_attribute_definition=(value)
                                        @target_attribute_definition = value
                                    end
                                    ## 
                                    ## Gets the testInputObject property value. The testInputObject property
                                    ## @return a expression_input_object
                                    ## 
                                    def test_input_object
                                        return @test_input_object
                                    end
                                    ## 
                                    ## Sets the testInputObject property value. The testInputObject property
                                    ## @param value Value to set for the test_input_object property.
                                    ## @return a void
                                    ## 
                                    def test_input_object=(value)
                                        @test_input_object = value
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
