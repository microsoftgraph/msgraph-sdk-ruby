require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FilterClause
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operatorName property
            @operator_name
            ## 
            # The sourceOperandName property
            @source_operand_name
            ## 
            # The targetOperand property
            @target_operand
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
            ## Instantiates a new filterClause and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a filter_clause
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FilterClause.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operatorName" => lambda {|n| @operator_name = n.get_string_value() },
                    "sourceOperandName" => lambda {|n| @source_operand_name = n.get_string_value() },
                    "targetOperand" => lambda {|n| @target_operand = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FilterOperand.create_from_discriminator_value(pn) }) },
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
            ## Gets the operatorName property value. The operatorName property
            ## @return a string
            ## 
            def operator_name
                return @operator_name
            end
            ## 
            ## Sets the operatorName property value. The operatorName property
            ## @param value Value to set for the operator_name property.
            ## @return a void
            ## 
            def operator_name=(value)
                @operator_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operatorName", @operator_name)
                writer.write_string_value("sourceOperandName", @source_operand_name)
                writer.write_object_value("targetOperand", @target_operand)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceOperandName property value. The sourceOperandName property
            ## @return a string
            ## 
            def source_operand_name
                return @source_operand_name
            end
            ## 
            ## Sets the sourceOperandName property value. The sourceOperandName property
            ## @param value Value to set for the source_operand_name property.
            ## @return a void
            ## 
            def source_operand_name=(value)
                @source_operand_name = value
            end
            ## 
            ## Gets the targetOperand property value. The targetOperand property
            ## @return a filter_operand
            ## 
            def target_operand
                return @target_operand
            end
            ## 
            ## Sets the targetOperand property value. The targetOperand property
            ## @param value Value to set for the target_operand property.
            ## @return a void
            ## 
            def target_operand=(value)
                @target_operand = value
            end
        end
    end
end
