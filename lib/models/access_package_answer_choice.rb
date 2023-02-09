require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAnswerChoice
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actual value of the selected choice. This is typically a string value which is understandable by applications. Required.
            @actual_value
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The text of the answer choice represented in a format for a specific locale.
            @localizations
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The text property
            @text
            ## 
            ## Gets the actualValue property value. The actual value of the selected choice. This is typically a string value which is understandable by applications. Required.
            ## @return a string
            ## 
            def actual_value
                return @actual_value
            end
            ## 
            ## Sets the actualValue property value. The actual value of the selected choice. This is typically a string value which is understandable by applications. Required.
            ## @param value Value to set for the actual_value property.
            ## @return a void
            ## 
            def actual_value=(value)
                @actual_value = value
            end
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
            ## Instantiates a new accessPackageAnswerChoice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_answer_choice
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAnswerChoice.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actualValue" => lambda {|n| @actual_value = n.get_string_value() },
                    "localizations" => lambda {|n| @localizations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageLocalizedText.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "text" => lambda {|n| @text = n.get_string_value() },
                }
            end
            ## 
            ## Gets the localizations property value. The text of the answer choice represented in a format for a specific locale.
            ## @return a access_package_localized_text
            ## 
            def localizations
                return @localizations
            end
            ## 
            ## Sets the localizations property value. The text of the answer choice represented in a format for a specific locale.
            ## @param value Value to set for the localizations property.
            ## @return a void
            ## 
            def localizations=(value)
                @localizations = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("actualValue", @actual_value)
                writer.write_collection_of_object_values("localizations", @localizations)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("text", @text)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the text property value. The text property
            ## @return a string
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. The text property
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
        end
    end
end
