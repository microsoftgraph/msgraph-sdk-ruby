require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAnswer
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The answeredQuestion property
            @answered_question
            ## 
            # The localized display value shown to the requestor and approvers.
            @display_value
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the answeredQuestion property value. The answeredQuestion property
            ## @return a access_package_question
            ## 
            def answered_question
                return @answered_question
            end
            ## 
            ## Sets the answeredQuestion property value. The answeredQuestion property
            ## @param value Value to set for the answeredQuestion property.
            ## @return a void
            ## 
            def answered_question=(value)
                @answered_question = value
            end
            ## 
            ## Instantiates a new accessPackageAnswer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_answer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.accessPackageAnswerString"
                            return AccessPackageAnswerString.new
                    end
                end
                return AccessPackageAnswer.new
            end
            ## 
            ## Gets the displayValue property value. The localized display value shown to the requestor and approvers.
            ## @return a string
            ## 
            def display_value
                return @display_value
            end
            ## 
            ## Sets the displayValue property value. The localized display value shown to the requestor and approvers.
            ## @param value Value to set for the displayValue property.
            ## @return a void
            ## 
            def display_value=(value)
                @display_value = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "answeredQuestion" => lambda {|n| @answered_question = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageQuestion.create_from_discriminator_value(pn) }) },
                    "displayValue" => lambda {|n| @display_value = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_object_value("answeredQuestion", @answered_question)
                writer.write_string_value("displayValue", @display_value)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
