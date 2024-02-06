require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeleconferenceDeviceMediaQuality
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The average inbound stream network jitter.
            @average_inbound_jitter
            ## 
            # The average inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            @average_inbound_packet_loss_rate_in_percentage
            ## 
            # The average inbound stream network round trip delay.
            @average_inbound_round_trip_delay
            ## 
            # The average outbound stream network jitter.
            @average_outbound_jitter
            ## 
            # The average outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            @average_outbound_packet_loss_rate_in_percentage
            ## 
            # The average outbound stream network round trip delay.
            @average_outbound_round_trip_delay
            ## 
            # The channel index of media. Indexing begins with 1.  If a media session contains 3 video modalities, channel indexes will be 1, 2, and 3.
            @channel_index
            ## 
            # The total number of the inbound packets.
            @inbound_packets
            ## 
            # the local IP address for the media session.
            @local_i_p_address
            ## 
            # The local media port.
            @local_port
            ## 
            # The maximum inbound stream network jitter.
            @maximum_inbound_jitter
            ## 
            # The maximum inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            @maximum_inbound_packet_loss_rate_in_percentage
            ## 
            # The maximum inbound stream network round trip delay.
            @maximum_inbound_round_trip_delay
            ## 
            # The maximum outbound stream network jitter.
            @maximum_outbound_jitter
            ## 
            # The maximum outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            @maximum_outbound_packet_loss_rate_in_percentage
            ## 
            # The maximum outbound stream network round trip delay.
            @maximum_outbound_round_trip_delay
            ## 
            # The total modality duration. If the media enabled and disabled multiple times, MediaDuration will the summation of all of the durations.
            @media_duration
            ## 
            # The network link speed in bytes
            @network_link_speed_in_bytes
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The total number of the outbound packets.
            @outbound_packets
            ## 
            # The remote IP address for the media session.
            @remote_i_p_address
            ## 
            # The remote media port.
            @remote_port
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
            ## Gets the averageInboundJitter property value. The average inbound stream network jitter.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def average_inbound_jitter
                return @average_inbound_jitter
            end
            ## 
            ## Sets the averageInboundJitter property value. The average inbound stream network jitter.
            ## @param value Value to set for the averageInboundJitter property.
            ## @return a void
            ## 
            def average_inbound_jitter=(value)
                @average_inbound_jitter = value
            end
            ## 
            ## Gets the averageInboundPacketLossRateInPercentage property value. The average inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            ## @return a double
            ## 
            def average_inbound_packet_loss_rate_in_percentage
                return @average_inbound_packet_loss_rate_in_percentage
            end
            ## 
            ## Sets the averageInboundPacketLossRateInPercentage property value. The average inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            ## @param value Value to set for the averageInboundPacketLossRateInPercentage property.
            ## @return a void
            ## 
            def average_inbound_packet_loss_rate_in_percentage=(value)
                @average_inbound_packet_loss_rate_in_percentage = value
            end
            ## 
            ## Gets the averageInboundRoundTripDelay property value. The average inbound stream network round trip delay.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def average_inbound_round_trip_delay
                return @average_inbound_round_trip_delay
            end
            ## 
            ## Sets the averageInboundRoundTripDelay property value. The average inbound stream network round trip delay.
            ## @param value Value to set for the averageInboundRoundTripDelay property.
            ## @return a void
            ## 
            def average_inbound_round_trip_delay=(value)
                @average_inbound_round_trip_delay = value
            end
            ## 
            ## Gets the averageOutboundJitter property value. The average outbound stream network jitter.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def average_outbound_jitter
                return @average_outbound_jitter
            end
            ## 
            ## Sets the averageOutboundJitter property value. The average outbound stream network jitter.
            ## @param value Value to set for the averageOutboundJitter property.
            ## @return a void
            ## 
            def average_outbound_jitter=(value)
                @average_outbound_jitter = value
            end
            ## 
            ## Gets the averageOutboundPacketLossRateInPercentage property value. The average outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            ## @return a double
            ## 
            def average_outbound_packet_loss_rate_in_percentage
                return @average_outbound_packet_loss_rate_in_percentage
            end
            ## 
            ## Sets the averageOutboundPacketLossRateInPercentage property value. The average outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            ## @param value Value to set for the averageOutboundPacketLossRateInPercentage property.
            ## @return a void
            ## 
            def average_outbound_packet_loss_rate_in_percentage=(value)
                @average_outbound_packet_loss_rate_in_percentage = value
            end
            ## 
            ## Gets the averageOutboundRoundTripDelay property value. The average outbound stream network round trip delay.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def average_outbound_round_trip_delay
                return @average_outbound_round_trip_delay
            end
            ## 
            ## Sets the averageOutboundRoundTripDelay property value. The average outbound stream network round trip delay.
            ## @param value Value to set for the averageOutboundRoundTripDelay property.
            ## @return a void
            ## 
            def average_outbound_round_trip_delay=(value)
                @average_outbound_round_trip_delay = value
            end
            ## 
            ## Gets the channelIndex property value. The channel index of media. Indexing begins with 1.  If a media session contains 3 video modalities, channel indexes will be 1, 2, and 3.
            ## @return a integer
            ## 
            def channel_index
                return @channel_index
            end
            ## 
            ## Sets the channelIndex property value. The channel index of media. Indexing begins with 1.  If a media session contains 3 video modalities, channel indexes will be 1, 2, and 3.
            ## @param value Value to set for the channelIndex property.
            ## @return a void
            ## 
            def channel_index=(value)
                @channel_index = value
            end
            ## 
            ## Instantiates a new teleconferenceDeviceMediaQuality and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teleconference_device_media_quality
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.teleconferenceDeviceAudioQuality"
                            return TeleconferenceDeviceAudioQuality.new
                        when "#microsoft.graph.teleconferenceDeviceScreenSharingQuality"
                            return TeleconferenceDeviceScreenSharingQuality.new
                        when "#microsoft.graph.teleconferenceDeviceVideoQuality"
                            return TeleconferenceDeviceVideoQuality.new
                    end
                end
                return TeleconferenceDeviceMediaQuality.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "averageInboundJitter" => lambda {|n| @average_inbound_jitter = n.get_duration_value() },
                    "averageInboundPacketLossRateInPercentage" => lambda {|n| @average_inbound_packet_loss_rate_in_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "averageInboundRoundTripDelay" => lambda {|n| @average_inbound_round_trip_delay = n.get_duration_value() },
                    "averageOutboundJitter" => lambda {|n| @average_outbound_jitter = n.get_duration_value() },
                    "averageOutboundPacketLossRateInPercentage" => lambda {|n| @average_outbound_packet_loss_rate_in_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "averageOutboundRoundTripDelay" => lambda {|n| @average_outbound_round_trip_delay = n.get_duration_value() },
                    "channelIndex" => lambda {|n| @channel_index = n.get_number_value() },
                    "inboundPackets" => lambda {|n| @inbound_packets = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "localIPAddress" => lambda {|n| @local_i_p_address = n.get_string_value() },
                    "localPort" => lambda {|n| @local_port = n.get_number_value() },
                    "maximumInboundJitter" => lambda {|n| @maximum_inbound_jitter = n.get_duration_value() },
                    "maximumInboundPacketLossRateInPercentage" => lambda {|n| @maximum_inbound_packet_loss_rate_in_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "maximumInboundRoundTripDelay" => lambda {|n| @maximum_inbound_round_trip_delay = n.get_duration_value() },
                    "maximumOutboundJitter" => lambda {|n| @maximum_outbound_jitter = n.get_duration_value() },
                    "maximumOutboundPacketLossRateInPercentage" => lambda {|n| @maximum_outbound_packet_loss_rate_in_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "maximumOutboundRoundTripDelay" => lambda {|n| @maximum_outbound_round_trip_delay = n.get_duration_value() },
                    "mediaDuration" => lambda {|n| @media_duration = n.get_duration_value() },
                    "networkLinkSpeedInBytes" => lambda {|n| @network_link_speed_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "outboundPackets" => lambda {|n| @outbound_packets = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "remoteIPAddress" => lambda {|n| @remote_i_p_address = n.get_string_value() },
                    "remotePort" => lambda {|n| @remote_port = n.get_number_value() },
                }
            end
            ## 
            ## Gets the inboundPackets property value. The total number of the inbound packets.
            ## @return a int64
            ## 
            def inbound_packets
                return @inbound_packets
            end
            ## 
            ## Sets the inboundPackets property value. The total number of the inbound packets.
            ## @param value Value to set for the inboundPackets property.
            ## @return a void
            ## 
            def inbound_packets=(value)
                @inbound_packets = value
            end
            ## 
            ## Gets the localIPAddress property value. the local IP address for the media session.
            ## @return a string
            ## 
            def local_i_p_address
                return @local_i_p_address
            end
            ## 
            ## Sets the localIPAddress property value. the local IP address for the media session.
            ## @param value Value to set for the localIPAddress property.
            ## @return a void
            ## 
            def local_i_p_address=(value)
                @local_i_p_address = value
            end
            ## 
            ## Gets the localPort property value. The local media port.
            ## @return a integer
            ## 
            def local_port
                return @local_port
            end
            ## 
            ## Sets the localPort property value. The local media port.
            ## @param value Value to set for the localPort property.
            ## @return a void
            ## 
            def local_port=(value)
                @local_port = value
            end
            ## 
            ## Gets the maximumInboundJitter property value. The maximum inbound stream network jitter.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def maximum_inbound_jitter
                return @maximum_inbound_jitter
            end
            ## 
            ## Sets the maximumInboundJitter property value. The maximum inbound stream network jitter.
            ## @param value Value to set for the maximumInboundJitter property.
            ## @return a void
            ## 
            def maximum_inbound_jitter=(value)
                @maximum_inbound_jitter = value
            end
            ## 
            ## Gets the maximumInboundPacketLossRateInPercentage property value. The maximum inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            ## @return a double
            ## 
            def maximum_inbound_packet_loss_rate_in_percentage
                return @maximum_inbound_packet_loss_rate_in_percentage
            end
            ## 
            ## Sets the maximumInboundPacketLossRateInPercentage property value. The maximum inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            ## @param value Value to set for the maximumInboundPacketLossRateInPercentage property.
            ## @return a void
            ## 
            def maximum_inbound_packet_loss_rate_in_percentage=(value)
                @maximum_inbound_packet_loss_rate_in_percentage = value
            end
            ## 
            ## Gets the maximumInboundRoundTripDelay property value. The maximum inbound stream network round trip delay.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def maximum_inbound_round_trip_delay
                return @maximum_inbound_round_trip_delay
            end
            ## 
            ## Sets the maximumInboundRoundTripDelay property value. The maximum inbound stream network round trip delay.
            ## @param value Value to set for the maximumInboundRoundTripDelay property.
            ## @return a void
            ## 
            def maximum_inbound_round_trip_delay=(value)
                @maximum_inbound_round_trip_delay = value
            end
            ## 
            ## Gets the maximumOutboundJitter property value. The maximum outbound stream network jitter.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def maximum_outbound_jitter
                return @maximum_outbound_jitter
            end
            ## 
            ## Sets the maximumOutboundJitter property value. The maximum outbound stream network jitter.
            ## @param value Value to set for the maximumOutboundJitter property.
            ## @return a void
            ## 
            def maximum_outbound_jitter=(value)
                @maximum_outbound_jitter = value
            end
            ## 
            ## Gets the maximumOutboundPacketLossRateInPercentage property value. The maximum outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            ## @return a double
            ## 
            def maximum_outbound_packet_loss_rate_in_percentage
                return @maximum_outbound_packet_loss_rate_in_percentage
            end
            ## 
            ## Sets the maximumOutboundPacketLossRateInPercentage property value. The maximum outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.
            ## @param value Value to set for the maximumOutboundPacketLossRateInPercentage property.
            ## @return a void
            ## 
            def maximum_outbound_packet_loss_rate_in_percentage=(value)
                @maximum_outbound_packet_loss_rate_in_percentage = value
            end
            ## 
            ## Gets the maximumOutboundRoundTripDelay property value. The maximum outbound stream network round trip delay.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def maximum_outbound_round_trip_delay
                return @maximum_outbound_round_trip_delay
            end
            ## 
            ## Sets the maximumOutboundRoundTripDelay property value. The maximum outbound stream network round trip delay.
            ## @param value Value to set for the maximumOutboundRoundTripDelay property.
            ## @return a void
            ## 
            def maximum_outbound_round_trip_delay=(value)
                @maximum_outbound_round_trip_delay = value
            end
            ## 
            ## Gets the mediaDuration property value. The total modality duration. If the media enabled and disabled multiple times, MediaDuration will the summation of all of the durations.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def media_duration
                return @media_duration
            end
            ## 
            ## Sets the mediaDuration property value. The total modality duration. If the media enabled and disabled multiple times, MediaDuration will the summation of all of the durations.
            ## @param value Value to set for the mediaDuration property.
            ## @return a void
            ## 
            def media_duration=(value)
                @media_duration = value
            end
            ## 
            ## Gets the networkLinkSpeedInBytes property value. The network link speed in bytes
            ## @return a int64
            ## 
            def network_link_speed_in_bytes
                return @network_link_speed_in_bytes
            end
            ## 
            ## Sets the networkLinkSpeedInBytes property value. The network link speed in bytes
            ## @param value Value to set for the networkLinkSpeedInBytes property.
            ## @return a void
            ## 
            def network_link_speed_in_bytes=(value)
                @network_link_speed_in_bytes = value
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
            ## Gets the outboundPackets property value. The total number of the outbound packets.
            ## @return a int64
            ## 
            def outbound_packets
                return @outbound_packets
            end
            ## 
            ## Sets the outboundPackets property value. The total number of the outbound packets.
            ## @param value Value to set for the outboundPackets property.
            ## @return a void
            ## 
            def outbound_packets=(value)
                @outbound_packets = value
            end
            ## 
            ## Gets the remoteIPAddress property value. The remote IP address for the media session.
            ## @return a string
            ## 
            def remote_i_p_address
                return @remote_i_p_address
            end
            ## 
            ## Sets the remoteIPAddress property value. The remote IP address for the media session.
            ## @param value Value to set for the remoteIPAddress property.
            ## @return a void
            ## 
            def remote_i_p_address=(value)
                @remote_i_p_address = value
            end
            ## 
            ## Gets the remotePort property value. The remote media port.
            ## @return a integer
            ## 
            def remote_port
                return @remote_port
            end
            ## 
            ## Sets the remotePort property value. The remote media port.
            ## @param value Value to set for the remotePort property.
            ## @return a void
            ## 
            def remote_port=(value)
                @remote_port = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_duration_value("averageInboundJitter", @average_inbound_jitter) unless @average_inbound_jitter.nil?
                writer.write_object_value("averageInboundPacketLossRateInPercentage", @average_inbound_packet_loss_rate_in_percentage) unless @average_inbound_packet_loss_rate_in_percentage.nil?
                writer.write_duration_value("averageInboundRoundTripDelay", @average_inbound_round_trip_delay) unless @average_inbound_round_trip_delay.nil?
                writer.write_duration_value("averageOutboundJitter", @average_outbound_jitter) unless @average_outbound_jitter.nil?
                writer.write_object_value("averageOutboundPacketLossRateInPercentage", @average_outbound_packet_loss_rate_in_percentage) unless @average_outbound_packet_loss_rate_in_percentage.nil?
                writer.write_duration_value("averageOutboundRoundTripDelay", @average_outbound_round_trip_delay) unless @average_outbound_round_trip_delay.nil?
                writer.write_number_value("channelIndex", @channel_index) unless @channel_index.nil?
                writer.write_object_value("inboundPackets", @inbound_packets) unless @inbound_packets.nil?
                writer.write_string_value("localIPAddress", @local_i_p_address) unless @local_i_p_address.nil?
                writer.write_number_value("localPort", @local_port) unless @local_port.nil?
                writer.write_duration_value("maximumInboundJitter", @maximum_inbound_jitter) unless @maximum_inbound_jitter.nil?
                writer.write_object_value("maximumInboundPacketLossRateInPercentage", @maximum_inbound_packet_loss_rate_in_percentage) unless @maximum_inbound_packet_loss_rate_in_percentage.nil?
                writer.write_duration_value("maximumInboundRoundTripDelay", @maximum_inbound_round_trip_delay) unless @maximum_inbound_round_trip_delay.nil?
                writer.write_duration_value("maximumOutboundJitter", @maximum_outbound_jitter) unless @maximum_outbound_jitter.nil?
                writer.write_object_value("maximumOutboundPacketLossRateInPercentage", @maximum_outbound_packet_loss_rate_in_percentage) unless @maximum_outbound_packet_loss_rate_in_percentage.nil?
                writer.write_duration_value("maximumOutboundRoundTripDelay", @maximum_outbound_round_trip_delay) unless @maximum_outbound_round_trip_delay.nil?
                writer.write_duration_value("mediaDuration", @media_duration) unless @media_duration.nil?
                writer.write_object_value("networkLinkSpeedInBytes", @network_link_speed_in_bytes) unless @network_link_speed_in_bytes.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_object_value("outboundPackets", @outbound_packets) unless @outbound_packets.nil?
                writer.write_string_value("remoteIPAddress", @remote_i_p_address) unless @remote_i_p_address.nil?
                writer.write_number_value("remotePort", @remote_port) unless @remote_port.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
        end
    end
end
