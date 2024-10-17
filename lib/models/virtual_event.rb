require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEvent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identity information for the creator of the virtual event. Inherited from virtualEvent.
            @created_by
            ## 
            # A description of the virtual event.
            @description
            ## 
            # The display name of the virtual event.
            @display_name
            ## 
            # The end time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see Get-TimeZone.
            @end_date_time
            ## 
            # The virtual event presenters.
            @presenters
            ## 
            # The sessions for the virtual event.
            @sessions
            ## 
            # The virtual event settings.
            @settings
            ## 
            # Start time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see Get-TimeZone.
            @start_date_time
            ## 
            # The status of the virtual event. The possible values are: draft, published, canceled, and unknownFutureValue.
            @status
            ## 
            ## Instantiates a new VirtualEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The identity information for the creator of the virtual event. Inherited from virtualEvent.
            ## @return a communications_identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The identity information for the creator of the virtual event. Inherited from virtualEvent.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.virtualEventTownhall"
                            return VirtualEventTownhall.new
                        when "#microsoft.graph.virtualEventWebinar"
                            return VirtualEventWebinar.new
                    end
                end
                return VirtualEvent.new
            end
            ## 
            ## Gets the description property value. A description of the virtual event.
            ## @return a item_body
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A description of the virtual event.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the virtual event.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the virtual event.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDateTime property value. The end time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see Get-TimeZone.
            ## @return a date_time_time_zone
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The end time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see Get-TimeZone.
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CommunicationsIdentitySet.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "presenters" => lambda {|n| @presenters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::VirtualEventPresenter.create_from_discriminator_value(pn) }) },
                    "sessions" => lambda {|n| @sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::VirtualEventSession.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::VirtualEventSettings.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::VirtualEventStatus) },
                })
            end
            ## 
            ## Gets the presenters property value. The virtual event presenters.
            ## @return a virtual_event_presenter
            ## 
            def presenters
                return @presenters
            end
            ## 
            ## Sets the presenters property value. The virtual event presenters.
            ## @param value Value to set for the presenters property.
            ## @return a void
            ## 
            def presenters=(value)
                @presenters = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("createdBy", @created_by)
                writer.write_object_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("endDateTime", @end_date_time)
                writer.write_collection_of_object_values("presenters", @presenters)
                writer.write_collection_of_object_values("sessions", @sessions)
                writer.write_object_value("settings", @settings)
                writer.write_object_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the sessions property value. The sessions for the virtual event.
            ## @return a virtual_event_session
            ## 
            def sessions
                return @sessions
            end
            ## 
            ## Sets the sessions property value. The sessions for the virtual event.
            ## @param value Value to set for the sessions property.
            ## @return a void
            ## 
            def sessions=(value)
                @sessions = value
            end
            ## 
            ## Gets the settings property value. The virtual event settings.
            ## @return a virtual_event_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The virtual event settings.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the startDateTime property value. Start time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see Get-TimeZone.
            ## @return a date_time_time_zone
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Start time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see Get-TimeZone.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The status of the virtual event. The possible values are: draft, published, canceled, and unknownFutureValue.
            ## @return a virtual_event_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the virtual event. The possible values are: draft, published, canceled, and unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
