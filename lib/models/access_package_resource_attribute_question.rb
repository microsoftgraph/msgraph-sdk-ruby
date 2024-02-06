require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageResourceAttributeQuestion < MicrosoftGraph::Models::AccessPackageResourceAttributeSource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The question property
            @question
            ## 
            ## Instantiates a new accessPackageResourceAttributeQuestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessPackageResourceAttributeQuestion"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_resource_attribute_question
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResourceAttributeQuestion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "question" => lambda {|n| @question = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageQuestion.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the question property value. The question property
            ## @return a access_package_question
            ## 
            def question
                return @question
            end
            ## 
            ## Sets the question property value. The question property
            ## @param value Value to set for the question property.
            ## @return a void
            ## 
            def question=(value)
                @question = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("question", @question)
            end
        end
    end
end
