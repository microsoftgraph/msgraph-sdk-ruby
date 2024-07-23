require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Represents a customer of the business.
        class BookingCustomer < MicrosoftGraph::Models::BookingCustomerBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Addresses associated with the customer. The attribute type of physicalAddress is not supported in v1.0. Internally we map the addresses to the type others.
            @addresses
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The name of the customer.
            @display_name
            ## 
            # The SMTP address of the customer.
            @email_address
            ## 
            # The lastUpdatedDateTime property
            @last_updated_date_time
            ## 
            # Phone numbers associated with the customer, including home, business and mobile numbers.
            @phones
            ## 
            ## Gets the addresses property value. Addresses associated with the customer. The attribute type of physicalAddress is not supported in v1.0. Internally we map the addresses to the type others.
            ## @return a physical_address
            ## 
            def addresses
                return @addresses
            end
            ## 
            ## Sets the addresses property value. Addresses associated with the customer. The attribute type of physicalAddress is not supported in v1.0. Internally we map the addresses to the type others.
            ## @param value Value to set for the addresses property.
            ## @return a void
            ## 
            def addresses=(value)
                @addresses = value
            end
            ## 
            ## Instantiates a new BookingCustomer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.bookingCustomer"
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a booking_customer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingCustomer.new
            end
            ## 
            ## Gets the displayName property value. The name of the customer.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the customer.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the emailAddress property value. The SMTP address of the customer.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. The SMTP address of the customer.
            ## @param value Value to set for the emailAddress property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "addresses" => lambda {|n| @addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "phones" => lambda {|n| @phones = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Phone.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
            ## @param value Value to set for the lastUpdatedDateTime property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the phones property value. Phone numbers associated with the customer, including home, business and mobile numbers.
            ## @return a phone
            ## 
            def phones
                return @phones
            end
            ## 
            ## Sets the phones property value. Phone numbers associated with the customer, including home, business and mobile numbers.
            ## @param value Value to set for the phones property.
            ## @return a void
            ## 
            def phones=(value)
                @phones = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("addresses", @addresses)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("emailAddress", @email_address)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_collection_of_object_values("phones", @phones)
            end
        end
    end
end
