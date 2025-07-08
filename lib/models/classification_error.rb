require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ClassificationError < MicrosoftGraph::Models::ClassifcationErrorBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of more specific errors contributing to the overall error.
            @details
            ## 
            ## Instantiates a new ClassificationError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a classification_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.processingError"
                            return ProcessingError.new
                    end
                end
                return ClassificationError.new
            end
            ## 
            ## Gets the details property value. A collection of more specific errors contributing to the overall error.
            ## @return a classifcation_error_base
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. A collection of more specific errors contributing to the overall error.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "details" => lambda {|n| @details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ClassifcationErrorBase.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("details", @details)
            end
        end
    end
end
