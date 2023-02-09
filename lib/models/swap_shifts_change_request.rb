require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SwapShiftsChangeRequest < MicrosoftGraph::Models::OfferShiftRequest
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # ShiftId for the recipient user with whom the request is to swap.
            @recipient_shift_id
            ## 
            ## Instantiates a new SwapShiftsChangeRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.swapShiftsChangeRequest"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a swap_shifts_change_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SwapShiftsChangeRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "recipientShiftId" => lambda {|n| @recipient_shift_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the recipientShiftId property value. ShiftId for the recipient user with whom the request is to swap.
            ## @return a string
            ## 
            def recipient_shift_id
                return @recipient_shift_id
            end
            ## 
            ## Sets the recipientShiftId property value. ShiftId for the recipient user with whom the request is to swap.
            ## @param value Value to set for the recipient_shift_id property.
            ## @return a void
            ## 
            def recipient_shift_id=(value)
                @recipient_shift_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("recipientShiftId", @recipient_shift_id)
            end
        end
    end
end
