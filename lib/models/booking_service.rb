require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Represents a particular service offered by a booking business.
        class BookingService < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional information that is sent to the customer when an appointment is confirmed.
            @additional_information
            ## 
            # Contains the set of custom questions associated with a particular service.
            @custom_questions
            ## 
            # The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
            @default_duration
            ## 
            # The default physical location for the service.
            @default_location
            ## 
            # The default monetary price for the service.
            @default_price
            ## 
            # Represents the type of pricing of a booking service.
            @default_price_type
            ## 
            # The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
            @default_reminders
            ## 
            # A text description for the service.
            @description
            ## 
            # A service name.
            @display_name
            ## 
            # True if the URL to join the appointment anonymously (anonymousJoinWebUrl) will be generated for the appointment booked for this service.
            @is_anonymous_join_enabled
            ## 
            # True means this service is not available to customers for booking.
            @is_hidden_from_customers
            ## 
            # True indicates that the appointments for the service will be held online. Default value is false.
            @is_location_online
            ## 
            # The language of the self-service booking page.
            @language_tag
            ## 
            # The maximum number of customers allowed in a service. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            @maximum_attendees_count
            ## 
            # Additional information about this service.
            @notes
            ## 
            # The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
            @post_buffer
            ## 
            # The time to buffer before an appointment for this service can start.
            @pre_buffer
            ## 
            # The set of policies that determine how appointments for this type of service should be created and managed.
            @scheduling_policy
            ## 
            # True indicates SMS notifications can be sent to the customers for the appointment of the service. Default value is false.
            @sms_notifications_enabled
            ## 
            # Represents those staff members who provide this service.
            @staff_member_ids
            ## 
            # The URL a customer uses to access the service.
            @web_url
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
            ## Instantiates a new bookingService and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_service
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingService.new
            end
            ## 
            ## Gets the customQuestions property value. Contains the set of custom questions associated with a particular service.
            ## @return a booking_question_assignment
            ## 
            def custom_questions
                return @custom_questions
            end
            ## 
            ## Sets the customQuestions property value. Contains the set of custom questions associated with a particular service.
            ## @param value Value to set for the custom_questions property.
            ## @return a void
            ## 
            def custom_questions=(value)
                @custom_questions = value
            end
            ## 
            ## Gets the defaultDuration property value. The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def default_duration
                return @default_duration
            end
            ## 
            ## Sets the defaultDuration property value. The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S.
            ## @param value Value to set for the default_duration property.
            ## @return a void
            ## 
            def default_duration=(value)
                @default_duration = value
            end
            ## 
            ## Gets the defaultLocation property value. The default physical location for the service.
            ## @return a location
            ## 
            def default_location
                return @default_location
            end
            ## 
            ## Sets the defaultLocation property value. The default physical location for the service.
            ## @param value Value to set for the default_location property.
            ## @return a void
            ## 
            def default_location=(value)
                @default_location = value
            end
            ## 
            ## Gets the defaultPrice property value. The default monetary price for the service.
            ## @return a double
            ## 
            def default_price
                return @default_price
            end
            ## 
            ## Sets the defaultPrice property value. The default monetary price for the service.
            ## @param value Value to set for the default_price property.
            ## @return a void
            ## 
            def default_price=(value)
                @default_price = value
            end
            ## 
            ## Gets the defaultPriceType property value. Represents the type of pricing of a booking service.
            ## @return a booking_price_type
            ## 
            def default_price_type
                return @default_price_type
            end
            ## 
            ## Sets the defaultPriceType property value. Represents the type of pricing of a booking service.
            ## @param value Value to set for the default_price_type property.
            ## @return a void
            ## 
            def default_price_type=(value)
                @default_price_type = value
            end
            ## 
            ## Gets the defaultReminders property value. The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
            ## @return a booking_reminder
            ## 
            def default_reminders
                return @default_reminders
            end
            ## 
            ## Sets the defaultReminders property value. The default set of reminders for an appointment of this service. The value of this property is available only when reading this bookingService by its ID.
            ## @param value Value to set for the default_reminders property.
            ## @return a void
            ## 
            def default_reminders=(value)
                @default_reminders = value
            end
            ## 
            ## Gets the description property value. A text description for the service.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A text description for the service.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. A service name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. A service name.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalInformation" => lambda {|n| @additional_information = n.get_string_value() },
                    "customQuestions" => lambda {|n| @custom_questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingQuestionAssignment.create_from_discriminator_value(pn) }) },
                    "defaultDuration" => lambda {|n| @default_duration = n.get_duration_value() },
                    "defaultLocation" => lambda {|n| @default_location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "defaultPrice" => lambda {|n| @default_price = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "defaultPriceType" => lambda {|n| @default_price_type = n.get_enum_value(MicrosoftGraph::Models::BookingPriceType) },
                    "defaultReminders" => lambda {|n| @default_reminders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingReminder.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isAnonymousJoinEnabled" => lambda {|n| @is_anonymous_join_enabled = n.get_boolean_value() },
                    "isHiddenFromCustomers" => lambda {|n| @is_hidden_from_customers = n.get_boolean_value() },
                    "isLocationOnline" => lambda {|n| @is_location_online = n.get_boolean_value() },
                    "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                    "maximumAttendeesCount" => lambda {|n| @maximum_attendees_count = n.get_number_value() },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                    "postBuffer" => lambda {|n| @post_buffer = n.get_duration_value() },
                    "preBuffer" => lambda {|n| @pre_buffer = n.get_duration_value() },
                    "schedulingPolicy" => lambda {|n| @scheduling_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::BookingSchedulingPolicy.create_from_discriminator_value(pn) }) },
                    "smsNotificationsEnabled" => lambda {|n| @sms_notifications_enabled = n.get_boolean_value() },
                    "staffMemberIds" => lambda {|n| @staff_member_ids = n.get_collection_of_primitive_values(String) },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isAnonymousJoinEnabled property value. True if the URL to join the appointment anonymously (anonymousJoinWebUrl) will be generated for the appointment booked for this service.
            ## @return a boolean
            ## 
            def is_anonymous_join_enabled
                return @is_anonymous_join_enabled
            end
            ## 
            ## Sets the isAnonymousJoinEnabled property value. True if the URL to join the appointment anonymously (anonymousJoinWebUrl) will be generated for the appointment booked for this service.
            ## @param value Value to set for the is_anonymous_join_enabled property.
            ## @return a void
            ## 
            def is_anonymous_join_enabled=(value)
                @is_anonymous_join_enabled = value
            end
            ## 
            ## Gets the isHiddenFromCustomers property value. True means this service is not available to customers for booking.
            ## @return a boolean
            ## 
            def is_hidden_from_customers
                return @is_hidden_from_customers
            end
            ## 
            ## Sets the isHiddenFromCustomers property value. True means this service is not available to customers for booking.
            ## @param value Value to set for the is_hidden_from_customers property.
            ## @return a void
            ## 
            def is_hidden_from_customers=(value)
                @is_hidden_from_customers = value
            end
            ## 
            ## Gets the isLocationOnline property value. True indicates that the appointments for the service will be held online. Default value is false.
            ## @return a boolean
            ## 
            def is_location_online
                return @is_location_online
            end
            ## 
            ## Sets the isLocationOnline property value. True indicates that the appointments for the service will be held online. Default value is false.
            ## @param value Value to set for the is_location_online property.
            ## @return a void
            ## 
            def is_location_online=(value)
                @is_location_online = value
            end
            ## 
            ## Gets the languageTag property value. The language of the self-service booking page.
            ## @return a string
            ## 
            def language_tag
                return @language_tag
            end
            ## 
            ## Sets the languageTag property value. The language of the self-service booking page.
            ## @param value Value to set for the language_tag property.
            ## @return a void
            ## 
            def language_tag=(value)
                @language_tag = value
            end
            ## 
            ## Gets the maximumAttendeesCount property value. The maximum number of customers allowed in a service. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            ## @return a integer
            ## 
            def maximum_attendees_count
                return @maximum_attendees_count
            end
            ## 
            ## Sets the maximumAttendeesCount property value. The maximum number of customers allowed in a service. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            ## @param value Value to set for the maximum_attendees_count property.
            ## @return a void
            ## 
            def maximum_attendees_count=(value)
                @maximum_attendees_count = value
            end
            ## 
            ## Gets the notes property value. Additional information about this service.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Additional information about this service.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the postBuffer property value. The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def post_buffer
                return @post_buffer
            end
            ## 
            ## Sets the postBuffer property value. The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.
            ## @param value Value to set for the post_buffer property.
            ## @return a void
            ## 
            def post_buffer=(value)
                @post_buffer = value
            end
            ## 
            ## Gets the preBuffer property value. The time to buffer before an appointment for this service can start.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def pre_buffer
                return @pre_buffer
            end
            ## 
            ## Sets the preBuffer property value. The time to buffer before an appointment for this service can start.
            ## @param value Value to set for the pre_buffer property.
            ## @return a void
            ## 
            def pre_buffer=(value)
                @pre_buffer = value
            end
            ## 
            ## Gets the schedulingPolicy property value. The set of policies that determine how appointments for this type of service should be created and managed.
            ## @return a booking_scheduling_policy
            ## 
            def scheduling_policy
                return @scheduling_policy
            end
            ## 
            ## Sets the schedulingPolicy property value. The set of policies that determine how appointments for this type of service should be created and managed.
            ## @param value Value to set for the scheduling_policy property.
            ## @return a void
            ## 
            def scheduling_policy=(value)
                @scheduling_policy = value
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
                writer.write_collection_of_object_values("customQuestions", @custom_questions)
                writer.write_duration_value("defaultDuration", @default_duration)
                writer.write_object_value("defaultLocation", @default_location)
                writer.write_object_value("defaultPrice", @default_price)
                writer.write_enum_value("defaultPriceType", @default_price_type)
                writer.write_collection_of_object_values("defaultReminders", @default_reminders)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isAnonymousJoinEnabled", @is_anonymous_join_enabled)
                writer.write_boolean_value("isHiddenFromCustomers", @is_hidden_from_customers)
                writer.write_boolean_value("isLocationOnline", @is_location_online)
                writer.write_string_value("languageTag", @language_tag)
                writer.write_number_value("maximumAttendeesCount", @maximum_attendees_count)
                writer.write_string_value("notes", @notes)
                writer.write_duration_value("postBuffer", @post_buffer)
                writer.write_duration_value("preBuffer", @pre_buffer)
                writer.write_object_value("schedulingPolicy", @scheduling_policy)
                writer.write_boolean_value("smsNotificationsEnabled", @sms_notifications_enabled)
                writer.write_collection_of_primitive_values("staffMemberIds", @staff_member_ids)
            end
            ## 
            ## Gets the smsNotificationsEnabled property value. True indicates SMS notifications can be sent to the customers for the appointment of the service. Default value is false.
            ## @return a boolean
            ## 
            def sms_notifications_enabled
                return @sms_notifications_enabled
            end
            ## 
            ## Sets the smsNotificationsEnabled property value. True indicates SMS notifications can be sent to the customers for the appointment of the service. Default value is false.
            ## @param value Value to set for the sms_notifications_enabled property.
            ## @return a void
            ## 
            def sms_notifications_enabled=(value)
                @sms_notifications_enabled = value
            end
            ## 
            ## Gets the staffMemberIds property value. Represents those staff members who provide this service.
            ## @return a string
            ## 
            def staff_member_ids
                return @staff_member_ids
            end
            ## 
            ## Sets the staffMemberIds property value. Represents those staff members who provide this service.
            ## @param value Value to set for the staff_member_ids property.
            ## @return a void
            ## 
            def staff_member_ids=(value)
                @staff_member_ids = value
            end
            ## 
            ## Gets the webUrl property value. The URL a customer uses to access the service.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. The URL a customer uses to access the service.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
