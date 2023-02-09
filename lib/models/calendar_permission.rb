require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CalendarPermission < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of allowed sharing or delegating permission levels for the calendar. Possible values are: none, freeBusyRead, limitedRead, read, write, delegateWithoutPrivateEventAccess, delegateWithPrivateEventAccess, custom.
            @allowed_roles
            ## 
            # Represents a sharee or delegate who has access to the calendar. For the 'My Organization' sharee, the address property is null. Read-only.
            @email_address
            ## 
            # True if the user in context (sharee or delegate) is inside the same organization as the calendar owner.
            @is_inside_organization
            ## 
            # True if the user can be removed from the list of sharees or delegates for the specified calendar, false otherwise. The 'My organization' user determines the permissions other people within your organization have to the given calendar. You cannot remove 'My organization' as a sharee to a calendar.
            @is_removable
            ## 
            # Current permission level of the calendar sharee or delegate.
            @role
            ## 
            ## Gets the allowedRoles property value. List of allowed sharing or delegating permission levels for the calendar. Possible values are: none, freeBusyRead, limitedRead, read, write, delegateWithoutPrivateEventAccess, delegateWithPrivateEventAccess, custom.
            ## @return a calendar_role_type
            ## 
            def allowed_roles
                return @allowed_roles
            end
            ## 
            ## Sets the allowedRoles property value. List of allowed sharing or delegating permission levels for the calendar. Possible values are: none, freeBusyRead, limitedRead, read, write, delegateWithoutPrivateEventAccess, delegateWithPrivateEventAccess, custom.
            ## @param value Value to set for the allowed_roles property.
            ## @return a void
            ## 
            def allowed_roles=(value)
                @allowed_roles = value
            end
            ## 
            ## Instantiates a new calendarPermission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a calendar_permission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CalendarPermission.new
            end
            ## 
            ## Gets the emailAddress property value. Represents a sharee or delegate who has access to the calendar. For the 'My Organization' sharee, the address property is null. Read-only.
            ## @return a email_address
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. Represents a sharee or delegate who has access to the calendar. For the 'My Organization' sharee, the address property is null. Read-only.
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
                    "allowedRoles" => lambda {|n| @allowed_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CalendarRoleType.create_from_discriminator_value(pn) }) },
                    "emailAddress" => lambda {|n| @email_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailAddress.create_from_discriminator_value(pn) }) },
                    "isInsideOrganization" => lambda {|n| @is_inside_organization = n.get_boolean_value() },
                    "isRemovable" => lambda {|n| @is_removable = n.get_boolean_value() },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraph::Models::CalendarRoleType) },
                })
            end
            ## 
            ## Gets the isInsideOrganization property value. True if the user in context (sharee or delegate) is inside the same organization as the calendar owner.
            ## @return a boolean
            ## 
            def is_inside_organization
                return @is_inside_organization
            end
            ## 
            ## Sets the isInsideOrganization property value. True if the user in context (sharee or delegate) is inside the same organization as the calendar owner.
            ## @param value Value to set for the is_inside_organization property.
            ## @return a void
            ## 
            def is_inside_organization=(value)
                @is_inside_organization = value
            end
            ## 
            ## Gets the isRemovable property value. True if the user can be removed from the list of sharees or delegates for the specified calendar, false otherwise. The 'My organization' user determines the permissions other people within your organization have to the given calendar. You cannot remove 'My organization' as a sharee to a calendar.
            ## @return a boolean
            ## 
            def is_removable
                return @is_removable
            end
            ## 
            ## Sets the isRemovable property value. True if the user can be removed from the list of sharees or delegates for the specified calendar, false otherwise. The 'My organization' user determines the permissions other people within your organization have to the given calendar. You cannot remove 'My organization' as a sharee to a calendar.
            ## @param value Value to set for the is_removable property.
            ## @return a void
            ## 
            def is_removable=(value)
                @is_removable = value
            end
            ## 
            ## Gets the role property value. Current permission level of the calendar sharee or delegate.
            ## @return a calendar_role_type
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. Current permission level of the calendar sharee or delegate.
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
                writer.write_collection_of_object_values("allowedRoles", @allowed_roles)
                writer.write_object_value("emailAddress", @email_address)
                writer.write_boolean_value("isInsideOrganization", @is_inside_organization)
                writer.write_boolean_value("isRemovable", @is_removable)
                writer.write_enum_value("role", @role)
            end
        end
    end
end
