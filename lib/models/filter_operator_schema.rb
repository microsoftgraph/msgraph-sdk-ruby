require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FilterOperatorSchema < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The arity property
            @arity
            ## 
            # The multivaluedComparisonType property
            @multivalued_comparison_type
            ## 
            # The supportedAttributeTypes property
            @supported_attribute_types
            ## 
            ## Gets the arity property value. The arity property
            ## @return a scope_operator_type
            ## 
            def arity
                return @arity
            end
            ## 
            ## Sets the arity property value. The arity property
            ## @param value Value to set for the arity property.
            ## @return a void
            ## 
            def arity=(value)
                @arity = value
            end
            ## 
            ## Instantiates a new FilterOperatorSchema and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a filter_operator_schema
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FilterOperatorSchema.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "arity" => lambda {|n| @arity = n.get_enum_value(MicrosoftGraph::Models::ScopeOperatorType) },
                    "multivaluedComparisonType" => lambda {|n| @multivalued_comparison_type = n.get_enum_value(MicrosoftGraph::Models::ScopeOperatorMultiValuedComparisonType) },
                    "supportedAttributeTypes" => lambda {|n| @supported_attribute_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttributeType.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the multivaluedComparisonType property value. The multivaluedComparisonType property
            ## @return a scope_operator_multi_valued_comparison_type
            ## 
            def multivalued_comparison_type
                return @multivalued_comparison_type
            end
            ## 
            ## Sets the multivaluedComparisonType property value. The multivaluedComparisonType property
            ## @param value Value to set for the multivalued_comparison_type property.
            ## @return a void
            ## 
            def multivalued_comparison_type=(value)
                @multivalued_comparison_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("arity", @arity)
                writer.write_enum_value("multivaluedComparisonType", @multivalued_comparison_type)
                writer.write_collection_of_object_values("supportedAttributeTypes", @supported_attribute_types)
            end
            ## 
            ## Gets the supportedAttributeTypes property value. The supportedAttributeTypes property
            ## @return a attribute_type
            ## 
            def supported_attribute_types
                return @supported_attribute_types
            end
            ## 
            ## Sets the supportedAttributeTypes property value. The supportedAttributeTypes property
            ## @param value Value to set for the supported_attribute_types property.
            ## @return a void
            ## 
            def supported_attribute_types=(value)
                @supported_attribute_types = value
            end
        end
    end
end
