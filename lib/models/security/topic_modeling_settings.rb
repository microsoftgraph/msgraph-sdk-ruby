require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class TopicModelingSettings
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Indicates whether the themes model should dynamically optimize the number of generated topics. To learn more, see Adjust maximum number of themes dynamically.
                @dynamically_adjust_topic_count
                ## 
                # Indicates whether the themes model should exclude numbers while parsing document texts. To learn more, see Include numbers in themes.
                @ignore_numbers
                ## 
                # Indicates whether themes model is enabled for the case.
                @is_enabled
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The total number of topics that the themes model will generate for a review set. To learn more, see Maximum number of themes.
                @topic_count
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
                ## Instantiates a new topicModelingSettings and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a topic_modeling_settings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TopicModelingSettings.new
                end
                ## 
                ## Gets the dynamicallyAdjustTopicCount property value. Indicates whether the themes model should dynamically optimize the number of generated topics. To learn more, see Adjust maximum number of themes dynamically.
                ## @return a boolean
                ## 
                def dynamically_adjust_topic_count
                    return @dynamically_adjust_topic_count
                end
                ## 
                ## Sets the dynamicallyAdjustTopicCount property value. Indicates whether the themes model should dynamically optimize the number of generated topics. To learn more, see Adjust maximum number of themes dynamically.
                ## @param value Value to set for the dynamically_adjust_topic_count property.
                ## @return a void
                ## 
                def dynamically_adjust_topic_count=(value)
                    @dynamically_adjust_topic_count = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "dynamicallyAdjustTopicCount" => lambda {|n| @dynamically_adjust_topic_count = n.get_boolean_value() },
                        "ignoreNumbers" => lambda {|n| @ignore_numbers = n.get_boolean_value() },
                        "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "topicCount" => lambda {|n| @topic_count = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the ignoreNumbers property value. Indicates whether the themes model should exclude numbers while parsing document texts. To learn more, see Include numbers in themes.
                ## @return a boolean
                ## 
                def ignore_numbers
                    return @ignore_numbers
                end
                ## 
                ## Sets the ignoreNumbers property value. Indicates whether the themes model should exclude numbers while parsing document texts. To learn more, see Include numbers in themes.
                ## @param value Value to set for the ignore_numbers property.
                ## @return a void
                ## 
                def ignore_numbers=(value)
                    @ignore_numbers = value
                end
                ## 
                ## Gets the isEnabled property value. Indicates whether themes model is enabled for the case.
                ## @return a boolean
                ## 
                def is_enabled
                    return @is_enabled
                end
                ## 
                ## Sets the isEnabled property value. Indicates whether themes model is enabled for the case.
                ## @param value Value to set for the is_enabled property.
                ## @return a void
                ## 
                def is_enabled=(value)
                    @is_enabled = value
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
                    writer.write_boolean_value("dynamicallyAdjustTopicCount", @dynamically_adjust_topic_count)
                    writer.write_boolean_value("ignoreNumbers", @ignore_numbers)
                    writer.write_boolean_value("isEnabled", @is_enabled)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("topicCount", @topic_count)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the topicCount property value. The total number of topics that the themes model will generate for a review set. To learn more, see Maximum number of themes.
                ## @return a integer
                ## 
                def topic_count
                    return @topic_count
                end
                ## 
                ## Sets the topicCount property value. The total number of topics that the themes model will generate for a review set. To learn more, see Maximum number of themes.
                ## @param value Value to set for the topic_count property.
                ## @return a void
                ## 
                def topic_count=(value)
                    @topic_count = value
                end
            end
        end
    end
end
