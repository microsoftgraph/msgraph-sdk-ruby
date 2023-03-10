require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ScheduleChangeRequest < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignedTo property
            @assigned_to
            ## 
            # The managerActionDateTime property
            @manager_action_date_time
            ## 
            # The managerActionMessage property
            @manager_action_message
            ## 
            # The managerUserId property
            @manager_user_id
            ## 
            # The senderDateTime property
            @sender_date_time
            ## 
            # The senderMessage property
            @sender_message
            ## 
            # The senderUserId property
            @sender_user_id
            ## 
            # The state property
            @state
            ## 
            ## Gets the assignedTo property value. The assignedTo property
            ## @return a schedule_change_request_actor
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. The assignedTo property
            ## @param value Value to set for the assigned_to property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Instantiates a new ScheduleChangeRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.scheduleChangeRequest"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a schedule_change_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.offerShiftRequest"
                            return OfferShiftRequest.new
                        when "#microsoft.graph.openShiftChangeRequest"
                            return OpenShiftChangeRequest.new
                        when "#microsoft.graph.swapShiftsChangeRequest"
                            return SwapShiftsChangeRequest.new
                        when "#microsoft.graph.timeOffRequest"
                            return TimeOffRequest.new
                    end
                end
                return ScheduleChangeRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedTo" => lambda {|n| @assigned_to = n.get_enum_value(MicrosoftGraph::Models::ScheduleChangeRequestActor) },
                    "managerActionDateTime" => lambda {|n| @manager_action_date_time = n.get_date_time_value() },
                    "managerActionMessage" => lambda {|n| @manager_action_message = n.get_string_value() },
                    "managerUserId" => lambda {|n| @manager_user_id = n.get_string_value() },
                    "senderDateTime" => lambda {|n| @sender_date_time = n.get_date_time_value() },
                    "senderMessage" => lambda {|n| @sender_message = n.get_string_value() },
                    "senderUserId" => lambda {|n| @sender_user_id = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::ScheduleChangeState) },
                })
            end
            ## 
            ## Gets the managerActionDateTime property value. The managerActionDateTime property
            ## @return a date_time
            ## 
            def manager_action_date_time
                return @manager_action_date_time
            end
            ## 
            ## Sets the managerActionDateTime property value. The managerActionDateTime property
            ## @param value Value to set for the manager_action_date_time property.
            ## @return a void
            ## 
            def manager_action_date_time=(value)
                @manager_action_date_time = value
            end
            ## 
            ## Gets the managerActionMessage property value. The managerActionMessage property
            ## @return a string
            ## 
            def manager_action_message
                return @manager_action_message
            end
            ## 
            ## Sets the managerActionMessage property value. The managerActionMessage property
            ## @param value Value to set for the manager_action_message property.
            ## @return a void
            ## 
            def manager_action_message=(value)
                @manager_action_message = value
            end
            ## 
            ## Gets the managerUserId property value. The managerUserId property
            ## @return a string
            ## 
            def manager_user_id
                return @manager_user_id
            end
            ## 
            ## Sets the managerUserId property value. The managerUserId property
            ## @param value Value to set for the manager_user_id property.
            ## @return a void
            ## 
            def manager_user_id=(value)
                @manager_user_id = value
            end
            ## 
            ## Gets the senderDateTime property value. The senderDateTime property
            ## @return a date_time
            ## 
            def sender_date_time
                return @sender_date_time
            end
            ## 
            ## Sets the senderDateTime property value. The senderDateTime property
            ## @param value Value to set for the sender_date_time property.
            ## @return a void
            ## 
            def sender_date_time=(value)
                @sender_date_time = value
            end
            ## 
            ## Gets the senderMessage property value. The senderMessage property
            ## @return a string
            ## 
            def sender_message
                return @sender_message
            end
            ## 
            ## Sets the senderMessage property value. The senderMessage property
            ## @param value Value to set for the sender_message property.
            ## @return a void
            ## 
            def sender_message=(value)
                @sender_message = value
            end
            ## 
            ## Gets the senderUserId property value. The senderUserId property
            ## @return a string
            ## 
            def sender_user_id
                return @sender_user_id
            end
            ## 
            ## Sets the senderUserId property value. The senderUserId property
            ## @param value Value to set for the sender_user_id property.
            ## @return a void
            ## 
            def sender_user_id=(value)
                @sender_user_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("assignedTo", @assigned_to)
                writer.write_string_value("managerActionMessage", @manager_action_message)
                writer.write_string_value("senderMessage", @sender_message)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a schedule_change_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
