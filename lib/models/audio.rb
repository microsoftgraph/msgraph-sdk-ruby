require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Audio
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The title of the album for this audio file.
            @album
            ## 
            # The artist named on the album for the audio file.
            @album_artist
            ## 
            # The performing artist for the audio file.
            @artist
            ## 
            # Bitrate expressed in kbps.
            @bitrate
            ## 
            # The name of the composer of the audio file.
            @composers
            ## 
            # Copyright information for the audio file.
            @copyright
            ## 
            # The number of the disc this audio file came from.
            @disc
            ## 
            # The total number of discs in this album.
            @disc_count
            ## 
            # Duration of the audio file, expressed in milliseconds
            @duration
            ## 
            # The genre of this audio file.
            @genre
            ## 
            # Indicates if the file is protected with digital rights management.
            @has_drm
            ## 
            # Indicates if the file is encoded with a variable bitrate.
            @is_variable_bitrate
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The title of the audio file.
            @title
            ## 
            # The number of the track on the original disc for this audio file.
            @track
            ## 
            # The total number of tracks on the original disc for this audio file.
            @track_count
            ## 
            # The year the audio file was recorded.
            @year
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
            ## Gets the album property value. The title of the album for this audio file.
            ## @return a string
            ## 
            def album
                return @album
            end
            ## 
            ## Sets the album property value. The title of the album for this audio file.
            ## @param value Value to set for the album property.
            ## @return a void
            ## 
            def album=(value)
                @album = value
            end
            ## 
            ## Gets the albumArtist property value. The artist named on the album for the audio file.
            ## @return a string
            ## 
            def album_artist
                return @album_artist
            end
            ## 
            ## Sets the albumArtist property value. The artist named on the album for the audio file.
            ## @param value Value to set for the album_artist property.
            ## @return a void
            ## 
            def album_artist=(value)
                @album_artist = value
            end
            ## 
            ## Gets the artist property value. The performing artist for the audio file.
            ## @return a string
            ## 
            def artist
                return @artist
            end
            ## 
            ## Sets the artist property value. The performing artist for the audio file.
            ## @param value Value to set for the artist property.
            ## @return a void
            ## 
            def artist=(value)
                @artist = value
            end
            ## 
            ## Gets the bitrate property value. Bitrate expressed in kbps.
            ## @return a int64
            ## 
            def bitrate
                return @bitrate
            end
            ## 
            ## Sets the bitrate property value. Bitrate expressed in kbps.
            ## @param value Value to set for the bitrate property.
            ## @return a void
            ## 
            def bitrate=(value)
                @bitrate = value
            end
            ## 
            ## Gets the composers property value. The name of the composer of the audio file.
            ## @return a string
            ## 
            def composers
                return @composers
            end
            ## 
            ## Sets the composers property value. The name of the composer of the audio file.
            ## @param value Value to set for the composers property.
            ## @return a void
            ## 
            def composers=(value)
                @composers = value
            end
            ## 
            ## Instantiates a new audio and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the copyright property value. Copyright information for the audio file.
            ## @return a string
            ## 
            def copyright
                return @copyright
            end
            ## 
            ## Sets the copyright property value. Copyright information for the audio file.
            ## @param value Value to set for the copyright property.
            ## @return a void
            ## 
            def copyright=(value)
                @copyright = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a audio
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Audio.new
            end
            ## 
            ## Gets the disc property value. The number of the disc this audio file came from.
            ## @return a integer
            ## 
            def disc
                return @disc
            end
            ## 
            ## Sets the disc property value. The number of the disc this audio file came from.
            ## @param value Value to set for the disc property.
            ## @return a void
            ## 
            def disc=(value)
                @disc = value
            end
            ## 
            ## Gets the discCount property value. The total number of discs in this album.
            ## @return a integer
            ## 
            def disc_count
                return @disc_count
            end
            ## 
            ## Sets the discCount property value. The total number of discs in this album.
            ## @param value Value to set for the disc_count property.
            ## @return a void
            ## 
            def disc_count=(value)
                @disc_count = value
            end
            ## 
            ## Gets the duration property value. Duration of the audio file, expressed in milliseconds
            ## @return a int64
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. Duration of the audio file, expressed in milliseconds
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
            end
            ## 
            ## Gets the genre property value. The genre of this audio file.
            ## @return a string
            ## 
            def genre
                return @genre
            end
            ## 
            ## Sets the genre property value. The genre of this audio file.
            ## @param value Value to set for the genre property.
            ## @return a void
            ## 
            def genre=(value)
                @genre = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "album" => lambda {|n| @album = n.get_string_value() },
                    "albumArtist" => lambda {|n| @album_artist = n.get_string_value() },
                    "artist" => lambda {|n| @artist = n.get_string_value() },
                    "bitrate" => lambda {|n| @bitrate = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "composers" => lambda {|n| @composers = n.get_string_value() },
                    "copyright" => lambda {|n| @copyright = n.get_string_value() },
                    "disc" => lambda {|n| @disc = n.get_number_value() },
                    "discCount" => lambda {|n| @disc_count = n.get_number_value() },
                    "duration" => lambda {|n| @duration = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "genre" => lambda {|n| @genre = n.get_string_value() },
                    "hasDrm" => lambda {|n| @has_drm = n.get_boolean_value() },
                    "isVariableBitrate" => lambda {|n| @is_variable_bitrate = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "track" => lambda {|n| @track = n.get_number_value() },
                    "trackCount" => lambda {|n| @track_count = n.get_number_value() },
                    "year" => lambda {|n| @year = n.get_number_value() },
                }
            end
            ## 
            ## Gets the hasDrm property value. Indicates if the file is protected with digital rights management.
            ## @return a boolean
            ## 
            def has_drm
                return @has_drm
            end
            ## 
            ## Sets the hasDrm property value. Indicates if the file is protected with digital rights management.
            ## @param value Value to set for the has_drm property.
            ## @return a void
            ## 
            def has_drm=(value)
                @has_drm = value
            end
            ## 
            ## Gets the isVariableBitrate property value. Indicates if the file is encoded with a variable bitrate.
            ## @return a boolean
            ## 
            def is_variable_bitrate
                return @is_variable_bitrate
            end
            ## 
            ## Sets the isVariableBitrate property value. Indicates if the file is encoded with a variable bitrate.
            ## @param value Value to set for the is_variable_bitrate property.
            ## @return a void
            ## 
            def is_variable_bitrate=(value)
                @is_variable_bitrate = value
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
                writer.write_string_value("album", @album)
                writer.write_string_value("albumArtist", @album_artist)
                writer.write_string_value("artist", @artist)
                writer.write_object_value("bitrate", @bitrate)
                writer.write_string_value("composers", @composers)
                writer.write_string_value("copyright", @copyright)
                writer.write_number_value("disc", @disc)
                writer.write_number_value("discCount", @disc_count)
                writer.write_object_value("duration", @duration)
                writer.write_string_value("genre", @genre)
                writer.write_boolean_value("hasDrm", @has_drm)
                writer.write_boolean_value("isVariableBitrate", @is_variable_bitrate)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("title", @title)
                writer.write_number_value("track", @track)
                writer.write_number_value("trackCount", @track_count)
                writer.write_number_value("year", @year)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the title property value. The title of the audio file.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of the audio file.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the track property value. The number of the track on the original disc for this audio file.
            ## @return a integer
            ## 
            def track
                return @track
            end
            ## 
            ## Sets the track property value. The number of the track on the original disc for this audio file.
            ## @param value Value to set for the track property.
            ## @return a void
            ## 
            def track=(value)
                @track = value
            end
            ## 
            ## Gets the trackCount property value. The total number of tracks on the original disc for this audio file.
            ## @return a integer
            ## 
            def track_count
                return @track_count
            end
            ## 
            ## Sets the trackCount property value. The total number of tracks on the original disc for this audio file.
            ## @param value Value to set for the track_count property.
            ## @return a void
            ## 
            def track_count=(value)
                @track_count = value
            end
            ## 
            ## Gets the year property value. The year the audio file was recorded.
            ## @return a integer
            ## 
            def year
                return @year
            end
            ## 
            ## Sets the year property value. The year the audio file was recorded.
            ## @param value Value to set for the year property.
            ## @return a void
            ## 
            def year=(value)
                @year = value
            end
        end
    end
end
