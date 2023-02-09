require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleEligibilitySchedule < MicrosoftGraph::Models::UnifiedRoleScheduleBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # How the role eligibility is inherited. It can either be Inherited, Direct, or Group. It can further imply whether the unifiedRoleEligibilitySchedule can be managed by the caller. Supports $filter (eq, ne).
            @member_type
            ## 
            # The period of the role eligibility.
            @schedule_info
            ## 
            ## Instantiates a new unifiedRoleEligibilitySchedule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_eligibility_schedule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleEligibilitySchedule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "memberType" => lambda {|n| @member_type = n.get_string_value() },
                    "scheduleInfo" => lambda {|n| @schedule_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RequestSchedule.create_from_discriminator_value(pn) }) },
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
            ## Gets the scheduleInfo property value. The period of the role eligibility.
            ## @return a request_schedule
            ## 
            def schedule_info
                return @schedule_info
            end
            ## 
            ## Sets the scheduleInfo property value. The period of the role eligibility.
            ## @param value Value to set for the schedule_info property.
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
                writer.write_string_value("memberType", @member_type)
                writer.write_object_value("scheduleInfo", @schedule_info)
            end
        end
    end
end
