require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CalendarGroup < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The calendars in the calendar group. Navigation property. Read-only. Nullable.
            @calendars
            ## 
            # Identifies the version of the calendar group. Every time the calendar group is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
            @change_key
            ## 
            # The class identifier. Read-only.
            @class_id
            ## 
            # The group name.
            @name
            ## 
            ## Gets the calendars property value. The calendars in the calendar group. Navigation property. Read-only. Nullable.
            ## @return a calendar
            ## 
            def calendars
                return @calendars
            end
            ## 
            ## Sets the calendars property value. The calendars in the calendar group. Navigation property. Read-only. Nullable.
            ## @param value Value to set for the calendars property.
            ## @return a void
            ## 
            def calendars=(value)
                @calendars = value
            end
            ## 
            ## Gets the changeKey property value. Identifies the version of the calendar group. Every time the calendar group is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
            ## @return a string
            ## 
            def change_key
                return @change_key
            end
            ## 
            ## Sets the changeKey property value. Identifies the version of the calendar group. Every time the calendar group is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.
            ## @param value Value to set for the change_key property.
            ## @return a void
            ## 
            def change_key=(value)
                @change_key = value
            end
            ## 
            ## Gets the classId property value. The class identifier. Read-only.
            ## @return a guid
            ## 
            def class_id
                return @class_id
            end
            ## 
            ## Sets the classId property value. The class identifier. Read-only.
            ## @param value Value to set for the class_id property.
            ## @return a void
            ## 
            def class_id=(value)
                @class_id = value
            end
            ## 
            ## Instantiates a new calendarGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a calendar_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CalendarGroup.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "calendars" => lambda {|n| @calendars = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Calendar.create_from_discriminator_value(pn) }) },
                    "changeKey" => lambda {|n| @change_key = n.get_string_value() },
                    "classId" => lambda {|n| @class_id = n.get_guid_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. The group name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The group name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("calendars", @calendars)
                writer.write_string_value("changeKey", @change_key)
                writer.write_guid_value("classId", @class_id)
                writer.write_string_value("name", @name)
            end
        end
    end
end
