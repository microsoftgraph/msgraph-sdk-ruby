require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallRecordsDeviceInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Name of the capture device driver used by the media endpoint.
            @capture_device_driver
            ## 
            # Name of the capture device used by the media endpoint.
            @capture_device_name
            ## 
            # Fraction of the call that the media endpoint detected the capture device was not working properly.
            @capture_not_functioning_event_ratio
            ## 
            # Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
            @cpu_insufficent_event_ratio
            ## 
            # Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
            @device_clipping_event_ratio
            ## 
            # Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
            @device_glitch_event_ratio
            ## 
            # Number of times during the call that the media endpoint detected howling or screeching audio.
            @howling_event_count
            ## 
            # The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
            @initial_signal_level_root_mean_square
            ## 
            # Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
            @low_speech_level_event_ratio
            ## 
            # Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
            @low_speech_to_noise_event_ratio
            ## 
            # Glitches per 5 minute interval for the media endpoint's microphone.
            @mic_glitch_rate
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Average energy level of received audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
            @received_noise_level
            ## 
            # Average energy level of received audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
            @received_signal_level
            ## 
            # Name of the render device driver used by the media endpoint.
            @render_device_driver
            ## 
            # Name of the render device used by the media endpoint.
            @render_device_name
            ## 
            # Fraction of the call that media endpoint detected device render is muted.
            @render_mute_event_ratio
            ## 
            # Fraction of the call that the media endpoint detected the render device was not working properly.
            @render_not_functioning_event_ratio
            ## 
            # Fraction of the call that media endpoint detected device render volume is set to 0.
            @render_zero_volume_event_ratio
            ## 
            # Average energy level of sent audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
            @sent_noise_level
            ## 
            # Average energy level of sent audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
            @sent_signal_level
            ## 
            # Glitches per 5 minute internal for the media endpoint's loudspeaker.
            @speaker_glitch_rate
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
            ## Gets the captureDeviceDriver property value. Name of the capture device driver used by the media endpoint.
            ## @return a string
            ## 
            def capture_device_driver
                return @capture_device_driver
            end
            ## 
            ## Sets the captureDeviceDriver property value. Name of the capture device driver used by the media endpoint.
            ## @param value Value to set for the captureDeviceDriver property.
            ## @return a void
            ## 
            def capture_device_driver=(value)
                @capture_device_driver = value
            end
            ## 
            ## Gets the captureDeviceName property value. Name of the capture device used by the media endpoint.
            ## @return a string
            ## 
            def capture_device_name
                return @capture_device_name
            end
            ## 
            ## Sets the captureDeviceName property value. Name of the capture device used by the media endpoint.
            ## @param value Value to set for the captureDeviceName property.
            ## @return a void
            ## 
            def capture_device_name=(value)
                @capture_device_name = value
            end
            ## 
            ## Gets the captureNotFunctioningEventRatio property value. Fraction of the call that the media endpoint detected the capture device was not working properly.
            ## @return a device_info_capture_not_functioning_event_ratio
            ## 
            def capture_not_functioning_event_ratio
                return @capture_not_functioning_event_ratio
            end
            ## 
            ## Sets the captureNotFunctioningEventRatio property value. Fraction of the call that the media endpoint detected the capture device was not working properly.
            ## @param value Value to set for the captureNotFunctioningEventRatio property.
            ## @return a void
            ## 
            def capture_not_functioning_event_ratio=(value)
                @capture_not_functioning_event_ratio = value
            end
            ## 
            ## Instantiates a new CallRecordsDeviceInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the cpuInsufficentEventRatio property value. Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
            ## @return a device_info_cpu_insufficent_event_ratio
            ## 
            def cpu_insufficent_event_ratio
                return @cpu_insufficent_event_ratio
            end
            ## 
            ## Sets the cpuInsufficentEventRatio property value. Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
            ## @param value Value to set for the cpuInsufficentEventRatio property.
            ## @return a void
            ## 
            def cpu_insufficent_event_ratio=(value)
                @cpu_insufficent_event_ratio = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_device_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordsDeviceInfo.new
            end
            ## 
            ## Gets the deviceClippingEventRatio property value. Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
            ## @return a device_info_device_clipping_event_ratio
            ## 
            def device_clipping_event_ratio
                return @device_clipping_event_ratio
            end
            ## 
            ## Sets the deviceClippingEventRatio property value. Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
            ## @param value Value to set for the deviceClippingEventRatio property.
            ## @return a void
            ## 
            def device_clipping_event_ratio=(value)
                @device_clipping_event_ratio = value
            end
            ## 
            ## Gets the deviceGlitchEventRatio property value. Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
            ## @return a device_info_device_glitch_event_ratio
            ## 
            def device_glitch_event_ratio
                return @device_glitch_event_ratio
            end
            ## 
            ## Sets the deviceGlitchEventRatio property value. Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
            ## @param value Value to set for the deviceGlitchEventRatio property.
            ## @return a void
            ## 
            def device_glitch_event_ratio=(value)
                @device_glitch_event_ratio = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "captureDeviceDriver" => lambda {|n| @capture_device_driver = n.get_string_value() },
                    "captureDeviceName" => lambda {|n| @capture_device_name = n.get_string_value() },
                    "captureNotFunctioningEventRatio" => lambda {|n| @capture_not_functioning_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoCaptureNotFunctioningEventRatio.create_from_discriminator_value(pn) }) },
                    "cpuInsufficentEventRatio" => lambda {|n| @cpu_insufficent_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoCpuInsufficentEventRatio.create_from_discriminator_value(pn) }) },
                    "deviceClippingEventRatio" => lambda {|n| @device_clipping_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoDeviceClippingEventRatio.create_from_discriminator_value(pn) }) },
                    "deviceGlitchEventRatio" => lambda {|n| @device_glitch_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoDeviceGlitchEventRatio.create_from_discriminator_value(pn) }) },
                    "howlingEventCount" => lambda {|n| @howling_event_count = n.get_number_value() },
                    "initialSignalLevelRootMeanSquare" => lambda {|n| @initial_signal_level_root_mean_square = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoInitialSignalLevelRootMeanSquare.create_from_discriminator_value(pn) }) },
                    "lowSpeechLevelEventRatio" => lambda {|n| @low_speech_level_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoLowSpeechLevelEventRatio.create_from_discriminator_value(pn) }) },
                    "lowSpeechToNoiseEventRatio" => lambda {|n| @low_speech_to_noise_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoLowSpeechToNoiseEventRatio.create_from_discriminator_value(pn) }) },
                    "micGlitchRate" => lambda {|n| @mic_glitch_rate = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoMicGlitchRate.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "receivedNoiseLevel" => lambda {|n| @received_noise_level = n.get_number_value() },
                    "receivedSignalLevel" => lambda {|n| @received_signal_level = n.get_number_value() },
                    "renderDeviceDriver" => lambda {|n| @render_device_driver = n.get_string_value() },
                    "renderDeviceName" => lambda {|n| @render_device_name = n.get_string_value() },
                    "renderMuteEventRatio" => lambda {|n| @render_mute_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoRenderMuteEventRatio.create_from_discriminator_value(pn) }) },
                    "renderNotFunctioningEventRatio" => lambda {|n| @render_not_functioning_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoRenderNotFunctioningEventRatio.create_from_discriminator_value(pn) }) },
                    "renderZeroVolumeEventRatio" => lambda {|n| @render_zero_volume_event_ratio = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoRenderZeroVolumeEventRatio.create_from_discriminator_value(pn) }) },
                    "sentNoiseLevel" => lambda {|n| @sent_noise_level = n.get_number_value() },
                    "sentSignalLevel" => lambda {|n| @sent_signal_level = n.get_number_value() },
                    "speakerGlitchRate" => lambda {|n| @speaker_glitch_rate = n.get_object_value(lambda {|pn| CallRecordsDeviceInfo::DeviceInfoSpeakerGlitchRate.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the howlingEventCount property value. Number of times during the call that the media endpoint detected howling or screeching audio.
            ## @return a integer
            ## 
            def howling_event_count
                return @howling_event_count
            end
            ## 
            ## Sets the howlingEventCount property value. Number of times during the call that the media endpoint detected howling or screeching audio.
            ## @param value Value to set for the howlingEventCount property.
            ## @return a void
            ## 
            def howling_event_count=(value)
                @howling_event_count = value
            end
            ## 
            ## Gets the initialSignalLevelRootMeanSquare property value. The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
            ## @return a device_info_initial_signal_level_root_mean_square
            ## 
            def initial_signal_level_root_mean_square
                return @initial_signal_level_root_mean_square
            end
            ## 
            ## Sets the initialSignalLevelRootMeanSquare property value. The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
            ## @param value Value to set for the initialSignalLevelRootMeanSquare property.
            ## @return a void
            ## 
            def initial_signal_level_root_mean_square=(value)
                @initial_signal_level_root_mean_square = value
            end
            ## 
            ## Gets the lowSpeechLevelEventRatio property value. Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
            ## @return a device_info_low_speech_level_event_ratio
            ## 
            def low_speech_level_event_ratio
                return @low_speech_level_event_ratio
            end
            ## 
            ## Sets the lowSpeechLevelEventRatio property value. Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
            ## @param value Value to set for the lowSpeechLevelEventRatio property.
            ## @return a void
            ## 
            def low_speech_level_event_ratio=(value)
                @low_speech_level_event_ratio = value
            end
            ## 
            ## Gets the lowSpeechToNoiseEventRatio property value. Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
            ## @return a device_info_low_speech_to_noise_event_ratio
            ## 
            def low_speech_to_noise_event_ratio
                return @low_speech_to_noise_event_ratio
            end
            ## 
            ## Sets the lowSpeechToNoiseEventRatio property value. Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
            ## @param value Value to set for the lowSpeechToNoiseEventRatio property.
            ## @return a void
            ## 
            def low_speech_to_noise_event_ratio=(value)
                @low_speech_to_noise_event_ratio = value
            end
            ## 
            ## Gets the micGlitchRate property value. Glitches per 5 minute interval for the media endpoint's microphone.
            ## @return a device_info_mic_glitch_rate
            ## 
            def mic_glitch_rate
                return @mic_glitch_rate
            end
            ## 
            ## Sets the micGlitchRate property value. Glitches per 5 minute interval for the media endpoint's microphone.
            ## @param value Value to set for the micGlitchRate property.
            ## @return a void
            ## 
            def mic_glitch_rate=(value)
                @mic_glitch_rate = value
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
            ## Gets the receivedNoiseLevel property value. Average energy level of received audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
            ## @return a integer
            ## 
            def received_noise_level
                return @received_noise_level
            end
            ## 
            ## Sets the receivedNoiseLevel property value. Average energy level of received audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
            ## @param value Value to set for the receivedNoiseLevel property.
            ## @return a void
            ## 
            def received_noise_level=(value)
                @received_noise_level = value
            end
            ## 
            ## Gets the receivedSignalLevel property value. Average energy level of received audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
            ## @return a integer
            ## 
            def received_signal_level
                return @received_signal_level
            end
            ## 
            ## Sets the receivedSignalLevel property value. Average energy level of received audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
            ## @param value Value to set for the receivedSignalLevel property.
            ## @return a void
            ## 
            def received_signal_level=(value)
                @received_signal_level = value
            end
            ## 
            ## Gets the renderDeviceDriver property value. Name of the render device driver used by the media endpoint.
            ## @return a string
            ## 
            def render_device_driver
                return @render_device_driver
            end
            ## 
            ## Sets the renderDeviceDriver property value. Name of the render device driver used by the media endpoint.
            ## @param value Value to set for the renderDeviceDriver property.
            ## @return a void
            ## 
            def render_device_driver=(value)
                @render_device_driver = value
            end
            ## 
            ## Gets the renderDeviceName property value. Name of the render device used by the media endpoint.
            ## @return a string
            ## 
            def render_device_name
                return @render_device_name
            end
            ## 
            ## Sets the renderDeviceName property value. Name of the render device used by the media endpoint.
            ## @param value Value to set for the renderDeviceName property.
            ## @return a void
            ## 
            def render_device_name=(value)
                @render_device_name = value
            end
            ## 
            ## Gets the renderMuteEventRatio property value. Fraction of the call that media endpoint detected device render is muted.
            ## @return a device_info_render_mute_event_ratio
            ## 
            def render_mute_event_ratio
                return @render_mute_event_ratio
            end
            ## 
            ## Sets the renderMuteEventRatio property value. Fraction of the call that media endpoint detected device render is muted.
            ## @param value Value to set for the renderMuteEventRatio property.
            ## @return a void
            ## 
            def render_mute_event_ratio=(value)
                @render_mute_event_ratio = value
            end
            ## 
            ## Gets the renderNotFunctioningEventRatio property value. Fraction of the call that the media endpoint detected the render device was not working properly.
            ## @return a device_info_render_not_functioning_event_ratio
            ## 
            def render_not_functioning_event_ratio
                return @render_not_functioning_event_ratio
            end
            ## 
            ## Sets the renderNotFunctioningEventRatio property value. Fraction of the call that the media endpoint detected the render device was not working properly.
            ## @param value Value to set for the renderNotFunctioningEventRatio property.
            ## @return a void
            ## 
            def render_not_functioning_event_ratio=(value)
                @render_not_functioning_event_ratio = value
            end
            ## 
            ## Gets the renderZeroVolumeEventRatio property value. Fraction of the call that media endpoint detected device render volume is set to 0.
            ## @return a device_info_render_zero_volume_event_ratio
            ## 
            def render_zero_volume_event_ratio
                return @render_zero_volume_event_ratio
            end
            ## 
            ## Sets the renderZeroVolumeEventRatio property value. Fraction of the call that media endpoint detected device render volume is set to 0.
            ## @param value Value to set for the renderZeroVolumeEventRatio property.
            ## @return a void
            ## 
            def render_zero_volume_event_ratio=(value)
                @render_zero_volume_event_ratio = value
            end
            ## 
            ## Gets the sentNoiseLevel property value. Average energy level of sent audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
            ## @return a integer
            ## 
            def sent_noise_level
                return @sent_noise_level
            end
            ## 
            ## Sets the sentNoiseLevel property value. Average energy level of sent audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.
            ## @param value Value to set for the sentNoiseLevel property.
            ## @return a void
            ## 
            def sent_noise_level=(value)
                @sent_noise_level = value
            end
            ## 
            ## Gets the sentSignalLevel property value. Average energy level of sent audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
            ## @return a integer
            ## 
            def sent_signal_level
                return @sent_signal_level
            end
            ## 
            ## Sets the sentSignalLevel property value. Average energy level of sent audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.
            ## @param value Value to set for the sentSignalLevel property.
            ## @return a void
            ## 
            def sent_signal_level=(value)
                @sent_signal_level = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("captureDeviceDriver", @capture_device_driver)
                writer.write_string_value("captureDeviceName", @capture_device_name)
                writer.write_object_value("captureNotFunctioningEventRatio", @capture_not_functioning_event_ratio)
                writer.write_object_value("cpuInsufficentEventRatio", @cpu_insufficent_event_ratio)
                writer.write_object_value("deviceClippingEventRatio", @device_clipping_event_ratio)
                writer.write_object_value("deviceGlitchEventRatio", @device_glitch_event_ratio)
                writer.write_number_value("howlingEventCount", @howling_event_count)
                writer.write_object_value("initialSignalLevelRootMeanSquare", @initial_signal_level_root_mean_square)
                writer.write_object_value("lowSpeechLevelEventRatio", @low_speech_level_event_ratio)
                writer.write_object_value("lowSpeechToNoiseEventRatio", @low_speech_to_noise_event_ratio)
                writer.write_object_value("micGlitchRate", @mic_glitch_rate)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("receivedNoiseLevel", @received_noise_level)
                writer.write_number_value("receivedSignalLevel", @received_signal_level)
                writer.write_string_value("renderDeviceDriver", @render_device_driver)
                writer.write_string_value("renderDeviceName", @render_device_name)
                writer.write_object_value("renderMuteEventRatio", @render_mute_event_ratio)
                writer.write_object_value("renderNotFunctioningEventRatio", @render_not_functioning_event_ratio)
                writer.write_object_value("renderZeroVolumeEventRatio", @render_zero_volume_event_ratio)
                writer.write_number_value("sentNoiseLevel", @sent_noise_level)
                writer.write_number_value("sentSignalLevel", @sent_signal_level)
                writer.write_object_value("speakerGlitchRate", @speaker_glitch_rate)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the speakerGlitchRate property value. Glitches per 5 minute internal for the media endpoint's loudspeaker.
            ## @return a device_info_speaker_glitch_rate
            ## 
            def speaker_glitch_rate
                return @speaker_glitch_rate
            end
            ## 
            ## Sets the speakerGlitchRate property value. Glitches per 5 minute internal for the media endpoint's loudspeaker.
            ## @param value Value to set for the speakerGlitchRate property.
            ## @return a void
            ## 
            def speaker_glitch_rate=(value)
                @speaker_glitch_rate = value
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoCaptureNotFunctioningEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_capture_not_functioning_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoCaptureNotFunctioningEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoCpuInsufficentEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_cpu_insufficent_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoCpuInsufficentEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoDeviceClippingEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_device_clipping_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoDeviceClippingEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoDeviceGlitchEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_device_glitch_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoDeviceGlitchEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoInitialSignalLevelRootMeanSquare
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_initial_signal_level_root_mean_square
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoInitialSignalLevelRootMeanSquare.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoLowSpeechLevelEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_low_speech_level_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoLowSpeechLevelEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoLowSpeechToNoiseEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_low_speech_to_noise_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoLowSpeechToNoiseEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoMicGlitchRate
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_mic_glitch_rate
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoMicGlitchRate.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoRenderMuteEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_render_mute_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoRenderMuteEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoRenderNotFunctioningEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_render_not_functioning_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoRenderNotFunctioningEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoRenderZeroVolumeEventRatio
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_render_zero_volume_event_ratio
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoRenderZeroVolumeEventRatio.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class DeviceInfoSpeakerGlitchRate
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_info_speaker_glitch_rate
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceInfoSpeakerGlitchRate.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
