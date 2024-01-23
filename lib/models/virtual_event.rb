require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEvent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identity information for the creator of the virtual event. Inherited from virtualEvent.
            @created_by
            ## 
            # Description of the virtual event.
            @description
            ## 
            # Display name of the virtual event.
            @display_name
            ## 
            # End time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows.
            @end_date_time
            ## 
            # Sessions for the virtual event.
            @sessions
            ## 
            # Start time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows.
            @start_date_time
            ## 
            # Status of the virtual event. The possible values are: draft, published, canceled, unknownFutureValue.
            @status
            ## 
            ## Instantiates a new virtualEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity information for the creator of the virtual event. Inherited from virtualEvent.
            ## @return a communications_identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity information for the creator of the virtual event. Inherited from virtualEvent.
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
                        when "#microsoft.graph.virtualEventWebinar"
                            return VirtualEventWebinar.new
                    end
                end
                return VirtualEvent.new
            end
            ## 
            ## Gets the description property value. Description of the virtual event.
            ## @return a item_body
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the virtual event.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name of the virtual event.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the virtual event.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDateTime property value. End time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows.
            ## @return a date_time_time_zone
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. End time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows.
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
                    "sessions" => lambda {|n| @sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::VirtualEventSession.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::VirtualEventStatus) },
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
                writer.write_object_value("createdBy", @created_by)
                writer.write_object_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("endDateTime", @end_date_time)
                writer.write_collection_of_object_values("sessions", @sessions)
                writer.write_object_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the sessions property value. Sessions for the virtual event.
            ## @return a virtual_event_session
            ## 
            def sessions
                return @sessions
            end
            ## 
            ## Sets the sessions property value. Sessions for the virtual event.
            ## @param value Value to set for the sessions property.
            ## @return a void
            ## 
            def sessions=(value)
                @sessions = value
            end
            ## 
            ## Gets the startDateTime property value. Start time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows.
            ## @return a date_time_time_zone
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Start time of the virtual event. The timeZone property can be set to any of the time zones currently supported by Windows.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. Status of the virtual event. The possible values are: draft, published, canceled, unknownFutureValue.
            ## @return a virtual_event_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the virtual event. The possible values are: draft, published, canceled, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
