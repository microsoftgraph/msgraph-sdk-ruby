require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingCustomerInformation < MicrosoftGraph::Models::BookingCustomerInformationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # It consists of the list of custom questions and answers given by the customer as part of the appointment
            @custom_question_answers
            ## 
            # The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
            @customer_id
            ## 
            # The SMTP address of the bookingCustomer who is booking the appointment
            @email_address
            ## 
            # Represents location information for the bookingCustomer who is booking the appointment.
            @location
            ## 
            # The customer's name.
            @name
            ## 
            # Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID. You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by the customerId.
            @notes
            ## 
            # The customer's phone number.
            @phone
            ## 
            # The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            @time_zone
            ## 
            ## Instantiates a new BookingCustomerInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.bookingCustomerInformation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_customer_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingCustomerInformation.new
            end
            ## 
            ## Gets the customQuestionAnswers property value. It consists of the list of custom questions and answers given by the customer as part of the appointment
            ## @return a booking_question_answer
            ## 
            def custom_question_answers
                return @custom_question_answers
            end
            ## 
            ## Sets the customQuestionAnswers property value. It consists of the list of custom questions and answers given by the customer as part of the appointment
            ## @param value Value to set for the custom_question_answers property.
            ## @return a void
            ## 
            def custom_question_answers=(value)
                @custom_question_answers = value
            end
            ## 
            ## Gets the customerId property value. The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
            ## @return a string
            ## 
            def customer_id
                return @customer_id
            end
            ## 
            ## Sets the customerId property value. The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
            ## @param value Value to set for the customer_id property.
            ## @return a void
            ## 
            def customer_id=(value)
                @customer_id = value
            end
            ## 
            ## Gets the emailAddress property value. The SMTP address of the bookingCustomer who is booking the appointment
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. The SMTP address of the bookingCustomer who is booking the appointment
            ## @param value Value to set for the email_address property.
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
                    "customQuestionAnswers" => lambda {|n| @custom_question_answers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingQuestionAnswer.create_from_discriminator_value(pn) }) },
                    "customerId" => lambda {|n| @customer_id = n.get_string_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                    "phone" => lambda {|n| @phone = n.get_string_value() },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
                })
            end
            ## 
            ## Gets the location property value. Represents location information for the bookingCustomer who is booking the appointment.
            ## @return a location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. Represents location information for the bookingCustomer who is booking the appointment.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the name property value. The customer's name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The customer's name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the notes property value. Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID. You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by the customerId.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID. You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by the customerId.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the phone property value. The customer's phone number.
            ## @return a string
            ## 
            def phone
                return @phone
            end
            ## 
            ## Sets the phone property value. The customer's phone number.
            ## @param value Value to set for the phone property.
            ## @return a void
            ## 
            def phone=(value)
                @phone = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("customQuestionAnswers", @custom_question_answers)
                writer.write_string_value("customerId", @customer_id)
                writer.write_string_value("emailAddress", @email_address)
                writer.write_object_value("location", @location)
                writer.write_string_value("name", @name)
                writer.write_string_value("notes", @notes)
                writer.write_string_value("phone", @phone)
                writer.write_string_value("timeZone", @time_zone)
            end
            ## 
            ## Gets the timeZone property value. The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            ## @param value Value to set for the time_zone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
        end
    end
end
