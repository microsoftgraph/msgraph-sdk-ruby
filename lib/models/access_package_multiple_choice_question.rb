require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageMultipleChoiceQuestion < MicrosoftGraph::Models::AccessPackageQuestion
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of answer choices.
            @choices
            ## 
            # Indicates whether requestor can select multiple choices as their answer.
            @is_multiple_selection_allowed
            ## 
            ## Gets the choices property value. List of answer choices.
            ## @return a access_package_answer_choice
            ## 
            def choices
                return @choices
            end
            ## 
            ## Sets the choices property value. List of answer choices.
            ## @param value Value to set for the choices property.
            ## @return a void
            ## 
            def choices=(value)
                @choices = value
            end
            ## 
            ## Instantiates a new AccessPackageMultipleChoiceQuestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessPackageMultipleChoiceQuestion"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_multiple_choice_question
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageMultipleChoiceQuestion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "choices" => lambda {|n| @choices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageAnswerChoice.create_from_discriminator_value(pn) }) },
                    "isMultipleSelectionAllowed" => lambda {|n| @is_multiple_selection_allowed = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isMultipleSelectionAllowed property value. Indicates whether requestor can select multiple choices as their answer.
            ## @return a boolean
            ## 
            def is_multiple_selection_allowed
                return @is_multiple_selection_allowed
            end
            ## 
            ## Sets the isMultipleSelectionAllowed property value. Indicates whether requestor can select multiple choices as their answer.
            ## @param value Value to set for the is_multiple_selection_allowed property.
            ## @return a void
            ## 
            def is_multiple_selection_allowed=(value)
                @is_multiple_selection_allowed = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("choices", @choices)
                writer.write_boolean_value("isMultipleSelectionAllowed", @is_multiple_selection_allowed)
            end
        end
    end
end
