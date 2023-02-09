require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Schedule < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the schedule is enabled for the team. Required.
            @enabled
            ## 
            # The offerShiftRequests property
            @offer_shift_requests
            ## 
            # Indicates whether offer shift requests are enabled for the schedule.
            @offer_shift_requests_enabled
            ## 
            # The openShiftChangeRequests property
            @open_shift_change_requests
            ## 
            # The openShifts property
            @open_shifts
            ## 
            # Indicates whether open shifts are enabled for the schedule.
            @open_shifts_enabled
            ## 
            # The status of the schedule provisioning. The possible values are notStarted, running, completed, failed.
            @provision_status
            ## 
            # Additional information about why schedule provisioning failed.
            @provision_status_code
            ## 
            # The logical grouping of users in the schedule (usually by role).
            @scheduling_groups
            ## 
            # The shifts in the schedule.
            @shifts
            ## 
            # The swapShiftsChangeRequests property
            @swap_shifts_change_requests
            ## 
            # Indicates whether swap shifts requests are enabled for the schedule.
            @swap_shifts_requests_enabled
            ## 
            # Indicates whether time clock is enabled for the schedule.
            @time_clock_enabled
            ## 
            # The set of reasons for a time off in the schedule.
            @time_off_reasons
            ## 
            # The timeOffRequests property
            @time_off_requests
            ## 
            # Indicates whether time off requests are enabled for the schedule.
            @time_off_requests_enabled
            ## 
            # Indicates the time zone of the schedule team using tz database format. Required.
            @time_zone
            ## 
            # The instances of times off in the schedule.
            @times_off
            ## 
            # The workforceIntegrationIds property
            @workforce_integration_ids
            ## 
            ## Instantiates a new schedule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a schedule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Schedule.new
            end
            ## 
            ## Gets the enabled property value. Indicates whether the schedule is enabled for the team. Required.
            ## @return a boolean
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. Indicates whether the schedule is enabled for the team. Required.
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                    "offerShiftRequests" => lambda {|n| @offer_shift_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OfferShiftRequest.create_from_discriminator_value(pn) }) },
                    "offerShiftRequestsEnabled" => lambda {|n| @offer_shift_requests_enabled = n.get_boolean_value() },
                    "openShiftChangeRequests" => lambda {|n| @open_shift_change_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OpenShiftChangeRequest.create_from_discriminator_value(pn) }) },
                    "openShifts" => lambda {|n| @open_shifts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OpenShift.create_from_discriminator_value(pn) }) },
                    "openShiftsEnabled" => lambda {|n| @open_shifts_enabled = n.get_boolean_value() },
                    "provisionStatus" => lambda {|n| @provision_status = n.get_enum_value(MicrosoftGraph::Models::OperationStatus) },
                    "provisionStatusCode" => lambda {|n| @provision_status_code = n.get_string_value() },
                    "schedulingGroups" => lambda {|n| @scheduling_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SchedulingGroup.create_from_discriminator_value(pn) }) },
                    "shifts" => lambda {|n| @shifts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Shift.create_from_discriminator_value(pn) }) },
                    "swapShiftsChangeRequests" => lambda {|n| @swap_shifts_change_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SwapShiftsChangeRequest.create_from_discriminator_value(pn) }) },
                    "swapShiftsRequestsEnabled" => lambda {|n| @swap_shifts_requests_enabled = n.get_boolean_value() },
                    "timeClockEnabled" => lambda {|n| @time_clock_enabled = n.get_boolean_value() },
                    "timeOffReasons" => lambda {|n| @time_off_reasons = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TimeOffReason.create_from_discriminator_value(pn) }) },
                    "timeOffRequests" => lambda {|n| @time_off_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TimeOffRequest.create_from_discriminator_value(pn) }) },
                    "timeOffRequestsEnabled" => lambda {|n| @time_off_requests_enabled = n.get_boolean_value() },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
                    "timesOff" => lambda {|n| @times_off = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TimeOff.create_from_discriminator_value(pn) }) },
                    "workforceIntegrationIds" => lambda {|n| @workforce_integration_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the offerShiftRequests property value. The offerShiftRequests property
            ## @return a offer_shift_request
            ## 
            def offer_shift_requests
                return @offer_shift_requests
            end
            ## 
            ## Sets the offerShiftRequests property value. The offerShiftRequests property
            ## @param value Value to set for the offer_shift_requests property.
            ## @return a void
            ## 
            def offer_shift_requests=(value)
                @offer_shift_requests = value
            end
            ## 
            ## Gets the offerShiftRequestsEnabled property value. Indicates whether offer shift requests are enabled for the schedule.
            ## @return a boolean
            ## 
            def offer_shift_requests_enabled
                return @offer_shift_requests_enabled
            end
            ## 
            ## Sets the offerShiftRequestsEnabled property value. Indicates whether offer shift requests are enabled for the schedule.
            ## @param value Value to set for the offer_shift_requests_enabled property.
            ## @return a void
            ## 
            def offer_shift_requests_enabled=(value)
                @offer_shift_requests_enabled = value
            end
            ## 
            ## Gets the openShiftChangeRequests property value. The openShiftChangeRequests property
            ## @return a open_shift_change_request
            ## 
            def open_shift_change_requests
                return @open_shift_change_requests
            end
            ## 
            ## Sets the openShiftChangeRequests property value. The openShiftChangeRequests property
            ## @param value Value to set for the open_shift_change_requests property.
            ## @return a void
            ## 
            def open_shift_change_requests=(value)
                @open_shift_change_requests = value
            end
            ## 
            ## Gets the openShifts property value. The openShifts property
            ## @return a open_shift
            ## 
            def open_shifts
                return @open_shifts
            end
            ## 
            ## Sets the openShifts property value. The openShifts property
            ## @param value Value to set for the open_shifts property.
            ## @return a void
            ## 
            def open_shifts=(value)
                @open_shifts = value
            end
            ## 
            ## Gets the openShiftsEnabled property value. Indicates whether open shifts are enabled for the schedule.
            ## @return a boolean
            ## 
            def open_shifts_enabled
                return @open_shifts_enabled
            end
            ## 
            ## Sets the openShiftsEnabled property value. Indicates whether open shifts are enabled for the schedule.
            ## @param value Value to set for the open_shifts_enabled property.
            ## @return a void
            ## 
            def open_shifts_enabled=(value)
                @open_shifts_enabled = value
            end
            ## 
            ## Gets the provisionStatus property value. The status of the schedule provisioning. The possible values are notStarted, running, completed, failed.
            ## @return a operation_status
            ## 
            def provision_status
                return @provision_status
            end
            ## 
            ## Sets the provisionStatus property value. The status of the schedule provisioning. The possible values are notStarted, running, completed, failed.
            ## @param value Value to set for the provision_status property.
            ## @return a void
            ## 
            def provision_status=(value)
                @provision_status = value
            end
            ## 
            ## Gets the provisionStatusCode property value. Additional information about why schedule provisioning failed.
            ## @return a string
            ## 
            def provision_status_code
                return @provision_status_code
            end
            ## 
            ## Sets the provisionStatusCode property value. Additional information about why schedule provisioning failed.
            ## @param value Value to set for the provision_status_code property.
            ## @return a void
            ## 
            def provision_status_code=(value)
                @provision_status_code = value
            end
            ## 
            ## Gets the schedulingGroups property value. The logical grouping of users in the schedule (usually by role).
            ## @return a scheduling_group
            ## 
            def scheduling_groups
                return @scheduling_groups
            end
            ## 
            ## Sets the schedulingGroups property value. The logical grouping of users in the schedule (usually by role).
            ## @param value Value to set for the scheduling_groups property.
            ## @return a void
            ## 
            def scheduling_groups=(value)
                @scheduling_groups = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("enabled", @enabled)
                writer.write_collection_of_object_values("offerShiftRequests", @offer_shift_requests)
                writer.write_boolean_value("offerShiftRequestsEnabled", @offer_shift_requests_enabled)
                writer.write_collection_of_object_values("openShiftChangeRequests", @open_shift_change_requests)
                writer.write_collection_of_object_values("openShifts", @open_shifts)
                writer.write_boolean_value("openShiftsEnabled", @open_shifts_enabled)
                writer.write_collection_of_object_values("schedulingGroups", @scheduling_groups)
                writer.write_collection_of_object_values("shifts", @shifts)
                writer.write_collection_of_object_values("swapShiftsChangeRequests", @swap_shifts_change_requests)
                writer.write_boolean_value("swapShiftsRequestsEnabled", @swap_shifts_requests_enabled)
                writer.write_boolean_value("timeClockEnabled", @time_clock_enabled)
                writer.write_collection_of_object_values("timeOffReasons", @time_off_reasons)
                writer.write_collection_of_object_values("timeOffRequests", @time_off_requests)
                writer.write_boolean_value("timeOffRequestsEnabled", @time_off_requests_enabled)
                writer.write_string_value("timeZone", @time_zone)
                writer.write_collection_of_object_values("timesOff", @times_off)
                writer.write_collection_of_primitive_values("workforceIntegrationIds", @workforce_integration_ids)
            end
            ## 
            ## Gets the shifts property value. The shifts in the schedule.
            ## @return a shift
            ## 
            def shifts
                return @shifts
            end
            ## 
            ## Sets the shifts property value. The shifts in the schedule.
            ## @param value Value to set for the shifts property.
            ## @return a void
            ## 
            def shifts=(value)
                @shifts = value
            end
            ## 
            ## Gets the swapShiftsChangeRequests property value. The swapShiftsChangeRequests property
            ## @return a swap_shifts_change_request
            ## 
            def swap_shifts_change_requests
                return @swap_shifts_change_requests
            end
            ## 
            ## Sets the swapShiftsChangeRequests property value. The swapShiftsChangeRequests property
            ## @param value Value to set for the swap_shifts_change_requests property.
            ## @return a void
            ## 
            def swap_shifts_change_requests=(value)
                @swap_shifts_change_requests = value
            end
            ## 
            ## Gets the swapShiftsRequestsEnabled property value. Indicates whether swap shifts requests are enabled for the schedule.
            ## @return a boolean
            ## 
            def swap_shifts_requests_enabled
                return @swap_shifts_requests_enabled
            end
            ## 
            ## Sets the swapShiftsRequestsEnabled property value. Indicates whether swap shifts requests are enabled for the schedule.
            ## @param value Value to set for the swap_shifts_requests_enabled property.
            ## @return a void
            ## 
            def swap_shifts_requests_enabled=(value)
                @swap_shifts_requests_enabled = value
            end
            ## 
            ## Gets the timeClockEnabled property value. Indicates whether time clock is enabled for the schedule.
            ## @return a boolean
            ## 
            def time_clock_enabled
                return @time_clock_enabled
            end
            ## 
            ## Sets the timeClockEnabled property value. Indicates whether time clock is enabled for the schedule.
            ## @param value Value to set for the time_clock_enabled property.
            ## @return a void
            ## 
            def time_clock_enabled=(value)
                @time_clock_enabled = value
            end
            ## 
            ## Gets the timeOffReasons property value. The set of reasons for a time off in the schedule.
            ## @return a time_off_reason
            ## 
            def time_off_reasons
                return @time_off_reasons
            end
            ## 
            ## Sets the timeOffReasons property value. The set of reasons for a time off in the schedule.
            ## @param value Value to set for the time_off_reasons property.
            ## @return a void
            ## 
            def time_off_reasons=(value)
                @time_off_reasons = value
            end
            ## 
            ## Gets the timeOffRequests property value. The timeOffRequests property
            ## @return a time_off_request
            ## 
            def time_off_requests
                return @time_off_requests
            end
            ## 
            ## Sets the timeOffRequests property value. The timeOffRequests property
            ## @param value Value to set for the time_off_requests property.
            ## @return a void
            ## 
            def time_off_requests=(value)
                @time_off_requests = value
            end
            ## 
            ## Gets the timeOffRequestsEnabled property value. Indicates whether time off requests are enabled for the schedule.
            ## @return a boolean
            ## 
            def time_off_requests_enabled
                return @time_off_requests_enabled
            end
            ## 
            ## Sets the timeOffRequestsEnabled property value. Indicates whether time off requests are enabled for the schedule.
            ## @param value Value to set for the time_off_requests_enabled property.
            ## @return a void
            ## 
            def time_off_requests_enabled=(value)
                @time_off_requests_enabled = value
            end
            ## 
            ## Gets the timeZone property value. Indicates the time zone of the schedule team using tz database format. Required.
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. Indicates the time zone of the schedule team using tz database format. Required.
            ## @param value Value to set for the time_zone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
            ## 
            ## Gets the timesOff property value. The instances of times off in the schedule.
            ## @return a time_off
            ## 
            def times_off
                return @times_off
            end
            ## 
            ## Sets the timesOff property value. The instances of times off in the schedule.
            ## @param value Value to set for the times_off property.
            ## @return a void
            ## 
            def times_off=(value)
                @times_off = value
            end
            ## 
            ## Gets the workforceIntegrationIds property value. The workforceIntegrationIds property
            ## @return a string
            ## 
            def workforce_integration_ids
                return @workforce_integration_ids
            end
            ## 
            ## Sets the workforceIntegrationIds property value. The workforceIntegrationIds property
            ## @param value Value to set for the workforce_integration_ids property.
            ## @return a void
            ## 
            def workforce_integration_ids=(value)
                @workforce_integration_ids = value
            end
        end
    end
end
