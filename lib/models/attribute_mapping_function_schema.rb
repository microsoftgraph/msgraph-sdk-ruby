require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttributeMappingFunctionSchema < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of function parameters.
            @parameters
            ## 
            ## Instantiates a new AttributeMappingFunctionSchema and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attribute_mapping_function_schema
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttributeMappingFunctionSchema.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "parameters" => lambda {|n| @parameters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttributeMappingParameterSchema.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the parameters property value. Collection of function parameters.
            ## @return a attribute_mapping_parameter_schema
            ## 
            def parameters
                return @parameters
            end
            ## 
            ## Sets the parameters property value. Collection of function parameters.
            ## @param value Value to set for the parameters property.
            ## @return a void
            ## 
            def parameters=(value)
                @parameters = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("parameters", @parameters)
            end
        end
    end
end
