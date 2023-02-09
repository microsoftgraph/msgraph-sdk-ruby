require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OfferShiftRequest < MicrosoftGraph::Models::ScheduleChangeRequest
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @recipient_action_date_time
            ## 
            # Custom message sent by recipient of the offer shift request.
            @recipient_action_message
            ## 
            # User ID of the recipient of the offer shift request.
            @recipient_user_id
            ## 
            # User ID of the sender of the offer shift request.
            @sender_shift_id
            ## 
            ## Instantiates a new OfferShiftRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.offerShiftRequest"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a offer_shift_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.swapShiftsChangeRequest"
                            return SwapShiftsChangeRequest.new
                    end
                end
                return OfferShiftRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "recipientActionDateTime" => lambda {|n| @recipient_action_date_time = n.get_date_time_value() },
                    "recipientActionMessage" => lambda {|n| @recipient_action_message = n.get_string_value() },
                    "recipientUserId" => lambda {|n| @recipient_user_id = n.get_string_value() },
                    "senderShiftId" => lambda {|n| @sender_shift_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the recipientActionDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def recipient_action_date_time
                return @recipient_action_date_time
            end
            ## 
            ## Sets the recipientActionDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the recipient_action_date_time property.
            ## @return a void
            ## 
            def recipient_action_date_time=(value)
                @recipient_action_date_time = value
            end
            ## 
            ## Gets the recipientActionMessage property value. Custom message sent by recipient of the offer shift request.
            ## @return a string
            ## 
            def recipient_action_message
                return @recipient_action_message
            end
            ## 
            ## Sets the recipientActionMessage property value. Custom message sent by recipient of the offer shift request.
            ## @param value Value to set for the recipient_action_message property.
            ## @return a void
            ## 
            def recipient_action_message=(value)
                @recipient_action_message = value
            end
            ## 
            ## Gets the recipientUserId property value. User ID of the recipient of the offer shift request.
            ## @return a string
            ## 
            def recipient_user_id
                return @recipient_user_id
            end
            ## 
            ## Sets the recipientUserId property value. User ID of the recipient of the offer shift request.
            ## @param value Value to set for the recipient_user_id property.
            ## @return a void
            ## 
            def recipient_user_id=(value)
                @recipient_user_id = value
            end
            ## 
            ## Gets the senderShiftId property value. User ID of the sender of the offer shift request.
            ## @return a string
            ## 
            def sender_shift_id
                return @sender_shift_id
            end
            ## 
            ## Sets the senderShiftId property value. User ID of the sender of the offer shift request.
            ## @param value Value to set for the sender_shift_id property.
            ## @return a void
            ## 
            def sender_shift_id=(value)
                @sender_shift_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("recipientActionMessage", @recipient_action_message)
                writer.write_string_value("recipientUserId", @recipient_user_id)
                writer.write_string_value("senderShiftId", @sender_shift_id)
            end
        end
    end
end
