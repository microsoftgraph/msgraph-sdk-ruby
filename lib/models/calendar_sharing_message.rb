require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CalendarSharingMessage < MicrosoftGraph::Models::Message
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The canAccept property
            @can_accept
            ## 
            # The sharingMessageAction property
            @sharing_message_action
            ## 
            # The sharingMessageActions property
            @sharing_message_actions
            ## 
            # The suggestedCalendarName property
            @suggested_calendar_name
            ## 
            ## Gets the canAccept property value. The canAccept property
            ## @return a boolean
            ## 
            def can_accept
                return @can_accept
            end
            ## 
            ## Sets the canAccept property value. The canAccept property
            ## @param value Value to set for the can_accept property.
            ## @return a void
            ## 
            def can_accept=(value)
                @can_accept = value
            end
            ## 
            ## Instantiates a new CalendarSharingMessage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.calendarSharingMessage"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a calendar_sharing_message
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CalendarSharingMessage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "canAccept" => lambda {|n| @can_accept = n.get_boolean_value() },
                    "sharingMessageAction" => lambda {|n| @sharing_message_action = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CalendarSharingMessageAction.create_from_discriminator_value(pn) }) },
                    "sharingMessageActions" => lambda {|n| @sharing_message_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CalendarSharingMessageAction.create_from_discriminator_value(pn) }) },
                    "suggestedCalendarName" => lambda {|n| @suggested_calendar_name = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("canAccept", @can_accept)
                writer.write_object_value("sharingMessageAction", @sharing_message_action)
                writer.write_collection_of_object_values("sharingMessageActions", @sharing_message_actions)
                writer.write_string_value("suggestedCalendarName", @suggested_calendar_name)
            end
            ## 
            ## Gets the sharingMessageAction property value. The sharingMessageAction property
            ## @return a calendar_sharing_message_action
            ## 
            def sharing_message_action
                return @sharing_message_action
            end
            ## 
            ## Sets the sharingMessageAction property value. The sharingMessageAction property
            ## @param value Value to set for the sharing_message_action property.
            ## @return a void
            ## 
            def sharing_message_action=(value)
                @sharing_message_action = value
            end
            ## 
            ## Gets the sharingMessageActions property value. The sharingMessageActions property
            ## @return a calendar_sharing_message_action
            ## 
            def sharing_message_actions
                return @sharing_message_actions
            end
            ## 
            ## Sets the sharingMessageActions property value. The sharingMessageActions property
            ## @param value Value to set for the sharing_message_actions property.
            ## @return a void
            ## 
            def sharing_message_actions=(value)
                @sharing_message_actions = value
            end
            ## 
            ## Gets the suggestedCalendarName property value. The suggestedCalendarName property
            ## @return a string
            ## 
            def suggested_calendar_name
                return @suggested_calendar_name
            end
            ## 
            ## Sets the suggestedCalendarName property value. The suggestedCalendarName property
            ## @param value Value to set for the suggested_calendar_name property.
            ## @return a void
            ## 
            def suggested_calendar_name=(value)
                @suggested_calendar_name = value
            end
        end
    end
end
