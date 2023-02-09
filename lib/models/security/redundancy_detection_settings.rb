require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class RedundancyDetectionSettings
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Indicates whether email threading and near duplicate detection are enabled.
                @is_enabled
                ## 
                # Specifies the maximum number of words used for email threading and near duplicate detection. To learn more, see Minimum/maximum number of words.
                @max_words
                ## 
                # Specifies the minimum number of words used for email threading and near duplicate detection. To learn more, see Minimum/maximum number of words.
                @min_words
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Specifies the similarity level for documents to be put in the same near duplicate set. To learn more, see Document and email similarity threshold.
                @similarity_threshold
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
                ## Instantiates a new redundancyDetectionSettings and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a redundancy_detection_settings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return RedundancyDetectionSettings.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                        "maxWords" => lambda {|n| @max_words = n.get_number_value() },
                        "minWords" => lambda {|n| @min_words = n.get_number_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "similarityThreshold" => lambda {|n| @similarity_threshold = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the isEnabled property value. Indicates whether email threading and near duplicate detection are enabled.
                ## @return a boolean
                ## 
                def is_enabled
                    return @is_enabled
                end
                ## 
                ## Sets the isEnabled property value. Indicates whether email threading and near duplicate detection are enabled.
                ## @param value Value to set for the is_enabled property.
                ## @return a void
                ## 
                def is_enabled=(value)
                    @is_enabled = value
                end
                ## 
                ## Gets the maxWords property value. Specifies the maximum number of words used for email threading and near duplicate detection. To learn more, see Minimum/maximum number of words.
                ## @return a integer
                ## 
                def max_words
                    return @max_words
                end
                ## 
                ## Sets the maxWords property value. Specifies the maximum number of words used for email threading and near duplicate detection. To learn more, see Minimum/maximum number of words.
                ## @param value Value to set for the max_words property.
                ## @return a void
                ## 
                def max_words=(value)
                    @max_words = value
                end
                ## 
                ## Gets the minWords property value. Specifies the minimum number of words used for email threading and near duplicate detection. To learn more, see Minimum/maximum number of words.
                ## @return a integer
                ## 
                def min_words
                    return @min_words
                end
                ## 
                ## Sets the minWords property value. Specifies the minimum number of words used for email threading and near duplicate detection. To learn more, see Minimum/maximum number of words.
                ## @param value Value to set for the min_words property.
                ## @return a void
                ## 
                def min_words=(value)
                    @min_words = value
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
                    writer.write_boolean_value("isEnabled", @is_enabled)
                    writer.write_number_value("maxWords", @max_words)
                    writer.write_number_value("minWords", @min_words)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("similarityThreshold", @similarity_threshold)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the similarityThreshold property value. Specifies the similarity level for documents to be put in the same near duplicate set. To learn more, see Document and email similarity threshold.
                ## @return a integer
                ## 
                def similarity_threshold
                    return @similarity_threshold
                end
                ## 
                ## Sets the similarityThreshold property value. Specifies the similarity level for documents to be put in the same near duplicate set. To learn more, see Document and email similarity threshold.
                ## @param value Value to set for the similarity_threshold property.
                ## @return a void
                ## 
                def similarity_threshold=(value)
                    @similarity_threshold = value
                end
            end
        end
    end
end
