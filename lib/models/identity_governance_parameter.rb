require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceParameter
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The name of the parameter.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The valueType property
            @value_type
            ## 
            # The values of the parameter.
            @values
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new identityGovernanceParameter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_parameter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceParameter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "valueType" => lambda {|n| @value_type = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernanceValueType) },
                    "values" => lambda {|n| @values = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the name property value. The name of the parameter.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the parameter.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("name", @name) unless @name.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_enum_value("valueType", @value_type) unless @value_type.nil?
                writer.write_collection_of_primitive_values("values", @values) unless @values.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the valueType property value. The valueType property
            ## @return a identity_governance_value_type
            ## 
            def value_type
                return @value_type
            end
            ## 
            ## Sets the valueType property value. The valueType property
            ## @param value Value to set for the valueType property.
            ## @return a void
            ## 
            def value_type=(value)
                @value_type = value
            end
            ## 
            ## Gets the values property value. The values of the parameter.
            ## @return a string
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. The values of the parameter.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
