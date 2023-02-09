require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingStaffMember < MicrosoftGraph::Models::BookingStaffMemberBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
            @availability_is_affected_by_personal_calendar
            ## 
            # The name of the staff member, as displayed to customers. Required.
            @display_name
            ## 
            # The email address of the staff member. This can be in the same Microsoft 365 tenant as the business, or in a different email domain. This email address can be used if the sendConfirmationsToOwner property is set to true in the scheduling policy of the business. Required.
            @email_address
            ## 
            # True indicates that a staff member will be notified via email when a booking assigned to them is created or changed.
            @is_email_notification_enabled
            ## 
            # The role property
            @role
            ## 
            # The time zone of the staff member. For a list of possible values, see dateTimeTimeZone.
            @time_zone
            ## 
            # True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
            @use_business_hours
            ## 
            # The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
            @working_hours
            ## 
            ## Gets the availabilityIsAffectedByPersonalCalendar property value. True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
            ## @return a boolean
            ## 
            def availability_is_affected_by_personal_calendar
                return @availability_is_affected_by_personal_calendar
            end
            ## 
            ## Sets the availabilityIsAffectedByPersonalCalendar property value. True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
            ## @param value Value to set for the availability_is_affected_by_personal_calendar property.
            ## @return a void
            ## 
            def availability_is_affected_by_personal_calendar=(value)
                @availability_is_affected_by_personal_calendar = value
            end
            ## 
            ## Instantiates a new BookingStaffMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.bookingStaffMember"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_staff_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingStaffMember.new
            end
            ## 
            ## Gets the displayName property value. The name of the staff member, as displayed to customers. Required.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the staff member, as displayed to customers. Required.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the emailAddress property value. The email address of the staff member. This can be in the same Microsoft 365 tenant as the business, or in a different email domain. This email address can be used if the sendConfirmationsToOwner property is set to true in the scheduling policy of the business. Required.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. The email address of the staff member. This can be in the same Microsoft 365 tenant as the business, or in a different email domain. This email address can be used if the sendConfirmationsToOwner property is set to true in the scheduling policy of the business. Required.
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
                    "availabilityIsAffectedByPersonalCalendar" => lambda {|n| @availability_is_affected_by_personal_calendar = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "isEmailNotificationEnabled" => lambda {|n| @is_email_notification_enabled = n.get_boolean_value() },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraph::Models::BookingStaffRole) },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
                    "useBusinessHours" => lambda {|n| @use_business_hours = n.get_boolean_value() },
                    "workingHours" => lambda {|n| @working_hours = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BookingWorkHours.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isEmailNotificationEnabled property value. True indicates that a staff member will be notified via email when a booking assigned to them is created or changed.
            ## @return a boolean
            ## 
            def is_email_notification_enabled
                return @is_email_notification_enabled
            end
            ## 
            ## Sets the isEmailNotificationEnabled property value. True indicates that a staff member will be notified via email when a booking assigned to them is created or changed.
            ## @param value Value to set for the is_email_notification_enabled property.
            ## @return a void
            ## 
            def is_email_notification_enabled=(value)
                @is_email_notification_enabled = value
            end
            ## 
            ## Gets the role property value. The role property
            ## @return a booking_staff_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The role property
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("availabilityIsAffectedByPersonalCalendar", @availability_is_affected_by_personal_calendar)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("emailAddress", @email_address)
                writer.write_boolean_value("isEmailNotificationEnabled", @is_email_notification_enabled)
                writer.write_enum_value("role", @role)
                writer.write_string_value("timeZone", @time_zone)
                writer.write_boolean_value("useBusinessHours", @use_business_hours)
                writer.write_collection_of_object_values("workingHours", @working_hours)
            end
            ## 
            ## Gets the timeZone property value. The time zone of the staff member. For a list of possible values, see dateTimeTimeZone.
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. The time zone of the staff member. For a list of possible values, see dateTimeTimeZone.
            ## @param value Value to set for the time_zone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
            ## 
            ## Gets the useBusinessHours property value. True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
            ## @return a boolean
            ## 
            def use_business_hours
                return @use_business_hours
            end
            ## 
            ## Sets the useBusinessHours property value. True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
            ## @param value Value to set for the use_business_hours property.
            ## @return a void
            ## 
            def use_business_hours=(value)
                @use_business_hours = value
            end
            ## 
            ## Gets the workingHours property value. The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
            ## @return a booking_work_hours
            ## 
            def working_hours
                return @working_hours
            end
            ## 
            ## Sets the workingHours property value. The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
            ## @param value Value to set for the working_hours property.
            ## @return a void
            ## 
            def working_hours=(value)
                @working_hours = value
            end
        end
    end
end
