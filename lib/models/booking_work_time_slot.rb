require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingWorkTimeSlot
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The time of the day when work stops. For example, 17:00:00.0000000.
            @end_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The time of the day when work starts. For example, 08:00:00.0000000.
            @start_time
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
            ## Instantiates a new bookingWorkTimeSlot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_work_time_slot
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingWorkTimeSlot.new
            end
            ## 
            ## Gets the endTime property value. The time of the day when work stops. For example, 17:00:00.0000000.
            ## @return a time
            ## 
            def end_time
                return @end_time
            end
            ## 
            ## Sets the endTime property value. The time of the day when work stops. For example, 17:00:00.0000000.
            ## @param value Value to set for the end_time property.
            ## @return a void
            ## 
            def end_time=(value)
                @end_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "endTime" => lambda {|n| @end_time = n.get_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startTime" => lambda {|n| @start_time = n.get_time_value() },
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
                writer.write_time_value("endTime", @end_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_time_value("startTime", @start_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startTime property value. The time of the day when work starts. For example, 08:00:00.0000000.
            ## @return a time
            ## 
            def start_time
                return @start_time
            end
            ## 
            ## Sets the startTime property value. The time of the day when work starts. For example, 08:00:00.0000000.
            ## @param value Value to set for the start_time property.
            ## @return a void
            ## 
            def start_time=(value)
                @start_time = value
            end
        end
    end
end
