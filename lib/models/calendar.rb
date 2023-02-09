require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Calendar < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represent the online meeting service providers that can be used to create online meetings in this calendar. Possible values are: unknown, skypeForBusiness, skypeForConsumer, teamsForBusiness.
            @allowed_online_meeting_providers
            ## 
            # The permissions of the users with whom the calendar is shared.
            @calendar_permissions
            ## 
            # The calendar view for the calendar. Navigation property. Read-only.
            @calendar_view
            ## 
            # true if the user can write to the calendar, false otherwise. This property is true for the user who created the calendar. This property is also true for a user who has been shared a calendar and granted write access.
            @can_edit
            ## 
            # true if the user has the permission to share the calendar, false otherwise. Only the user who created the calendar can share it.
            @can_share
            ## 
            # true if the user can read calendar items that have been marked private, false otherwise.
            @can_view_private_items
            ## 
            # Identifies the version of the calendar object. Every time the calendar is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
            @change_key
            ## 
            # Specifies the color theme to distinguish the calendar from other calendars in a UI. The property values are: auto, lightBlue, lightGreen, lightOrange, lightGray, lightYellow, lightTeal, lightPink, lightBrown, lightRed, maxColor.
            @color
            ## 
            # The default online meeting provider for meetings sent from this calendar. Possible values are: unknown, skypeForBusiness, skypeForConsumer, teamsForBusiness.
            @default_online_meeting_provider
            ## 
            # The events in the calendar. Navigation property. Read-only.
            @events
            ## 
            # The calendar color, expressed in a hex color code of three hexadecimal values, each ranging from 00 to FF and representing the red, green, or blue components of the color in the RGB color space. If the user has never explicitly set a color for the calendar, this property is empty. Read-only.
            @hex_color
            ## 
            # true if this is the default calendar where new events are created by default, false otherwise.
            @is_default_calendar
            ## 
            # Indicates whether this user calendar can be deleted from the user mailbox.
            @is_removable
            ## 
            # Indicates whether this user calendar supports tracking of meeting responses. Only meeting invites sent from users' primary calendars support tracking of meeting responses.
            @is_tallying_responses
            ## 
            # The collection of multi-value extended properties defined for the calendar. Read-only. Nullable.
            @multi_value_extended_properties
            ## 
            # The calendar name.
            @name
            ## 
            # If set, this represents the user who created or added the calendar. For a calendar that the user created or added, the owner property is set to the user. For a calendar shared with the user, the owner property is set to the person who shared that calendar with the user.
            @owner
            ## 
            # The collection of single-value extended properties defined for the calendar. Read-only. Nullable.
            @single_value_extended_properties
            ## 
            ## Gets the allowedOnlineMeetingProviders property value. Represent the online meeting service providers that can be used to create online meetings in this calendar. Possible values are: unknown, skypeForBusiness, skypeForConsumer, teamsForBusiness.
            ## @return a online_meeting_provider_type
            ## 
            def allowed_online_meeting_providers
                return @allowed_online_meeting_providers
            end
            ## 
            ## Sets the allowedOnlineMeetingProviders property value. Represent the online meeting service providers that can be used to create online meetings in this calendar. Possible values are: unknown, skypeForBusiness, skypeForConsumer, teamsForBusiness.
            ## @param value Value to set for the allowed_online_meeting_providers property.
            ## @return a void
            ## 
            def allowed_online_meeting_providers=(value)
                @allowed_online_meeting_providers = value
            end
            ## 
            ## Gets the calendarPermissions property value. The permissions of the users with whom the calendar is shared.
            ## @return a calendar_permission
            ## 
            def calendar_permissions
                return @calendar_permissions
            end
            ## 
            ## Sets the calendarPermissions property value. The permissions of the users with whom the calendar is shared.
            ## @param value Value to set for the calendar_permissions property.
            ## @return a void
            ## 
            def calendar_permissions=(value)
                @calendar_permissions = value
            end
            ## 
            ## Gets the calendarView property value. The calendar view for the calendar. Navigation property. Read-only.
            ## @return a event
            ## 
            def calendar_view
                return @calendar_view
            end
            ## 
            ## Sets the calendarView property value. The calendar view for the calendar. Navigation property. Read-only.
            ## @param value Value to set for the calendar_view property.
            ## @return a void
            ## 
            def calendar_view=(value)
                @calendar_view = value
            end
            ## 
            ## Gets the canEdit property value. true if the user can write to the calendar, false otherwise. This property is true for the user who created the calendar. This property is also true for a user who has been shared a calendar and granted write access.
            ## @return a boolean
            ## 
            def can_edit
                return @can_edit
            end
            ## 
            ## Sets the canEdit property value. true if the user can write to the calendar, false otherwise. This property is true for the user who created the calendar. This property is also true for a user who has been shared a calendar and granted write access.
            ## @param value Value to set for the can_edit property.
            ## @return a void
            ## 
            def can_edit=(value)
                @can_edit = value
            end
            ## 
            ## Gets the canShare property value. true if the user has the permission to share the calendar, false otherwise. Only the user who created the calendar can share it.
            ## @return a boolean
            ## 
            def can_share
                return @can_share
            end
            ## 
            ## Sets the canShare property value. true if the user has the permission to share the calendar, false otherwise. Only the user who created the calendar can share it.
            ## @param value Value to set for the can_share property.
            ## @return a void
            ## 
            def can_share=(value)
                @can_share = value
            end
            ## 
            ## Gets the canViewPrivateItems property value. true if the user can read calendar items that have been marked private, false otherwise.
            ## @return a boolean
            ## 
            def can_view_private_items
                return @can_view_private_items
            end
            ## 
            ## Sets the canViewPrivateItems property value. true if the user can read calendar items that have been marked private, false otherwise.
            ## @param value Value to set for the can_view_private_items property.
            ## @return a void
            ## 
            def can_view_private_items=(value)
                @can_view_private_items = value
            end
            ## 
            ## Gets the changeKey property value. Identifies the version of the calendar object. Every time the calendar is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
            ## @return a string
            ## 
            def change_key
                return @change_key
            end
            ## 
            ## Sets the changeKey property value. Identifies the version of the calendar object. Every time the calendar is changed, changeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
            ## @param value Value to set for the change_key property.
            ## @return a void
            ## 
            def change_key=(value)
                @change_key = value
            end
            ## 
            ## Gets the color property value. Specifies the color theme to distinguish the calendar from other calendars in a UI. The property values are: auto, lightBlue, lightGreen, lightOrange, lightGray, lightYellow, lightTeal, lightPink, lightBrown, lightRed, maxColor.
            ## @return a calendar_color
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. Specifies the color theme to distinguish the calendar from other calendars in a UI. The property values are: auto, lightBlue, lightGreen, lightOrange, lightGray, lightYellow, lightTeal, lightPink, lightBrown, lightRed, maxColor.
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new calendar and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a calendar
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Calendar.new
            end
            ## 
            ## Gets the defaultOnlineMeetingProvider property value. The default online meeting provider for meetings sent from this calendar. Possible values are: unknown, skypeForBusiness, skypeForConsumer, teamsForBusiness.
            ## @return a online_meeting_provider_type
            ## 
            def default_online_meeting_provider
                return @default_online_meeting_provider
            end
            ## 
            ## Sets the defaultOnlineMeetingProvider property value. The default online meeting provider for meetings sent from this calendar. Possible values are: unknown, skypeForBusiness, skypeForConsumer, teamsForBusiness.
            ## @param value Value to set for the default_online_meeting_provider property.
            ## @return a void
            ## 
            def default_online_meeting_provider=(value)
                @default_online_meeting_provider = value
            end
            ## 
            ## Gets the events property value. The events in the calendar. Navigation property. Read-only.
            ## @return a event
            ## 
            def events
                return @events
            end
            ## 
            ## Sets the events property value. The events in the calendar. Navigation property. Read-only.
            ## @param value Value to set for the events property.
            ## @return a void
            ## 
            def events=(value)
                @events = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedOnlineMeetingProviders" => lambda {|n| @allowed_online_meeting_providers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnlineMeetingProviderType.create_from_discriminator_value(pn) }) },
                    "calendarPermissions" => lambda {|n| @calendar_permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CalendarPermission.create_from_discriminator_value(pn) }) },
                    "calendarView" => lambda {|n| @calendar_view = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }) },
                    "canEdit" => lambda {|n| @can_edit = n.get_boolean_value() },
                    "canShare" => lambda {|n| @can_share = n.get_boolean_value() },
                    "canViewPrivateItems" => lambda {|n| @can_view_private_items = n.get_boolean_value() },
                    "changeKey" => lambda {|n| @change_key = n.get_string_value() },
                    "color" => lambda {|n| @color = n.get_enum_value(MicrosoftGraph::Models::CalendarColor) },
                    "defaultOnlineMeetingProvider" => lambda {|n| @default_online_meeting_provider = n.get_enum_value(MicrosoftGraph::Models::OnlineMeetingProviderType) },
                    "events" => lambda {|n| @events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }) },
                    "hexColor" => lambda {|n| @hex_color = n.get_string_value() },
                    "isDefaultCalendar" => lambda {|n| @is_default_calendar = n.get_boolean_value() },
                    "isRemovable" => lambda {|n| @is_removable = n.get_boolean_value() },
                    "isTallyingResponses" => lambda {|n| @is_tallying_responses = n.get_boolean_value() },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "owner" => lambda {|n| @owner = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailAddress.create_from_discriminator_value(pn) }) },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hexColor property value. The calendar color, expressed in a hex color code of three hexadecimal values, each ranging from 00 to FF and representing the red, green, or blue components of the color in the RGB color space. If the user has never explicitly set a color for the calendar, this property is empty. Read-only.
            ## @return a string
            ## 
            def hex_color
                return @hex_color
            end
            ## 
            ## Sets the hexColor property value. The calendar color, expressed in a hex color code of three hexadecimal values, each ranging from 00 to FF and representing the red, green, or blue components of the color in the RGB color space. If the user has never explicitly set a color for the calendar, this property is empty. Read-only.
            ## @param value Value to set for the hex_color property.
            ## @return a void
            ## 
            def hex_color=(value)
                @hex_color = value
            end
            ## 
            ## Gets the isDefaultCalendar property value. true if this is the default calendar where new events are created by default, false otherwise.
            ## @return a boolean
            ## 
            def is_default_calendar
                return @is_default_calendar
            end
            ## 
            ## Sets the isDefaultCalendar property value. true if this is the default calendar where new events are created by default, false otherwise.
            ## @param value Value to set for the is_default_calendar property.
            ## @return a void
            ## 
            def is_default_calendar=(value)
                @is_default_calendar = value
            end
            ## 
            ## Gets the isRemovable property value. Indicates whether this user calendar can be deleted from the user mailbox.
            ## @return a boolean
            ## 
            def is_removable
                return @is_removable
            end
            ## 
            ## Sets the isRemovable property value. Indicates whether this user calendar can be deleted from the user mailbox.
            ## @param value Value to set for the is_removable property.
            ## @return a void
            ## 
            def is_removable=(value)
                @is_removable = value
            end
            ## 
            ## Gets the isTallyingResponses property value. Indicates whether this user calendar supports tracking of meeting responses. Only meeting invites sent from users' primary calendars support tracking of meeting responses.
            ## @return a boolean
            ## 
            def is_tallying_responses
                return @is_tallying_responses
            end
            ## 
            ## Sets the isTallyingResponses property value. Indicates whether this user calendar supports tracking of meeting responses. Only meeting invites sent from users' primary calendars support tracking of meeting responses.
            ## @param value Value to set for the is_tallying_responses property.
            ## @return a void
            ## 
            def is_tallying_responses=(value)
                @is_tallying_responses = value
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the calendar. Read-only. Nullable.
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the calendar. Read-only. Nullable.
            ## @param value Value to set for the multi_value_extended_properties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Gets the name property value. The calendar name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The calendar name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the owner property value. If set, this represents the user who created or added the calendar. For a calendar that the user created or added, the owner property is set to the user. For a calendar shared with the user, the owner property is set to the person who shared that calendar with the user.
            ## @return a email_address
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. If set, this represents the user who created or added the calendar. For a calendar that the user created or added, the owner property is set to the user. For a calendar shared with the user, the owner property is set to the person who shared that calendar with the user.
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("allowedOnlineMeetingProviders", @allowed_online_meeting_providers)
                writer.write_collection_of_object_values("calendarPermissions", @calendar_permissions)
                writer.write_collection_of_object_values("calendarView", @calendar_view)
                writer.write_boolean_value("canEdit", @can_edit)
                writer.write_boolean_value("canShare", @can_share)
                writer.write_boolean_value("canViewPrivateItems", @can_view_private_items)
                writer.write_string_value("changeKey", @change_key)
                writer.write_enum_value("color", @color)
                writer.write_enum_value("defaultOnlineMeetingProvider", @default_online_meeting_provider)
                writer.write_collection_of_object_values("events", @events)
                writer.write_string_value("hexColor", @hex_color)
                writer.write_boolean_value("isDefaultCalendar", @is_default_calendar)
                writer.write_boolean_value("isRemovable", @is_removable)
                writer.write_boolean_value("isTallyingResponses", @is_tallying_responses)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_string_value("name", @name)
                writer.write_object_value("owner", @owner)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the calendar. Read-only. Nullable.
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the calendar. Read-only. Nullable.
            ## @param value Value to set for the single_value_extended_properties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
        end
    end
end
