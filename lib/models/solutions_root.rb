require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SolutionsRoot
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The bookingBusinesses property
            @booking_businesses
            ## 
            # The bookingCurrencies property
            @booking_currencies
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the bookingBusinesses property value. The bookingBusinesses property
            ## @return a booking_business
            ## 
            def booking_businesses
                return @booking_businesses
            end
            ## 
            ## Sets the bookingBusinesses property value. The bookingBusinesses property
            ## @param value Value to set for the booking_businesses property.
            ## @return a void
            ## 
            def booking_businesses=(value)
                @booking_businesses = value
            end
            ## 
            ## Gets the bookingCurrencies property value. The bookingCurrencies property
            ## @return a booking_currency
            ## 
            def booking_currencies
                return @booking_currencies
            end
            ## 
            ## Sets the bookingCurrencies property value. The bookingCurrencies property
            ## @param value Value to set for the booking_currencies property.
            ## @return a void
            ## 
            def booking_currencies=(value)
                @booking_currencies = value
            end
            ## 
            ## Instantiates a new SolutionsRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a solutions_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SolutionsRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "bookingBusinesses" => lambda {|n| @booking_businesses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingBusiness.create_from_discriminator_value(pn) }) },
                    "bookingCurrencies" => lambda {|n| @booking_currencies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingCurrency.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("bookingBusinesses", @booking_businesses)
                writer.write_collection_of_object_values("bookingCurrencies", @booking_currencies)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
