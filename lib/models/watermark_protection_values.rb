require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WatermarkProtectionValues
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether to apply a watermark to any shared content.
            @is_enabled_for_content_sharing
            ## 
            # Indicates whether to apply a watermark to everyone's video feed.
            @is_enabled_for_video
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new watermarkProtectionValues and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a watermark_protection_values
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WatermarkProtectionValues.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isEnabledForContentSharing" => lambda {|n| @is_enabled_for_content_sharing = n.get_boolean_value() },
                    "isEnabledForVideo" => lambda {|n| @is_enabled_for_video = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isEnabledForContentSharing property value. Indicates whether to apply a watermark to any shared content.
            ## @return a boolean
            ## 
            def is_enabled_for_content_sharing
                return @is_enabled_for_content_sharing
            end
            ## 
            ## Sets the isEnabledForContentSharing property value. Indicates whether to apply a watermark to any shared content.
            ## @param value Value to set for the isEnabledForContentSharing property.
            ## @return a void
            ## 
            def is_enabled_for_content_sharing=(value)
                @is_enabled_for_content_sharing = value
            end
            ## 
            ## Gets the isEnabledForVideo property value. Indicates whether to apply a watermark to everyone's video feed.
            ## @return a boolean
            ## 
            def is_enabled_for_video
                return @is_enabled_for_video
            end
            ## 
            ## Sets the isEnabledForVideo property value. Indicates whether to apply a watermark to everyone's video feed.
            ## @param value Value to set for the isEnabledForVideo property.
            ## @return a void
            ## 
            def is_enabled_for_video=(value)
                @is_enabled_for_video = value
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
                writer.write_boolean_value("isEnabledForContentSharing", @is_enabled_for_content_sharing) unless @is_enabled_for_content_sharing.nil?
                writer.write_boolean_value("isEnabledForVideo", @is_enabled_for_video) unless @is_enabled_for_video.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
        end
    end
end
