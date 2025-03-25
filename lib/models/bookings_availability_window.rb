require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingsAvailabilityWindow < MicrosoftGraph::Models::BookingsAvailability
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # End date of the availability window.
            @end_date
            ## 
            # Start date of the availability window.
            @start_date
            ## 
            ## Instantiates a new BookingsAvailabilityWindow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.bookingsAvailabilityWindow"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a bookings_availability_window
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingsAvailabilityWindow.new
            end
            ## 
            ## Gets the endDate property value. End date of the availability window.
            ## @return a date
            ## 
            def end_date
                return @end_date
            end
            ## 
            ## Sets the endDate property value. End date of the availability window.
            ## @param value Value to set for the endDate property.
            ## @return a void
            ## 
            def end_date=(value)
                @end_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "endDate" => lambda {|n| @end_date = n.get_date_value() },
                    "startDate" => lambda {|n| @start_date = n.get_date_value() },
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
                writer.write_date_value("endDate", @end_date)
                writer.write_date_value("startDate", @start_date)
            end
            ## 
            ## Gets the startDate property value. Start date of the availability window.
            ## @return a date
            ## 
            def start_date
                return @start_date
            end
            ## 
            ## Sets the startDate property value. Start date of the availability window.
            ## @param value Value to set for the startDate property.
            ## @return a void
            ## 
            def start_date=(value)
                @start_date = value
            end
        end
    end
end
