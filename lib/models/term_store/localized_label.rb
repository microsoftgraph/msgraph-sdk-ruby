require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './term_store'

module MicrosoftGraph
    module Models
        module TermStore
            class LocalizedLabel
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Indicates whether the label is the default label.
                @is_default
                ## 
                # The language tag for the label.
                @language_tag
                ## 
                # The name of the label.
                @name
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
                ## Instantiates a new localizedLabel and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a localized_label
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LocalizedLabel.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                        "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the isDefault property value. Indicates whether the label is the default label.
                ## @return a boolean
                ## 
                def is_default
                    return @is_default
                end
                ## 
                ## Sets the isDefault property value. Indicates whether the label is the default label.
                ## @param value Value to set for the is_default property.
                ## @return a void
                ## 
                def is_default=(value)
                    @is_default = value
                end
                ## 
                ## Gets the languageTag property value. The language tag for the label.
                ## @return a string
                ## 
                def language_tag
                    return @language_tag
                end
                ## 
                ## Sets the languageTag property value. The language tag for the label.
                ## @param value Value to set for the language_tag property.
                ## @return a void
                ## 
                def language_tag=(value)
                    @language_tag = value
                end
                ## 
                ## Gets the name property value. The name of the label.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name of the label.
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
                    writer.write_boolean_value("isDefault", @is_default)
                    writer.write_string_value("languageTag", @language_tag)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
