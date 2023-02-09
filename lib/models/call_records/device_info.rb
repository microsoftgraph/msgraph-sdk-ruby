require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class DeviceInfo
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
                ## Gets the captureDeviceDriver property value. Name of the capture device driver used by the media endpoint.
                ## @return a string
                ## 
                def capture_device_driver
                    return @capture_device_driver
                end
                ## 
                ## Sets the captureDeviceDriver property value. Name of the capture device driver used by the media endpoint.
                ## @param value Value to set for the capture_device_driver property.
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
                ## @param value Value to set for the capture_device_name property.
                ## @return a void
                ## 
                def capture_device_name=(value)
                    @capture_device_name = value
                end
                ## 
                ## Gets the captureNotFunctioningEventRatio property value. Fraction of the call that the media endpoint detected the capture device was not working properly.
                ## @return a float
                ## 
                def capture_not_functioning_event_ratio
                    return @capture_not_functioning_event_ratio
                end
                ## 
                ## Sets the captureNotFunctioningEventRatio property value. Fraction of the call that the media endpoint detected the capture device was not working properly.
                ## @param value Value to set for the capture_not_functioning_event_ratio property.
                ## @return a void
                ## 
                def capture_not_functioning_event_ratio=(value)
                    @capture_not_functioning_event_ratio = value
                end
                ## 
                ## Instantiates a new deviceInfo and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the cpuInsufficentEventRatio property value. Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
                ## @return a float
                ## 
                def cpu_insufficent_event_ratio
                    return @cpu_insufficent_event_ratio
                end
                ## 
                ## Sets the cpuInsufficentEventRatio property value. Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.
                ## @param value Value to set for the cpu_insufficent_event_ratio property.
                ## @return a void
                ## 
                def cpu_insufficent_event_ratio=(value)
                    @cpu_insufficent_event_ratio = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a device_info
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DeviceInfo.new
                end
                ## 
                ## Gets the deviceClippingEventRatio property value. Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
                ## @return a float
                ## 
                def device_clipping_event_ratio
                    return @device_clipping_event_ratio
                end
                ## 
                ## Sets the deviceClippingEventRatio property value. Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.
                ## @param value Value to set for the device_clipping_event_ratio property.
                ## @return a void
                ## 
                def device_clipping_event_ratio=(value)
                    @device_clipping_event_ratio = value
                end
                ## 
                ## Gets the deviceGlitchEventRatio property value. Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
                ## @return a float
                ## 
                def device_glitch_event_ratio
                    return @device_glitch_event_ratio
                end
                ## 
                ## Sets the deviceGlitchEventRatio property value. Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.
                ## @param value Value to set for the device_glitch_event_ratio property.
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
                        "captureNotFunctioningEventRatio" => lambda {|n| @capture_not_functioning_event_ratio = n.get_float_value() },
                        "cpuInsufficentEventRatio" => lambda {|n| @cpu_insufficent_event_ratio = n.get_float_value() },
                        "deviceClippingEventRatio" => lambda {|n| @device_clipping_event_ratio = n.get_float_value() },
                        "deviceGlitchEventRatio" => lambda {|n| @device_glitch_event_ratio = n.get_float_value() },
                        "howlingEventCount" => lambda {|n| @howling_event_count = n.get_number_value() },
                        "initialSignalLevelRootMeanSquare" => lambda {|n| @initial_signal_level_root_mean_square = n.get_float_value() },
                        "lowSpeechLevelEventRatio" => lambda {|n| @low_speech_level_event_ratio = n.get_float_value() },
                        "lowSpeechToNoiseEventRatio" => lambda {|n| @low_speech_to_noise_event_ratio = n.get_float_value() },
                        "micGlitchRate" => lambda {|n| @mic_glitch_rate = n.get_float_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "receivedNoiseLevel" => lambda {|n| @received_noise_level = n.get_number_value() },
                        "receivedSignalLevel" => lambda {|n| @received_signal_level = n.get_number_value() },
                        "renderDeviceDriver" => lambda {|n| @render_device_driver = n.get_string_value() },
                        "renderDeviceName" => lambda {|n| @render_device_name = n.get_string_value() },
                        "renderMuteEventRatio" => lambda {|n| @render_mute_event_ratio = n.get_float_value() },
                        "renderNotFunctioningEventRatio" => lambda {|n| @render_not_functioning_event_ratio = n.get_float_value() },
                        "renderZeroVolumeEventRatio" => lambda {|n| @render_zero_volume_event_ratio = n.get_float_value() },
                        "sentNoiseLevel" => lambda {|n| @sent_noise_level = n.get_number_value() },
                        "sentSignalLevel" => lambda {|n| @sent_signal_level = n.get_number_value() },
                        "speakerGlitchRate" => lambda {|n| @speaker_glitch_rate = n.get_float_value() },
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
                ## @param value Value to set for the howling_event_count property.
                ## @return a void
                ## 
                def howling_event_count=(value)
                    @howling_event_count = value
                end
                ## 
                ## Gets the initialSignalLevelRootMeanSquare property value. The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
                ## @return a float
                ## 
                def initial_signal_level_root_mean_square
                    return @initial_signal_level_root_mean_square
                end
                ## 
                ## Sets the initialSignalLevelRootMeanSquare property value. The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.
                ## @param value Value to set for the initial_signal_level_root_mean_square property.
                ## @return a void
                ## 
                def initial_signal_level_root_mean_square=(value)
                    @initial_signal_level_root_mean_square = value
                end
                ## 
                ## Gets the lowSpeechLevelEventRatio property value. Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
                ## @return a float
                ## 
                def low_speech_level_event_ratio
                    return @low_speech_level_event_ratio
                end
                ## 
                ## Sets the lowSpeechLevelEventRatio property value. Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.
                ## @param value Value to set for the low_speech_level_event_ratio property.
                ## @return a void
                ## 
                def low_speech_level_event_ratio=(value)
                    @low_speech_level_event_ratio = value
                end
                ## 
                ## Gets the lowSpeechToNoiseEventRatio property value. Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
                ## @return a float
                ## 
                def low_speech_to_noise_event_ratio
                    return @low_speech_to_noise_event_ratio
                end
                ## 
                ## Sets the lowSpeechToNoiseEventRatio property value. Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.
                ## @param value Value to set for the low_speech_to_noise_event_ratio property.
                ## @return a void
                ## 
                def low_speech_to_noise_event_ratio=(value)
                    @low_speech_to_noise_event_ratio = value
                end
                ## 
                ## Gets the micGlitchRate property value. Glitches per 5 minute interval for the media endpoint's microphone.
                ## @return a float
                ## 
                def mic_glitch_rate
                    return @mic_glitch_rate
                end
                ## 
                ## Sets the micGlitchRate property value. Glitches per 5 minute interval for the media endpoint's microphone.
                ## @param value Value to set for the mic_glitch_rate property.
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
                ## @param value Value to set for the odata_type property.
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
                ## @param value Value to set for the received_noise_level property.
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
                ## @param value Value to set for the received_signal_level property.
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
                ## @param value Value to set for the render_device_driver property.
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
                ## @param value Value to set for the render_device_name property.
                ## @return a void
                ## 
                def render_device_name=(value)
                    @render_device_name = value
                end
                ## 
                ## Gets the renderMuteEventRatio property value. Fraction of the call that media endpoint detected device render is muted.
                ## @return a float
                ## 
                def render_mute_event_ratio
                    return @render_mute_event_ratio
                end
                ## 
                ## Sets the renderMuteEventRatio property value. Fraction of the call that media endpoint detected device render is muted.
                ## @param value Value to set for the render_mute_event_ratio property.
                ## @return a void
                ## 
                def render_mute_event_ratio=(value)
                    @render_mute_event_ratio = value
                end
                ## 
                ## Gets the renderNotFunctioningEventRatio property value. Fraction of the call that the media endpoint detected the render device was not working properly.
                ## @return a float
                ## 
                def render_not_functioning_event_ratio
                    return @render_not_functioning_event_ratio
                end
                ## 
                ## Sets the renderNotFunctioningEventRatio property value. Fraction of the call that the media endpoint detected the render device was not working properly.
                ## @param value Value to set for the render_not_functioning_event_ratio property.
                ## @return a void
                ## 
                def render_not_functioning_event_ratio=(value)
                    @render_not_functioning_event_ratio = value
                end
                ## 
                ## Gets the renderZeroVolumeEventRatio property value. Fraction of the call that media endpoint detected device render volume is set to 0.
                ## @return a float
                ## 
                def render_zero_volume_event_ratio
                    return @render_zero_volume_event_ratio
                end
                ## 
                ## Sets the renderZeroVolumeEventRatio property value. Fraction of the call that media endpoint detected device render volume is set to 0.
                ## @param value Value to set for the render_zero_volume_event_ratio property.
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
                ## @param value Value to set for the sent_noise_level property.
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
                ## @param value Value to set for the sent_signal_level property.
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
                    writer.write_float_value("captureNotFunctioningEventRatio", @capture_not_functioning_event_ratio)
                    writer.write_float_value("cpuInsufficentEventRatio", @cpu_insufficent_event_ratio)
                    writer.write_float_value("deviceClippingEventRatio", @device_clipping_event_ratio)
                    writer.write_float_value("deviceGlitchEventRatio", @device_glitch_event_ratio)
                    writer.write_number_value("howlingEventCount", @howling_event_count)
                    writer.write_float_value("initialSignalLevelRootMeanSquare", @initial_signal_level_root_mean_square)
                    writer.write_float_value("lowSpeechLevelEventRatio", @low_speech_level_event_ratio)
                    writer.write_float_value("lowSpeechToNoiseEventRatio", @low_speech_to_noise_event_ratio)
                    writer.write_float_value("micGlitchRate", @mic_glitch_rate)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("receivedNoiseLevel", @received_noise_level)
                    writer.write_number_value("receivedSignalLevel", @received_signal_level)
                    writer.write_string_value("renderDeviceDriver", @render_device_driver)
                    writer.write_string_value("renderDeviceName", @render_device_name)
                    writer.write_float_value("renderMuteEventRatio", @render_mute_event_ratio)
                    writer.write_float_value("renderNotFunctioningEventRatio", @render_not_functioning_event_ratio)
                    writer.write_float_value("renderZeroVolumeEventRatio", @render_zero_volume_event_ratio)
                    writer.write_number_value("sentNoiseLevel", @sent_noise_level)
                    writer.write_number_value("sentSignalLevel", @sent_signal_level)
                    writer.write_float_value("speakerGlitchRate", @speaker_glitch_rate)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the speakerGlitchRate property value. Glitches per 5 minute internal for the media endpoint's loudspeaker.
                ## @return a float
                ## 
                def speaker_glitch_rate
                    return @speaker_glitch_rate
                end
                ## 
                ## Sets the speakerGlitchRate property value. Glitches per 5 minute internal for the media endpoint's loudspeaker.
                ## @param value Value to set for the speaker_glitch_rate property.
                ## @return a void
                ## 
                def speaker_glitch_rate=(value)
                    @speaker_glitch_rate = value
                end
            end
        end
    end
end
