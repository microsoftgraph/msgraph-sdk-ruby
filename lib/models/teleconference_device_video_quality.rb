require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeleconferenceDeviceVideoQuality < MicrosoftGraph::Models::TeleconferenceDeviceMediaQuality
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The average inbound stream video bit rate per second.
            @average_inbound_bit_rate
            ## 
            # The average inbound stream video frame rate per second.
            @average_inbound_frame_rate
            ## 
            # The average outbound stream video bit rate per second.
            @average_outbound_bit_rate
            ## 
            # The average outbound stream video frame rate per second.
            @average_outbound_frame_rate
            ## 
            ## Gets the averageInboundBitRate property value. The average inbound stream video bit rate per second.
            ## @return a double
            ## 
            def average_inbound_bit_rate
                return @average_inbound_bit_rate
            end
            ## 
            ## Sets the averageInboundBitRate property value. The average inbound stream video bit rate per second.
            ## @param value Value to set for the average_inbound_bit_rate property.
            ## @return a void
            ## 
            def average_inbound_bit_rate=(value)
                @average_inbound_bit_rate = value
            end
            ## 
            ## Gets the averageInboundFrameRate property value. The average inbound stream video frame rate per second.
            ## @return a double
            ## 
            def average_inbound_frame_rate
                return @average_inbound_frame_rate
            end
            ## 
            ## Sets the averageInboundFrameRate property value. The average inbound stream video frame rate per second.
            ## @param value Value to set for the average_inbound_frame_rate property.
            ## @return a void
            ## 
            def average_inbound_frame_rate=(value)
                @average_inbound_frame_rate = value
            end
            ## 
            ## Gets the averageOutboundBitRate property value. The average outbound stream video bit rate per second.
            ## @return a double
            ## 
            def average_outbound_bit_rate
                return @average_outbound_bit_rate
            end
            ## 
            ## Sets the averageOutboundBitRate property value. The average outbound stream video bit rate per second.
            ## @param value Value to set for the average_outbound_bit_rate property.
            ## @return a void
            ## 
            def average_outbound_bit_rate=(value)
                @average_outbound_bit_rate = value
            end
            ## 
            ## Gets the averageOutboundFrameRate property value. The average outbound stream video frame rate per second.
            ## @return a double
            ## 
            def average_outbound_frame_rate
                return @average_outbound_frame_rate
            end
            ## 
            ## Sets the averageOutboundFrameRate property value. The average outbound stream video frame rate per second.
            ## @param value Value to set for the average_outbound_frame_rate property.
            ## @return a void
            ## 
            def average_outbound_frame_rate=(value)
                @average_outbound_frame_rate = value
            end
            ## 
            ## Instantiates a new TeleconferenceDeviceVideoQuality and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.teleconferenceDeviceVideoQuality"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teleconference_device_video_quality
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.teleconferenceDeviceScreenSharingQuality"
                            return TeleconferenceDeviceScreenSharingQuality.new
                    end
                end
                return TeleconferenceDeviceVideoQuality.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "averageInboundBitRate" => lambda {|n| @average_inbound_bit_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "averageInboundFrameRate" => lambda {|n| @average_inbound_frame_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "averageOutboundBitRate" => lambda {|n| @average_outbound_bit_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "averageOutboundFrameRate" => lambda {|n| @average_outbound_frame_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("averageInboundBitRate", @average_inbound_bit_rate)
                writer.write_object_value("averageInboundFrameRate", @average_inbound_frame_rate)
                writer.write_object_value("averageOutboundBitRate", @average_outbound_bit_rate)
                writer.write_object_value("averageOutboundFrameRate", @average_outbound_frame_rate)
            end
        end
    end
end
