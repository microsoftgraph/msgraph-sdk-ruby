require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MediaStream
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The direction property
            @direction
            ## 
            # The media stream label.
            @label
            ## 
            # The mediaType property
            @media_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If the media is muted by the server.
            @server_muted
            ## 
            # The source ID.
            @source_id
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
            ## Instantiates a new mediaStream and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a media_stream
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MediaStream.new
            end
            ## 
            ## Gets the direction property value. The direction property
            ## @return a media_direction
            ## 
            def direction
                return @direction
            end
            ## 
            ## Sets the direction property value. The direction property
            ## @param value Value to set for the direction property.
            ## @return a void
            ## 
            def direction=(value)
                @direction = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "direction" => lambda {|n| @direction = n.get_enum_value(MicrosoftGraph::Models::MediaDirection) },
                    "label" => lambda {|n| @label = n.get_string_value() },
                    "mediaType" => lambda {|n| @media_type = n.get_enum_value(MicrosoftGraph::Models::Modality) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "serverMuted" => lambda {|n| @server_muted = n.get_boolean_value() },
                    "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the label property value. The media stream label.
            ## @return a string
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. The media stream label.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
            end
            ## 
            ## Gets the mediaType property value. The mediaType property
            ## @return a modality
            ## 
            def media_type
                return @media_type
            end
            ## 
            ## Sets the mediaType property value. The mediaType property
            ## @param value Value to set for the media_type property.
            ## @return a void
            ## 
            def media_type=(value)
                @media_type = value
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
                writer.write_enum_value("direction", @direction)
                writer.write_string_value("label", @label)
                writer.write_enum_value("mediaType", @media_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("serverMuted", @server_muted)
                writer.write_string_value("sourceId", @source_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the serverMuted property value. If the media is muted by the server.
            ## @return a boolean
            ## 
            def server_muted
                return @server_muted
            end
            ## 
            ## Sets the serverMuted property value. If the media is muted by the server.
            ## @param value Value to set for the server_muted property.
            ## @return a void
            ## 
            def server_muted=(value)
                @server_muted = value
            end
            ## 
            ## Gets the sourceId property value. The source ID.
            ## @return a string
            ## 
            def source_id
                return @source_id
            end
            ## 
            ## Sets the sourceId property value. The source ID.
            ## @param value Value to set for the source_id property.
            ## @return a void
            ## 
            def source_id=(value)
                @source_id = value
            end
        end
    end
end
