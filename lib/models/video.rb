require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Video
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Number of audio bits per sample.
            @audio_bits_per_sample
            ## 
            # Number of audio channels.
            @audio_channels
            ## 
            # Name of the audio format (AAC, MP3, etc.).
            @audio_format
            ## 
            # Number of audio samples per second.
            @audio_samples_per_second
            ## 
            # Bit rate of the video in bits per second.
            @bitrate
            ## 
            # Duration of the file in milliseconds.
            @duration
            ## 
            # 'Four character code' name of the video format.
            @four_c_c
            ## 
            # Frame rate of the video.
            @frame_rate
            ## 
            # Height of the video, in pixels.
            @height
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Width of the video, in pixels.
            @width
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
            ## Gets the audioBitsPerSample property value. Number of audio bits per sample.
            ## @return a integer
            ## 
            def audio_bits_per_sample
                return @audio_bits_per_sample
            end
            ## 
            ## Sets the audioBitsPerSample property value. Number of audio bits per sample.
            ## @param value Value to set for the audio_bits_per_sample property.
            ## @return a void
            ## 
            def audio_bits_per_sample=(value)
                @audio_bits_per_sample = value
            end
            ## 
            ## Gets the audioChannels property value. Number of audio channels.
            ## @return a integer
            ## 
            def audio_channels
                return @audio_channels
            end
            ## 
            ## Sets the audioChannels property value. Number of audio channels.
            ## @param value Value to set for the audio_channels property.
            ## @return a void
            ## 
            def audio_channels=(value)
                @audio_channels = value
            end
            ## 
            ## Gets the audioFormat property value. Name of the audio format (AAC, MP3, etc.).
            ## @return a string
            ## 
            def audio_format
                return @audio_format
            end
            ## 
            ## Sets the audioFormat property value. Name of the audio format (AAC, MP3, etc.).
            ## @param value Value to set for the audio_format property.
            ## @return a void
            ## 
            def audio_format=(value)
                @audio_format = value
            end
            ## 
            ## Gets the audioSamplesPerSecond property value. Number of audio samples per second.
            ## @return a integer
            ## 
            def audio_samples_per_second
                return @audio_samples_per_second
            end
            ## 
            ## Sets the audioSamplesPerSecond property value. Number of audio samples per second.
            ## @param value Value to set for the audio_samples_per_second property.
            ## @return a void
            ## 
            def audio_samples_per_second=(value)
                @audio_samples_per_second = value
            end
            ## 
            ## Gets the bitrate property value. Bit rate of the video in bits per second.
            ## @return a integer
            ## 
            def bitrate
                return @bitrate
            end
            ## 
            ## Sets the bitrate property value. Bit rate of the video in bits per second.
            ## @param value Value to set for the bitrate property.
            ## @return a void
            ## 
            def bitrate=(value)
                @bitrate = value
            end
            ## 
            ## Instantiates a new video and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a video
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Video.new
            end
            ## 
            ## Gets the duration property value. Duration of the file in milliseconds.
            ## @return a int64
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. Duration of the file in milliseconds.
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
            end
            ## 
            ## Gets the fourCC property value. 'Four character code' name of the video format.
            ## @return a string
            ## 
            def four_c_c
                return @four_c_c
            end
            ## 
            ## Sets the fourCC property value. 'Four character code' name of the video format.
            ## @param value Value to set for the four_c_c property.
            ## @return a void
            ## 
            def four_c_c=(value)
                @four_c_c = value
            end
            ## 
            ## Gets the frameRate property value. Frame rate of the video.
            ## @return a double
            ## 
            def frame_rate
                return @frame_rate
            end
            ## 
            ## Sets the frameRate property value. Frame rate of the video.
            ## @param value Value to set for the frame_rate property.
            ## @return a void
            ## 
            def frame_rate=(value)
                @frame_rate = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "audioBitsPerSample" => lambda {|n| @audio_bits_per_sample = n.get_number_value() },
                    "audioChannels" => lambda {|n| @audio_channels = n.get_number_value() },
                    "audioFormat" => lambda {|n| @audio_format = n.get_string_value() },
                    "audioSamplesPerSecond" => lambda {|n| @audio_samples_per_second = n.get_number_value() },
                    "bitrate" => lambda {|n| @bitrate = n.get_number_value() },
                    "duration" => lambda {|n| @duration = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "fourCC" => lambda {|n| @four_c_c = n.get_string_value() },
                    "frameRate" => lambda {|n| @frame_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "height" => lambda {|n| @height = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "width" => lambda {|n| @width = n.get_number_value() },
                }
            end
            ## 
            ## Gets the height property value. Height of the video, in pixels.
            ## @return a integer
            ## 
            def height
                return @height
            end
            ## 
            ## Sets the height property value. Height of the video, in pixels.
            ## @param value Value to set for the height property.
            ## @return a void
            ## 
            def height=(value)
                @height = value
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
                writer.write_number_value("audioBitsPerSample", @audio_bits_per_sample)
                writer.write_number_value("audioChannels", @audio_channels)
                writer.write_string_value("audioFormat", @audio_format)
                writer.write_number_value("audioSamplesPerSecond", @audio_samples_per_second)
                writer.write_number_value("bitrate", @bitrate)
                writer.write_object_value("duration", @duration)
                writer.write_string_value("fourCC", @four_c_c)
                writer.write_object_value("frameRate", @frame_rate)
                writer.write_number_value("height", @height)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("width", @width)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the width property value. Width of the video, in pixels.
            ## @return a integer
            ## 
            def width
                return @width
            end
            ## 
            ## Sets the width property value. Width of the video, in pixels.
            ## @param value Value to set for the width property.
            ## @return a void
            ## 
            def width=(value)
                @width = value
            end
        end
    end
end
