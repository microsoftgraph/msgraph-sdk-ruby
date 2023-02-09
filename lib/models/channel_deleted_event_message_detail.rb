require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChannelDeletedEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name of the channel.
            @channel_display_name
            ## 
            # Unique identifier of the channel.
            @channel_id
            ## 
            # Initiator of the event.
            @initiator
            ## 
            ## Gets the channelDisplayName property value. Display name of the channel.
            ## @return a string
            ## 
            def channel_display_name
                return @channel_display_name
            end
            ## 
            ## Sets the channelDisplayName property value. Display name of the channel.
            ## @param value Value to set for the channel_display_name property.
            ## @return a void
            ## 
            def channel_display_name=(value)
                @channel_display_name = value
            end
            ## 
            ## Gets the channelId property value. Unique identifier of the channel.
            ## @return a string
            ## 
            def channel_id
                return @channel_id
            end
            ## 
            ## Sets the channelId property value. Unique identifier of the channel.
            ## @param value Value to set for the channel_id property.
            ## @return a void
            ## 
            def channel_id=(value)
                @channel_id = value
            end
            ## 
            ## Instantiates a new ChannelDeletedEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.channelDeletedEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a channel_deleted_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChannelDeletedEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "channelDisplayName" => lambda {|n| @channel_display_name = n.get_string_value() },
                    "channelId" => lambda {|n| @channel_id = n.get_string_value() },
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the initiator property value. Initiator of the event.
            ## @return a identity_set
            ## 
            def initiator
                return @initiator
            end
            ## 
            ## Sets the initiator property value. Initiator of the event.
            ## @param value Value to set for the initiator property.
            ## @return a void
            ## 
            def initiator=(value)
                @initiator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("channelDisplayName", @channel_display_name)
                writer.write_string_value("channelId", @channel_id)
                writer.write_object_value("initiator", @initiator)
            end
        end
    end
end
