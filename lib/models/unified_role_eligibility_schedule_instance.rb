require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleEligibilityScheduleInstance < MicrosoftGraph::Models::UnifiedRoleScheduleInstanceBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The end date of the schedule instance.
            @end_date_time
            ## 
            # How the role eligibility is inherited. It can either be Inherited, Direct, or Group. It can further imply whether the unifiedRoleEligibilitySchedule can be managed by the caller. Supports $filter (eq, ne).
            @member_type
            ## 
            # The identifier of the unifiedRoleEligibilitySchedule object from which this instance was created. Supports $filter (eq, ne).
            @role_eligibility_schedule_id
            ## 
            # When this instance starts.
            @start_date_time
            ## 
            ## Instantiates a new unifiedRoleEligibilityScheduleInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_eligibility_schedule_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleEligibilityScheduleInstance.new
            end
            ## 
            ## Gets the endDateTime property value. The end date of the schedule instance.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The end date of the schedule instance.
            ## @param value Value to set for the end_date_time property.
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
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "memberType" => lambda {|n| @member_type = n.get_string_value() },
                    "roleEligibilityScheduleId" => lambda {|n| @role_eligibility_schedule_id = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the memberType property value. How the role eligibility is inherited. It can either be Inherited, Direct, or Group. It can further imply whether the unifiedRoleEligibilitySchedule can be managed by the caller. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def member_type
                return @member_type
            end
            ## 
            ## Sets the memberType property value. How the role eligibility is inherited. It can either be Inherited, Direct, or Group. It can further imply whether the unifiedRoleEligibilitySchedule can be managed by the caller. Supports $filter (eq, ne).
            ## @param value Value to set for the member_type property.
            ## @return a void
            ## 
            def member_type=(value)
                @member_type = value
            end
            ## 
            ## Gets the roleEligibilityScheduleId property value. The identifier of the unifiedRoleEligibilitySchedule object from which this instance was created. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def role_eligibility_schedule_id
                return @role_eligibility_schedule_id
            end
            ## 
            ## Sets the roleEligibilityScheduleId property value. The identifier of the unifiedRoleEligibilitySchedule object from which this instance was created. Supports $filter (eq, ne).
            ## @param value Value to set for the role_eligibility_schedule_id property.
            ## @return a void
            ## 
            def role_eligibility_schedule_id=(value)
                @role_eligibility_schedule_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_string_value("memberType", @member_type)
                writer.write_string_value("roleEligibilityScheduleId", @role_eligibility_schedule_id)
                writer.write_date_time_value("startDateTime", @start_date_time)
            end
            ## 
            ## Gets the startDateTime property value. When this instance starts.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. When this instance starts.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
        end
    end
end
