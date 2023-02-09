require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # This type represents the set of policies that dictate how bookings can be created in a Booking Calendar.
        class BookingSchedulingPolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # True if to allow customers to choose a specific person for the booking.
            @allow_staff_selection
            ## 
            # Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
            @maximum_advance
            ## 
            # The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
            @minimum_lead_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
            @send_confirmations_to_owner
            ## 
            # Duration of each time slot, denoted in ISO 8601 format.
            @time_slot_interval
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
            ## Gets the allowStaffSelection property value. True if to allow customers to choose a specific person for the booking.
            ## @return a boolean
            ## 
            def allow_staff_selection
                return @allow_staff_selection
            end
            ## 
            ## Sets the allowStaffSelection property value. True if to allow customers to choose a specific person for the booking.
            ## @param value Value to set for the allow_staff_selection property.
            ## @return a void
            ## 
            def allow_staff_selection=(value)
                @allow_staff_selection = value
            end
            ## 
            ## Instantiates a new bookingSchedulingPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_scheduling_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingSchedulingPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowStaffSelection" => lambda {|n| @allow_staff_selection = n.get_boolean_value() },
                    "maximumAdvance" => lambda {|n| @maximum_advance = n.get_duration_value() },
                    "minimumLeadTime" => lambda {|n| @minimum_lead_time = n.get_duration_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sendConfirmationsToOwner" => lambda {|n| @send_confirmations_to_owner = n.get_boolean_value() },
                    "timeSlotInterval" => lambda {|n| @time_slot_interval = n.get_duration_value() },
                }
            end
            ## 
            ## Gets the maximumAdvance property value. Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def maximum_advance
                return @maximum_advance
            end
            ## 
            ## Sets the maximumAdvance property value. Maximum number of days in advance that a booking can be made. It follows the ISO 8601 format.
            ## @param value Value to set for the maximum_advance property.
            ## @return a void
            ## 
            def maximum_advance=(value)
                @maximum_advance = value
            end
            ## 
            ## Gets the minimumLeadTime property value. The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def minimum_lead_time
                return @minimum_lead_time
            end
            ## 
            ## Sets the minimumLeadTime property value. The minimum amount of time before which bookings and cancellations must be made. It follows the ISO 8601 format.
            ## @param value Value to set for the minimum_lead_time property.
            ## @return a void
            ## 
            def minimum_lead_time=(value)
                @minimum_lead_time = value
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
            ## Gets the sendConfirmationsToOwner property value. True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
            ## @return a boolean
            ## 
            def send_confirmations_to_owner
                return @send_confirmations_to_owner
            end
            ## 
            ## Sets the sendConfirmationsToOwner property value. True to notify the business via email when a booking is created or changed. Use the email address specified in the email property of the bookingBusiness entity for the business.
            ## @param value Value to set for the send_confirmations_to_owner property.
            ## @return a void
            ## 
            def send_confirmations_to_owner=(value)
                @send_confirmations_to_owner = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowStaffSelection", @allow_staff_selection)
                writer.write_duration_value("maximumAdvance", @maximum_advance)
                writer.write_duration_value("minimumLeadTime", @minimum_lead_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("sendConfirmationsToOwner", @send_confirmations_to_owner)
                writer.write_duration_value("timeSlotInterval", @time_slot_interval)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeSlotInterval property value. Duration of each time slot, denoted in ISO 8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def time_slot_interval
                return @time_slot_interval
            end
            ## 
            ## Sets the timeSlotInterval property value. Duration of each time slot, denoted in ISO 8601 format.
            ## @param value Value to set for the time_slot_interval property.
            ## @return a void
            ## 
            def time_slot_interval=(value)
                @time_slot_interval = value
            end
        end
    end
end
