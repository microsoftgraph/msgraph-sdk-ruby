require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingBusiness < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The street address of the business. The address property, together with phone and webSiteUrl, appear in the footer of a business scheduling page. The attribute type of physicalAddress is not supported in v1.0. Internally we map the addresses to the type others.
            @address
            ## 
            # All the appointments of this business. Read-only. Nullable.
            @appointments
            ## 
            # The hours of operation for the business.
            @business_hours
            ## 
            # The type of business.
            @business_type
            ## 
            # The set of appointments of this business in a specified date range. Read-only. Nullable.
            @calendar_view
            ## 
            # All the custom questions of this business. Read-only. Nullable.
            @custom_questions
            ## 
            # All the customers of this business. Read-only. Nullable.
            @customers
            ## 
            # The code for the currency that the business operates in on Microsoft Bookings.
            @default_currency_iso
            ## 
            # The name of the business, which interfaces with customers. This name appears at the top of the business scheduling page.
            @display_name
            ## 
            # The email address for the business.
            @email
            ## 
            # The scheduling page has been made available to external customers. Use the publish and unpublish actions to set this property. Read-only.
            @is_published
            ## 
            # The language of the self-service booking page.
            @language_tag
            ## 
            # The telephone number for the business. The phone property, together with address and webSiteUrl, appear in the footer of a business scheduling page.
            @phone
            ## 
            # The URL for the scheduling page, which is set after you publish or unpublish the page. Read-only.
            @public_url
            ## 
            # Specifies how bookings can be created for this business.
            @scheduling_policy
            ## 
            # All the services offered by this business. Read-only. Nullable.
            @services
            ## 
            # All the staff members that provide services in this business. Read-only. Nullable.
            @staff_members
            ## 
            # The URL of the business web site. The webSiteUrl property, together with address, phone, appear in the footer of a business scheduling page.
            @web_site_url
            ## 
            ## Gets the address property value. The street address of the business. The address property, together with phone and webSiteUrl, appear in the footer of a business scheduling page. The attribute type of physicalAddress is not supported in v1.0. Internally we map the addresses to the type others.
            ## @return a physical_address
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The street address of the business. The address property, together with phone and webSiteUrl, appear in the footer of a business scheduling page. The attribute type of physicalAddress is not supported in v1.0. Internally we map the addresses to the type others.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the appointments property value. All the appointments of this business. Read-only. Nullable.
            ## @return a booking_appointment
            ## 
            def appointments
                return @appointments
            end
            ## 
            ## Sets the appointments property value. All the appointments of this business. Read-only. Nullable.
            ## @param value Value to set for the appointments property.
            ## @return a void
            ## 
            def appointments=(value)
                @appointments = value
            end
            ## 
            ## Gets the businessHours property value. The hours of operation for the business.
            ## @return a booking_work_hours
            ## 
            def business_hours
                return @business_hours
            end
            ## 
            ## Sets the businessHours property value. The hours of operation for the business.
            ## @param value Value to set for the business_hours property.
            ## @return a void
            ## 
            def business_hours=(value)
                @business_hours = value
            end
            ## 
            ## Gets the businessType property value. The type of business.
            ## @return a string
            ## 
            def business_type
                return @business_type
            end
            ## 
            ## Sets the businessType property value. The type of business.
            ## @param value Value to set for the business_type property.
            ## @return a void
            ## 
            def business_type=(value)
                @business_type = value
            end
            ## 
            ## Gets the calendarView property value. The set of appointments of this business in a specified date range. Read-only. Nullable.
            ## @return a booking_appointment
            ## 
            def calendar_view
                return @calendar_view
            end
            ## 
            ## Sets the calendarView property value. The set of appointments of this business in a specified date range. Read-only. Nullable.
            ## @param value Value to set for the calendar_view property.
            ## @return a void
            ## 
            def calendar_view=(value)
                @calendar_view = value
            end
            ## 
            ## Instantiates a new BookingBusiness and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_business
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingBusiness.new
            end
            ## 
            ## Gets the customQuestions property value. All the custom questions of this business. Read-only. Nullable.
            ## @return a booking_custom_question
            ## 
            def custom_questions
                return @custom_questions
            end
            ## 
            ## Sets the customQuestions property value. All the custom questions of this business. Read-only. Nullable.
            ## @param value Value to set for the custom_questions property.
            ## @return a void
            ## 
            def custom_questions=(value)
                @custom_questions = value
            end
            ## 
            ## Gets the customers property value. All the customers of this business. Read-only. Nullable.
            ## @return a booking_customer_base
            ## 
            def customers
                return @customers
            end
            ## 
            ## Sets the customers property value. All the customers of this business. Read-only. Nullable.
            ## @param value Value to set for the customers property.
            ## @return a void
            ## 
            def customers=(value)
                @customers = value
            end
            ## 
            ## Gets the defaultCurrencyIso property value. The code for the currency that the business operates in on Microsoft Bookings.
            ## @return a string
            ## 
            def default_currency_iso
                return @default_currency_iso
            end
            ## 
            ## Sets the defaultCurrencyIso property value. The code for the currency that the business operates in on Microsoft Bookings.
            ## @param value Value to set for the default_currency_iso property.
            ## @return a void
            ## 
            def default_currency_iso=(value)
                @default_currency_iso = value
            end
            ## 
            ## Gets the displayName property value. The name of the business, which interfaces with customers. This name appears at the top of the business scheduling page.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the business, which interfaces with customers. This name appears at the top of the business scheduling page.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the email property value. The email address for the business.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email address for the business.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "appointments" => lambda {|n| @appointments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingAppointment.create_from_discriminator_value(pn) }) },
                    "businessHours" => lambda {|n| @business_hours = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingWorkHours.create_from_discriminator_value(pn) }) },
                    "businessType" => lambda {|n| @business_type = n.get_string_value() },
                    "calendarView" => lambda {|n| @calendar_view = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingAppointment.create_from_discriminator_value(pn) }) },
                    "customQuestions" => lambda {|n| @custom_questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingCustomQuestion.create_from_discriminator_value(pn) }) },
                    "customers" => lambda {|n| @customers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingCustomerBase.create_from_discriminator_value(pn) }) },
                    "defaultCurrencyIso" => lambda {|n| @default_currency_iso = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "isPublished" => lambda {|n| @is_published = n.get_boolean_value() },
                    "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                    "phone" => lambda {|n| @phone = n.get_string_value() },
                    "publicUrl" => lambda {|n| @public_url = n.get_string_value() },
                    "schedulingPolicy" => lambda {|n| @scheduling_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::BookingSchedulingPolicy.create_from_discriminator_value(pn) }) },
                    "services" => lambda {|n| @services = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingService.create_from_discriminator_value(pn) }) },
                    "staffMembers" => lambda {|n| @staff_members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingStaffMemberBase.create_from_discriminator_value(pn) }) },
                    "webSiteUrl" => lambda {|n| @web_site_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isPublished property value. The scheduling page has been made available to external customers. Use the publish and unpublish actions to set this property. Read-only.
            ## @return a boolean
            ## 
            def is_published
                return @is_published
            end
            ## 
            ## Sets the isPublished property value. The scheduling page has been made available to external customers. Use the publish and unpublish actions to set this property. Read-only.
            ## @param value Value to set for the is_published property.
            ## @return a void
            ## 
            def is_published=(value)
                @is_published = value
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
            ## Gets the phone property value. The telephone number for the business. The phone property, together with address and webSiteUrl, appear in the footer of a business scheduling page.
            ## @return a string
            ## 
            def phone
                return @phone
            end
            ## 
            ## Sets the phone property value. The telephone number for the business. The phone property, together with address and webSiteUrl, appear in the footer of a business scheduling page.
            ## @param value Value to set for the phone property.
            ## @return a void
            ## 
            def phone=(value)
                @phone = value
            end
            ## 
            ## Gets the publicUrl property value. The URL for the scheduling page, which is set after you publish or unpublish the page. Read-only.
            ## @return a string
            ## 
            def public_url
                return @public_url
            end
            ## 
            ## Sets the publicUrl property value. The URL for the scheduling page, which is set after you publish or unpublish the page. Read-only.
            ## @param value Value to set for the public_url property.
            ## @return a void
            ## 
            def public_url=(value)
                @public_url = value
            end
            ## 
            ## Gets the schedulingPolicy property value. Specifies how bookings can be created for this business.
            ## @return a booking_scheduling_policy
            ## 
            def scheduling_policy
                return @scheduling_policy
            end
            ## 
            ## Sets the schedulingPolicy property value. Specifies how bookings can be created for this business.
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
                writer.write_object_value("address", @address)
                writer.write_collection_of_object_values("appointments", @appointments)
                writer.write_collection_of_object_values("businessHours", @business_hours)
                writer.write_string_value("businessType", @business_type)
                writer.write_collection_of_object_values("calendarView", @calendar_view)
                writer.write_collection_of_object_values("customQuestions", @custom_questions)
                writer.write_collection_of_object_values("customers", @customers)
                writer.write_string_value("defaultCurrencyIso", @default_currency_iso)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("email", @email)
                writer.write_string_value("languageTag", @language_tag)
                writer.write_string_value("phone", @phone)
                writer.write_object_value("schedulingPolicy", @scheduling_policy)
                writer.write_collection_of_object_values("services", @services)
                writer.write_collection_of_object_values("staffMembers", @staff_members)
                writer.write_string_value("webSiteUrl", @web_site_url)
            end
            ## 
            ## Gets the services property value. All the services offered by this business. Read-only. Nullable.
            ## @return a booking_service
            ## 
            def services
                return @services
            end
            ## 
            ## Sets the services property value. All the services offered by this business. Read-only. Nullable.
            ## @param value Value to set for the services property.
            ## @return a void
            ## 
            def services=(value)
                @services = value
            end
            ## 
            ## Gets the staffMembers property value. All the staff members that provide services in this business. Read-only. Nullable.
            ## @return a booking_staff_member_base
            ## 
            def staff_members
                return @staff_members
            end
            ## 
            ## Sets the staffMembers property value. All the staff members that provide services in this business. Read-only. Nullable.
            ## @param value Value to set for the staff_members property.
            ## @return a void
            ## 
            def staff_members=(value)
                @staff_members = value
            end
            ## 
            ## Gets the webSiteUrl property value. The URL of the business web site. The webSiteUrl property, together with address, phone, appear in the footer of a business scheduling page.
            ## @return a string
            ## 
            def web_site_url
                return @web_site_url
            end
            ## 
            ## Sets the webSiteUrl property value. The URL of the business web site. The webSiteUrl property, together with address, phone, appear in the footer of a business scheduling page.
            ## @param value Value to set for the web_site_url property.
            ## @return a void
            ## 
            def web_site_url=(value)
                @web_site_url = value
            end
        end
    end
end
