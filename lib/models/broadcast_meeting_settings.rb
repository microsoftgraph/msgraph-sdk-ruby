require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BroadcastMeetingSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Defines who can join the Teams live event. Possible values are listed in the following table.
            @allowed_audience
            ## 
            # Caption settings of a Teams live event.
            @captions
            ## 
            # Indicates whether attendee report is enabled for this Teams live event. Default value is false.
            @is_attendee_report_enabled
            ## 
            # Indicates whether Q&A is enabled for this Teams live event. Default value is false.
            @is_question_and_answer_enabled
            ## 
            # Indicates whether recording is enabled for this Teams live event. Default value is false.
            @is_recording_enabled
            ## 
            # Indicates whether video on demand is enabled for this Teams live event. Default value is false.
            @is_video_on_demand_enabled
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
            ## Gets the allowedAudience property value. Defines who can join the Teams live event. Possible values are listed in the following table.
            ## @return a broadcast_meeting_audience
            ## 
            def allowed_audience
                return @allowed_audience
            end
            ## 
            ## Sets the allowedAudience property value. Defines who can join the Teams live event. Possible values are listed in the following table.
            ## @param value Value to set for the allowed_audience property.
            ## @return a void
            ## 
            def allowed_audience=(value)
                @allowed_audience = value
            end
            ## 
            ## Gets the captions property value. Caption settings of a Teams live event.
            ## @return a broadcast_meeting_caption_settings
            ## 
            def captions
                return @captions
            end
            ## 
            ## Sets the captions property value. Caption settings of a Teams live event.
            ## @param value Value to set for the captions property.
            ## @return a void
            ## 
            def captions=(value)
                @captions = value
            end
            ## 
            ## Instantiates a new broadcastMeetingSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a broadcast_meeting_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BroadcastMeetingSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedAudience" => lambda {|n| @allowed_audience = n.get_enum_value(MicrosoftGraph::Models::BroadcastMeetingAudience) },
                    "captions" => lambda {|n| @captions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::BroadcastMeetingCaptionSettings.create_from_discriminator_value(pn) }) },
                    "isAttendeeReportEnabled" => lambda {|n| @is_attendee_report_enabled = n.get_boolean_value() },
                    "isQuestionAndAnswerEnabled" => lambda {|n| @is_question_and_answer_enabled = n.get_boolean_value() },
                    "isRecordingEnabled" => lambda {|n| @is_recording_enabled = n.get_boolean_value() },
                    "isVideoOnDemandEnabled" => lambda {|n| @is_video_on_demand_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isAttendeeReportEnabled property value. Indicates whether attendee report is enabled for this Teams live event. Default value is false.
            ## @return a boolean
            ## 
            def is_attendee_report_enabled
                return @is_attendee_report_enabled
            end
            ## 
            ## Sets the isAttendeeReportEnabled property value. Indicates whether attendee report is enabled for this Teams live event. Default value is false.
            ## @param value Value to set for the is_attendee_report_enabled property.
            ## @return a void
            ## 
            def is_attendee_report_enabled=(value)
                @is_attendee_report_enabled = value
            end
            ## 
            ## Gets the isQuestionAndAnswerEnabled property value. Indicates whether Q&A is enabled for this Teams live event. Default value is false.
            ## @return a boolean
            ## 
            def is_question_and_answer_enabled
                return @is_question_and_answer_enabled
            end
            ## 
            ## Sets the isQuestionAndAnswerEnabled property value. Indicates whether Q&A is enabled for this Teams live event. Default value is false.
            ## @param value Value to set for the is_question_and_answer_enabled property.
            ## @return a void
            ## 
            def is_question_and_answer_enabled=(value)
                @is_question_and_answer_enabled = value
            end
            ## 
            ## Gets the isRecordingEnabled property value. Indicates whether recording is enabled for this Teams live event. Default value is false.
            ## @return a boolean
            ## 
            def is_recording_enabled
                return @is_recording_enabled
            end
            ## 
            ## Sets the isRecordingEnabled property value. Indicates whether recording is enabled for this Teams live event. Default value is false.
            ## @param value Value to set for the is_recording_enabled property.
            ## @return a void
            ## 
            def is_recording_enabled=(value)
                @is_recording_enabled = value
            end
            ## 
            ## Gets the isVideoOnDemandEnabled property value. Indicates whether video on demand is enabled for this Teams live event. Default value is false.
            ## @return a boolean
            ## 
            def is_video_on_demand_enabled
                return @is_video_on_demand_enabled
            end
            ## 
            ## Sets the isVideoOnDemandEnabled property value. Indicates whether video on demand is enabled for this Teams live event. Default value is false.
            ## @param value Value to set for the is_video_on_demand_enabled property.
            ## @return a void
            ## 
            def is_video_on_demand_enabled=(value)
                @is_video_on_demand_enabled = value
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
                writer.write_enum_value("allowedAudience", @allowed_audience)
                writer.write_object_value("captions", @captions)
                writer.write_boolean_value("isAttendeeReportEnabled", @is_attendee_report_enabled)
                writer.write_boolean_value("isQuestionAndAnswerEnabled", @is_question_and_answer_enabled)
                writer.write_boolean_value("isRecordingEnabled", @is_recording_enabled)
                writer.write_boolean_value("isVideoOnDemandEnabled", @is_video_on_demand_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
