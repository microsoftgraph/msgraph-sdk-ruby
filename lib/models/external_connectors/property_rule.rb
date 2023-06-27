require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraph
    module Models
        module ExternalConnectors
            class PropertyRule
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The operation property
                @operation
                ## 
                # The property from the externalItem schema. Required.
                @property
                ## 
                # A collection with one or many strings. The specified string(s) will be matched with the specified property using the specified operation. Required.
                @values
                ## 
                # The valuesJoinedBy property
                @values_joined_by
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
                ## Instantiates a new PropertyRule and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a property_rule
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return PropertyRule.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "operation" => lambda {|n| @operation = n.get_enum_value(MicrosoftGraph::Models::ExternalConnectors::RuleOperation) },
                        "property" => lambda {|n| @property = n.get_string_value() },
                        "values" => lambda {|n| @values = n.get_collection_of_primitive_values(String) },
                        "valuesJoinedBy" => lambda {|n| @values_joined_by = n.get_enum_value(MicrosoftGraph::Models::BinaryOperator) },
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
                ## Gets the operation property value. The operation property
                ## @return a rule_operation
                ## 
                def operation
                    return @operation
                end
                ## 
                ## Sets the operation property value. The operation property
                ## @param value Value to set for the operation property.
                ## @return a void
                ## 
                def operation=(value)
                    @operation = value
                end
                ## 
                ## Gets the property property value. The property from the externalItem schema. Required.
                ## @return a string
                ## 
                def property
                    return @property
                end
                ## 
                ## Sets the property property value. The property from the externalItem schema. Required.
                ## @param value Value to set for the property property.
                ## @return a void
                ## 
                def property=(value)
                    @property = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("operation", @operation)
                    writer.write_string_value("property", @property)
                    writer.write_collection_of_primitive_values("values", @values)
                    writer.write_enum_value("valuesJoinedBy", @values_joined_by)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the values property value. A collection with one or many strings. The specified string(s) will be matched with the specified property using the specified operation. Required.
                ## @return a string
                ## 
                def values
                    return @values
                end
                ## 
                ## Sets the values property value. A collection with one or many strings. The specified string(s) will be matched with the specified property using the specified operation. Required.
                ## @param value Value to set for the values property.
                ## @return a void
                ## 
                def values=(value)
                    @values = value
                end
                ## 
                ## Gets the valuesJoinedBy property value. The valuesJoinedBy property
                ## @return a binary_operator
                ## 
                def values_joined_by
                    return @values_joined_by
                end
                ## 
                ## Sets the valuesJoinedBy property value. The valuesJoinedBy property
                ## @param value Value to set for the values_joined_by property.
                ## @return a void
                ## 
                def values_joined_by=(value)
                    @values_joined_by = value
                end
            end
        end
    end
end
