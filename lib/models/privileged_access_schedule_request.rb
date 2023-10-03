require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrivilegedAccessScheduleRequest < MicrosoftGraph::Models::Request
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The action property
            @action
            ## 
            # The isValidationOnly property
            @is_validation_only
            ## 
            # The justification property
            @justification
            ## 
            # The scheduleInfo property
            @schedule_info
            ## 
            # The ticketInfo property
            @ticket_info
            ## 
            ## Gets the action property value. The action property
            ## @return a schedule_request_actions
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. The action property
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
            end
            ## 
            ## Instantiates a new privilegedAccessScheduleRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_schedule_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest"
                            return PrivilegedAccessGroupAssignmentScheduleRequest.new
                        when "#microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
                            return PrivilegedAccessGroupEligibilityScheduleRequest.new
                    end
                end
                return PrivilegedAccessScheduleRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraph::Models::ScheduleRequestActions) },
                    "isValidationOnly" => lambda {|n| @is_validation_only = n.get_boolean_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "scheduleInfo" => lambda {|n| @schedule_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RequestSchedule.create_from_discriminator_value(pn) }) },
                    "ticketInfo" => lambda {|n| @ticket_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TicketInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isValidationOnly property value. The isValidationOnly property
            ## @return a boolean
            ## 
            def is_validation_only
                return @is_validation_only
            end
            ## 
            ## Sets the isValidationOnly property value. The isValidationOnly property
            ## @param value Value to set for the isValidationOnly property.
            ## @return a void
            ## 
            def is_validation_only=(value)
                @is_validation_only = value
            end
            ## 
            ## Gets the justification property value. The justification property
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. The justification property
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the scheduleInfo property value. The scheduleInfo property
            ## @return a request_schedule
            ## 
            def schedule_info
                return @schedule_info
            end
            ## 
            ## Sets the scheduleInfo property value. The scheduleInfo property
            ## @param value Value to set for the scheduleInfo property.
            ## @return a void
            ## 
            def schedule_info=(value)
                @schedule_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("action", @action)
                writer.write_boolean_value("isValidationOnly", @is_validation_only)
                writer.write_string_value("justification", @justification)
                writer.write_object_value("scheduleInfo", @schedule_info)
                writer.write_object_value("ticketInfo", @ticket_info)
            end
            ## 
            ## Gets the ticketInfo property value. The ticketInfo property
            ## @return a ticket_info
            ## 
            def ticket_info
                return @ticket_info
            end
            ## 
            ## Sets the ticketInfo property value. The ticketInfo property
            ## @param value Value to set for the ticketInfo property.
            ## @return a void
            ## 
            def ticket_info=(value)
                @ticket_info = value
            end
        end
    end
end
