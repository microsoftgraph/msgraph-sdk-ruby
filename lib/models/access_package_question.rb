require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageQuestion < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies whether the requestor is allowed to edit answers to questions for an assignment by posting an update to accessPackageAssignmentRequest.
            @is_answer_editable
            ## 
            # Whether the requestor is required to supply an answer or not.
            @is_required
            ## 
            # The text of the question represented in a format for a specific locale.
            @localizations
            ## 
            # Relative position of this question when displaying a list of questions to the requestor.
            @sequence
            ## 
            # The text of the question to show to the requestor.
            @text
            ## 
            ## Instantiates a new accessPackageQuestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_question
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.accessPackageMultipleChoiceQuestion"
                            return AccessPackageMultipleChoiceQuestion.new
                        when "#microsoft.graph.accessPackageTextInputQuestion"
                            return AccessPackageTextInputQuestion.new
                    end
                end
                return AccessPackageQuestion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isAnswerEditable" => lambda {|n| @is_answer_editable = n.get_boolean_value() },
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                    "localizations" => lambda {|n| @localizations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageLocalizedText.create_from_discriminator_value(pn) }) },
                    "sequence" => lambda {|n| @sequence = n.get_number_value() },
                    "text" => lambda {|n| @text = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isAnswerEditable property value. Specifies whether the requestor is allowed to edit answers to questions for an assignment by posting an update to accessPackageAssignmentRequest.
            ## @return a boolean
            ## 
            def is_answer_editable
                return @is_answer_editable
            end
            ## 
            ## Sets the isAnswerEditable property value. Specifies whether the requestor is allowed to edit answers to questions for an assignment by posting an update to accessPackageAssignmentRequest.
            ## @param value Value to set for the is_answer_editable property.
            ## @return a void
            ## 
            def is_answer_editable=(value)
                @is_answer_editable = value
            end
            ## 
            ## Gets the isRequired property value. Whether the requestor is required to supply an answer or not.
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. Whether the requestor is required to supply an answer or not.
            ## @param value Value to set for the is_required property.
            ## @return a void
            ## 
            def is_required=(value)
                @is_required = value
            end
            ## 
            ## Gets the localizations property value. The text of the question represented in a format for a specific locale.
            ## @return a access_package_localized_text
            ## 
            def localizations
                return @localizations
            end
            ## 
            ## Sets the localizations property value. The text of the question represented in a format for a specific locale.
            ## @param value Value to set for the localizations property.
            ## @return a void
            ## 
            def localizations=(value)
                @localizations = value
            end
            ## 
            ## Gets the sequence property value. Relative position of this question when displaying a list of questions to the requestor.
            ## @return a integer
            ## 
            def sequence
                return @sequence
            end
            ## 
            ## Sets the sequence property value. Relative position of this question when displaying a list of questions to the requestor.
            ## @param value Value to set for the sequence property.
            ## @return a void
            ## 
            def sequence=(value)
                @sequence = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isAnswerEditable", @is_answer_editable)
                writer.write_boolean_value("isRequired", @is_required)
                writer.write_collection_of_object_values("localizations", @localizations)
                writer.write_number_value("sequence", @sequence)
                writer.write_string_value("text", @text)
            end
            ## 
            ## Gets the text property value. The text of the question to show to the requestor.
            ## @return a string
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. The text of the question to show to the requestor.
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
        end
    end
end
