require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BroadcastMeetingCaptionSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether captions are enabled for this Teams live event.
            @is_caption_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The spoken language.
            @spoken_language
            ## 
            # The translation languages (choose up to 6).
            @translation_languages
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
            ## Instantiates a new broadcastMeetingCaptionSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a broadcast_meeting_caption_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BroadcastMeetingCaptionSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isCaptionEnabled" => lambda {|n| @is_caption_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "spokenLanguage" => lambda {|n| @spoken_language = n.get_string_value() },
                    "translationLanguages" => lambda {|n| @translation_languages = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the isCaptionEnabled property value. Indicates whether captions are enabled for this Teams live event.
            ## @return a boolean
            ## 
            def is_caption_enabled
                return @is_caption_enabled
            end
            ## 
            ## Sets the isCaptionEnabled property value. Indicates whether captions are enabled for this Teams live event.
            ## @param value Value to set for the is_caption_enabled property.
            ## @return a void
            ## 
            def is_caption_enabled=(value)
                @is_caption_enabled = value
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
                writer.write_boolean_value("isCaptionEnabled", @is_caption_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("spokenLanguage", @spoken_language)
                writer.write_collection_of_primitive_values("translationLanguages", @translation_languages)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the spokenLanguage property value. The spoken language.
            ## @return a string
            ## 
            def spoken_language
                return @spoken_language
            end
            ## 
            ## Sets the spokenLanguage property value. The spoken language.
            ## @param value Value to set for the spoken_language property.
            ## @return a void
            ## 
            def spoken_language=(value)
                @spoken_language = value
            end
            ## 
            ## Gets the translationLanguages property value. The translation languages (choose up to 6).
            ## @return a string
            ## 
            def translation_languages
                return @translation_languages
            end
            ## 
            ## Sets the translationLanguages property value. The translation languages (choose up to 6).
            ## @param value Value to set for the translation_languages property.
            ## @return a void
            ## 
            def translation_languages=(value)
                @translation_languages = value
            end
        end
    end
end
