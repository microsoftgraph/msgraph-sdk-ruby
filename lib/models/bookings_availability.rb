require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingsAvailability
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The availabilityType property
            @availability_type
            ## 
            # The hours of operation in a week. This is set to null if the availability type is not customWeeklyHours
            @business_hours
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the availabilityType property value. The availabilityType property
            ## @return a bookings_service_availability_type
            ## 
            def availability_type
                return @availability_type
            end
            ## 
            ## Sets the availabilityType property value. The availabilityType property
            ## @param value Value to set for the availabilityType property.
            ## @return a void
            ## 
            def availability_type=(value)
                @availability_type = value
            end
            ## 
            ## Gets the businessHours property value. The hours of operation in a week. This is set to null if the availability type is not customWeeklyHours
            ## @return a booking_work_hours
            ## 
            def business_hours
                return @business_hours
            end
            ## 
            ## Sets the businessHours property value. The hours of operation in a week. This is set to null if the availability type is not customWeeklyHours
            ## @param value Value to set for the businessHours property.
            ## @return a void
            ## 
            def business_hours=(value)
                @business_hours = value
            end
            ## 
            ## Instantiates a new BookingsAvailability and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a bookings_availability
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.bookingsAvailabilityWindow"
                            return BookingsAvailabilityWindow.new
                    end
                end
                return BookingsAvailability.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "availabilityType" => lambda {|n| @availability_type = n.get_enum_value(MicrosoftGraph::Models::BookingsServiceAvailabilityType) },
                    "businessHours" => lambda {|n| @business_hours = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingWorkHours.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_enum_value("availabilityType", @availability_type)
                writer.write_collection_of_object_values("businessHours", @business_hours)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
