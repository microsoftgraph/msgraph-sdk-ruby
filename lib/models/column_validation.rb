require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ColumnValidation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Default BCP 47 language tag for the description.
            @default_language
            ## 
            # Localized messages that explain what is needed for this column's value to be considered valid. User will be prompted with this message if validation fails.
            @descriptions
            ## 
            # The formula to validate column value. For examples, see Examples of common formulas in lists.
            @formula
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new columnValidation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a column_validation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ColumnValidation.new
            end
            ## 
            ## Gets the defaultLanguage property value. Default BCP 47 language tag for the description.
            ## @return a string
            ## 
            def default_language
                return @default_language
            end
            ## 
            ## Sets the defaultLanguage property value. Default BCP 47 language tag for the description.
            ## @param value Value to set for the default_language property.
            ## @return a void
            ## 
            def default_language=(value)
                @default_language = value
            end
            ## 
            ## Gets the descriptions property value. Localized messages that explain what is needed for this column's value to be considered valid. User will be prompted with this message if validation fails.
            ## @return a display_name_localization
            ## 
            def descriptions
                return @descriptions
            end
            ## 
            ## Sets the descriptions property value. Localized messages that explain what is needed for this column's value to be considered valid. User will be prompted with this message if validation fails.
            ## @param value Value to set for the descriptions property.
            ## @return a void
            ## 
            def descriptions=(value)
                @descriptions = value
            end
            ## 
            ## Gets the formula property value. The formula to validate column value. For examples, see Examples of common formulas in lists.
            ## @return a string
            ## 
            def formula
                return @formula
            end
            ## 
            ## Sets the formula property value. The formula to validate column value. For examples, see Examples of common formulas in lists.
            ## @param value Value to set for the formula property.
            ## @return a void
            ## 
            def formula=(value)
                @formula = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultLanguage" => lambda {|n| @default_language = n.get_string_value() },
                    "descriptions" => lambda {|n| @descriptions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DisplayNameLocalization.create_from_discriminator_value(pn) }) },
                    "formula" => lambda {|n| @formula = n.get_string_value() },
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
                writer.write_string_value("defaultLanguage", @default_language)
                writer.write_collection_of_object_values("descriptions", @descriptions)
                writer.write_string_value("formula", @formula)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
