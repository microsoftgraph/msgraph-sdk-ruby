require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # This type represents the set of working hours in a single day of the week.
        class BookingWorkHours
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The day property
            @day
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A list of start/end times during a day.
            @time_slots
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
            ## Instantiates a new bookingWorkHours and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_work_hours
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingWorkHours.new
            end
            ## 
            ## Gets the day property value. The day property
            ## @return a day_of_week
            ## 
            def day
                return @day
            end
            ## 
            ## Sets the day property value. The day property
            ## @param value Value to set for the day property.
            ## @return a void
            ## 
            def day=(value)
                @day = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "day" => lambda {|n| @day = n.get_enum_value(MicrosoftGraph::Models::DayOfWeek) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "timeSlots" => lambda {|n| @time_slots = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingWorkTimeSlot.create_from_discriminator_value(pn) }) },
                }
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
                writer.write_enum_value("day", @day)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("timeSlots", @time_slots)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeSlots property value. A list of start/end times during a day.
            ## @return a booking_work_time_slot
            ## 
            def time_slots
                return @time_slots
            end
            ## 
            ## Sets the timeSlots property value. A list of start/end times during a day.
            ## @param value Value to set for the time_slots property.
            ## @return a void
            ## 
            def time_slots=(value)
                @time_slots = value
            end
        end
    end
end
