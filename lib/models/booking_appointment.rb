require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingAppointment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional information that is sent to the customer when an appointment is confirmed.
            @additional_information
            ## 
            # The URL of the meeting to join anonymously.
            @anonymous_join_web_url
            ## 
            # The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            @customer_time_zone
            ## 
            # A collection of customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment. Optional.
            @customers
            ## 
            # The length of the appointment, denoted in ISO8601 format.
            @duration
            ## 
            # The endDateTime property
            @end_date_time
            ## 
            # The current number of customers in the appointment
            @filled_attendees_count
            ## 
            # If true, indicates that the appointment will be held online. Default value is false.
            @is_location_online
            ## 
            # The URL of the online meeting for the appointment.
            @join_web_url
            ## 
            # The maximum number of customers allowed in an appointment. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            @maximum_attendees_count
            ## 
            # If true indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
            @opt_out_of_customer_email
            ## 
            # The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
            @post_buffer
            ## 
            # The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
            @pre_buffer
            ## 
            # The regular price for an appointment for the specified bookingService.
            @price
            ## 
            # Represents the type of pricing of a booking service.
            @price_type
            ## 
            # The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
            @reminders
            ## 
            # An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer. Only supported for appointment if maxAttendeeCount is 1.
            @self_service_appointment_id
            ## 
            # The ID of the bookingService associated with this appointment.
            @service_id
            ## 
            # The location where the service is delivered.
            @service_location
            ## 
            # The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
            @service_name
            ## 
            # Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
            @service_notes
            ## 
            # If true, indicates SMS notifications will be sent to the customers for the appointment. Default value is false.
            @sms_notifications_enabled
            ## 
            # The ID of each bookingStaffMember who is scheduled in this appointment.
            @staff_member_ids
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            ## Gets the additionalInformation property value. Additional information that is sent to the customer when an appointment is confirmed.
            ## @return a string
            ## 
            def additional_information
                return @additional_information
            end
            ## 
            ## Sets the additionalInformation property value. Additional information that is sent to the customer when an appointment is confirmed.
            ## @param value Value to set for the additional_information property.
            ## @return a void
            ## 
            def additional_information=(value)
                @additional_information = value
            end
            ## 
            ## Gets the anonymousJoinWebUrl property value. The URL of the meeting to join anonymously.
            ## @return a string
            ## 
            def anonymous_join_web_url
                return @anonymous_join_web_url
            end
            ## 
            ## Sets the anonymousJoinWebUrl property value. The URL of the meeting to join anonymously.
            ## @param value Value to set for the anonymous_join_web_url property.
            ## @return a void
            ## 
            def anonymous_join_web_url=(value)
                @anonymous_join_web_url = value
            end
            ## 
            ## Instantiates a new BookingAppointment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_appointment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingAppointment.new
            end
            ## 
            ## Gets the customerTimeZone property value. The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            ## @return a string
            ## 
            def customer_time_zone
                return @customer_time_zone
            end
            ## 
            ## Sets the customerTimeZone property value. The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            ## @param value Value to set for the customer_time_zone property.
            ## @return a void
            ## 
            def customer_time_zone=(value)
                @customer_time_zone = value
            end
            ## 
            ## Gets the customers property value. A collection of customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment. Optional.
            ## @return a booking_customer_information_base
            ## 
            def customers
                return @customers
            end
            ## 
            ## Sets the customers property value. A collection of customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment. Optional.
            ## @param value Value to set for the customers property.
            ## @return a void
            ## 
            def customers=(value)
                @customers = value
            end
            ## 
            ## Gets the duration property value. The length of the appointment, denoted in ISO8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. The length of the appointment, denoted in ISO8601 format.
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
            end
            ## 
            ## Gets the endDateTime property value. The endDateTime property
            ## @return a date_time_time_zone
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The endDateTime property
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the filledAttendeesCount property value. The current number of customers in the appointment
            ## @return a integer
            ## 
            def filled_attendees_count
                return @filled_attendees_count
            end
            ## 
            ## Sets the filledAttendeesCount property value. The current number of customers in the appointment
            ## @param value Value to set for the filled_attendees_count property.
            ## @return a void
            ## 
            def filled_attendees_count=(value)
                @filled_attendees_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalInformation" => lambda {|n| @additional_information = n.get_string_value() },
                    "anonymousJoinWebUrl" => lambda {|n| @anonymous_join_web_url = n.get_string_value() },
                    "customerTimeZone" => lambda {|n| @customer_time_zone = n.get_string_value() },
                    "customers" => lambda {|n| @customers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingCustomerInformationBase.create_from_discriminator_value(pn) }) },
                    "duration" => lambda {|n| @duration = n.get_duration_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "filledAttendeesCount" => lambda {|n| @filled_attendees_count = n.get_number_value() },
                    "isLocationOnline" => lambda {|n| @is_location_online = n.get_boolean_value() },
                    "joinWebUrl" => lambda {|n| @join_web_url = n.get_string_value() },
                    "maximumAttendeesCount" => lambda {|n| @maximum_attendees_count = n.get_number_value() },
                    "optOutOfCustomerEmail" => lambda {|n| @opt_out_of_customer_email = n.get_boolean_value() },
                    "postBuffer" => lambda {|n| @post_buffer = n.get_duration_value() },
                    "preBuffer" => lambda {|n| @pre_buffer = n.get_duration_value() },
                    "price" => lambda {|n| @price = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "priceType" => lambda {|n| @price_type = n.get_enum_value(MicrosoftGraph::Models::BookingPriceType) },
                    "reminders" => lambda {|n| @reminders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingReminder.create_from_discriminator_value(pn) }) },
                    "selfServiceAppointmentId" => lambda {|n| @self_service_appointment_id = n.get_string_value() },
                    "serviceId" => lambda {|n| @service_id = n.get_string_value() },
                    "serviceLocation" => lambda {|n| @service_location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "serviceName" => lambda {|n| @service_name = n.get_string_value() },
                    "serviceNotes" => lambda {|n| @service_notes = n.get_string_value() },
                    "smsNotificationsEnabled" => lambda {|n| @sms_notifications_enabled = n.get_boolean_value() },
                    "staffMemberIds" => lambda {|n| @staff_member_ids = n.get_collection_of_primitive_values(String) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isLocationOnline property value. If true, indicates that the appointment will be held online. Default value is false.
            ## @return a boolean
            ## 
            def is_location_online
                return @is_location_online
            end
            ## 
            ## Sets the isLocationOnline property value. If true, indicates that the appointment will be held online. Default value is false.
            ## @param value Value to set for the is_location_online property.
            ## @return a void
            ## 
            def is_location_online=(value)
                @is_location_online = value
            end
            ## 
            ## Gets the joinWebUrl property value. The URL of the online meeting for the appointment.
            ## @return a string
            ## 
            def join_web_url
                return @join_web_url
            end
            ## 
            ## Sets the joinWebUrl property value. The URL of the online meeting for the appointment.
            ## @param value Value to set for the join_web_url property.
            ## @return a void
            ## 
            def join_web_url=(value)
                @join_web_url = value
            end
            ## 
            ## Gets the maximumAttendeesCount property value. The maximum number of customers allowed in an appointment. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            ## @return a integer
            ## 
            def maximum_attendees_count
                return @maximum_attendees_count
            end
            ## 
            ## Sets the maximumAttendeesCount property value. The maximum number of customers allowed in an appointment. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            ## @param value Value to set for the maximum_attendees_count property.
            ## @return a void
            ## 
            def maximum_attendees_count=(value)
                @maximum_attendees_count = value
            end
            ## 
            ## Gets the optOutOfCustomerEmail property value. If true indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
            ## @return a boolean
            ## 
            def opt_out_of_customer_email
                return @opt_out_of_customer_email
            end
            ## 
            ## Sets the optOutOfCustomerEmail property value. If true indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
            ## @param value Value to set for the opt_out_of_customer_email property.
            ## @return a void
            ## 
            def opt_out_of_customer_email=(value)
                @opt_out_of_customer_email = value
            end
            ## 
            ## Gets the postBuffer property value. The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def post_buffer
                return @post_buffer
            end
            ## 
            ## Sets the postBuffer property value. The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
            ## @param value Value to set for the post_buffer property.
            ## @return a void
            ## 
            def post_buffer=(value)
                @post_buffer = value
            end
            ## 
            ## Gets the preBuffer property value. The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def pre_buffer
                return @pre_buffer
            end
            ## 
            ## Sets the preBuffer property value. The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
            ## @param value Value to set for the pre_buffer property.
            ## @return a void
            ## 
            def pre_buffer=(value)
                @pre_buffer = value
            end
            ## 
            ## Gets the price property value. The regular price for an appointment for the specified bookingService.
            ## @return a double
            ## 
            def price
                return @price
            end
            ## 
            ## Sets the price property value. The regular price for an appointment for the specified bookingService.
            ## @param value Value to set for the price property.
            ## @return a void
            ## 
            def price=(value)
                @price = value
            end
            ## 
            ## Gets the priceType property value. Represents the type of pricing of a booking service.
            ## @return a booking_price_type
            ## 
            def price_type
                return @price_type
            end
            ## 
            ## Sets the priceType property value. Represents the type of pricing of a booking service.
            ## @param value Value to set for the price_type property.
            ## @return a void
            ## 
            def price_type=(value)
                @price_type = value
            end
            ## 
            ## Gets the reminders property value. The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
            ## @return a booking_reminder
            ## 
            def reminders
                return @reminders
            end
            ## 
            ## Sets the reminders property value. The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
            ## @param value Value to set for the reminders property.
            ## @return a void
            ## 
            def reminders=(value)
                @reminders = value
            end
            ## 
            ## Gets the selfServiceAppointmentId property value. An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer. Only supported for appointment if maxAttendeeCount is 1.
            ## @return a string
            ## 
            def self_service_appointment_id
                return @self_service_appointment_id
            end
            ## 
            ## Sets the selfServiceAppointmentId property value. An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer. Only supported for appointment if maxAttendeeCount is 1.
            ## @param value Value to set for the self_service_appointment_id property.
            ## @return a void
            ## 
            def self_service_appointment_id=(value)
                @self_service_appointment_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("additionalInformation", @additional_information)
                writer.write_string_value("anonymousJoinWebUrl", @anonymous_join_web_url)
                writer.write_string_value("customerTimeZone", @customer_time_zone)
                writer.write_collection_of_object_values("customers", @customers)
                writer.write_object_value("endDateTime", @end_date_time)
                writer.write_boolean_value("isLocationOnline", @is_location_online)
                writer.write_string_value("joinWebUrl", @join_web_url)
                writer.write_number_value("maximumAttendeesCount", @maximum_attendees_count)
                writer.write_boolean_value("optOutOfCustomerEmail", @opt_out_of_customer_email)
                writer.write_duration_value("postBuffer", @post_buffer)
                writer.write_duration_value("preBuffer", @pre_buffer)
                writer.write_object_value("price", @price)
                writer.write_enum_value("priceType", @price_type)
                writer.write_collection_of_object_values("reminders", @reminders)
                writer.write_string_value("selfServiceAppointmentId", @self_service_appointment_id)
                writer.write_string_value("serviceId", @service_id)
                writer.write_object_value("serviceLocation", @service_location)
                writer.write_string_value("serviceName", @service_name)
                writer.write_string_value("serviceNotes", @service_notes)
                writer.write_boolean_value("smsNotificationsEnabled", @sms_notifications_enabled)
                writer.write_collection_of_primitive_values("staffMemberIds", @staff_member_ids)
                writer.write_object_value("startDateTime", @start_date_time)
            end
            ## 
            ## Gets the serviceId property value. The ID of the bookingService associated with this appointment.
            ## @return a string
            ## 
            def service_id
                return @service_id
            end
            ## 
            ## Sets the serviceId property value. The ID of the bookingService associated with this appointment.
            ## @param value Value to set for the service_id property.
            ## @return a void
            ## 
            def service_id=(value)
                @service_id = value
            end
            ## 
            ## Gets the serviceLocation property value. The location where the service is delivered.
            ## @return a location
            ## 
            def service_location
                return @service_location
            end
            ## 
            ## Sets the serviceLocation property value. The location where the service is delivered.
            ## @param value Value to set for the service_location property.
            ## @return a void
            ## 
            def service_location=(value)
                @service_location = value
            end
            ## 
            ## Gets the serviceName property value. The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
            ## @return a string
            ## 
            def service_name
                return @service_name
            end
            ## 
            ## Sets the serviceName property value. The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
            ## @param value Value to set for the service_name property.
            ## @return a void
            ## 
            def service_name=(value)
                @service_name = value
            end
            ## 
            ## Gets the serviceNotes property value. Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
            ## @return a string
            ## 
            def service_notes
                return @service_notes
            end
            ## 
            ## Sets the serviceNotes property value. Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
            ## @param value Value to set for the service_notes property.
            ## @return a void
            ## 
            def service_notes=(value)
                @service_notes = value
            end
            ## 
            ## Gets the smsNotificationsEnabled property value. If true, indicates SMS notifications will be sent to the customers for the appointment. Default value is false.
            ## @return a boolean
            ## 
            def sms_notifications_enabled
                return @sms_notifications_enabled
            end
            ## 
            ## Sets the smsNotificationsEnabled property value. If true, indicates SMS notifications will be sent to the customers for the appointment. Default value is false.
            ## @param value Value to set for the sms_notifications_enabled property.
            ## @return a void
            ## 
            def sms_notifications_enabled=(value)
                @sms_notifications_enabled = value
            end
            ## 
            ## Gets the staffMemberIds property value. The ID of each bookingStaffMember who is scheduled in this appointment.
            ## @return a string
            ## 
            def staff_member_ids
                return @staff_member_ids
            end
            ## 
            ## Sets the staffMemberIds property value. The ID of each bookingStaffMember who is scheduled in this appointment.
            ## @param value Value to set for the staff_member_ids property.
            ## @return a void
            ## 
            def staff_member_ids=(value)
                @staff_member_ids = value
            end
            ## 
            ## Gets the startDateTime property value. The startDateTime property
            ## @return a date_time_time_zone
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The startDateTime property
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
        end
    end
end
