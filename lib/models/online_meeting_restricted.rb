require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnlineMeetingRestricted
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies the reason shared content from this participant is disabled. Possible values are: watermarkProtection, unknownFutureValue.
            @content_sharing_disabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies the reason video from this participant is disabled. Possible values are: watermarkProtection, unknownFutureValue.
            @video_disabled
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
            ## Instantiates a new onlineMeetingRestricted and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentSharingDisabled property value. Specifies the reason shared content from this participant is disabled. Possible values are: watermarkProtection, unknownFutureValue.
            ## @return a online_meeting_content_sharing_disabled_reason
            ## 
            def content_sharing_disabled
                return @content_sharing_disabled
            end
            ## 
            ## Sets the contentSharingDisabled property value. Specifies the reason shared content from this participant is disabled. Possible values are: watermarkProtection, unknownFutureValue.
            ## @param value Value to set for the content_sharing_disabled property.
            ## @return a void
            ## 
            def content_sharing_disabled=(value)
                @content_sharing_disabled = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a online_meeting_restricted
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnlineMeetingRestricted.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contentSharingDisabled" => lambda {|n| @content_sharing_disabled = n.get_enum_value(MicrosoftGraph::Models::OnlineMeetingContentSharingDisabledReason) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "videoDisabled" => lambda {|n| @video_disabled = n.get_enum_value(MicrosoftGraph::Models::OnlineMeetingVideoDisabledReason) },
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
                writer.write_enum_value("contentSharingDisabled", @content_sharing_disabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("videoDisabled", @video_disabled)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the videoDisabled property value. Specifies the reason video from this participant is disabled. Possible values are: watermarkProtection, unknownFutureValue.
            ## @return a online_meeting_video_disabled_reason
            ## 
            def video_disabled
                return @video_disabled
            end
            ## 
            ## Sets the videoDisabled property value. Specifies the reason video from this participant is disabled. Possible values are: watermarkProtection, unknownFutureValue.
            ## @param value Value to set for the video_disabled property.
            ## @return a void
            ## 
            def video_disabled=(value)
                @video_disabled = value
            end
        end
    end
end
