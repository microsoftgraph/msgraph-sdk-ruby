require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RbacApplication < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Instances for active role assignments.
            @role_assignment_schedule_instances
            ## 
            # Requests for active role assignments to principals through PIM.
            @role_assignment_schedule_requests
            ## 
            # Schedules for active role assignment operations.
            @role_assignment_schedules
            ## 
            # Resource to grant access to users or groups.
            @role_assignments
            ## 
            # Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
            @role_definitions
            ## 
            # Instances for role eligibility requests.
            @role_eligibility_schedule_instances
            ## 
            # Requests for role eligibilities for principals through PIM.
            @role_eligibility_schedule_requests
            ## 
            # Schedules for role eligibility operations.
            @role_eligibility_schedules
            ## 
            ## Instantiates a new RbacApplication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a rbac_application
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RbacApplication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "roleAssignmentScheduleInstances" => lambda {|n| @role_assignment_schedule_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleAssignmentScheduleInstance.create_from_discriminator_value(pn) }) },
                    "roleAssignmentScheduleRequests" => lambda {|n| @role_assignment_schedule_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleAssignmentScheduleRequest.create_from_discriminator_value(pn) }) },
                    "roleAssignmentSchedules" => lambda {|n| @role_assignment_schedules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleAssignmentSchedule.create_from_discriminator_value(pn) }) },
                    "roleAssignments" => lambda {|n| @role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleAssignment.create_from_discriminator_value(pn) }) },
                    "roleDefinitions" => lambda {|n| @role_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleDefinition.create_from_discriminator_value(pn) }) },
                    "roleEligibilityScheduleInstances" => lambda {|n| @role_eligibility_schedule_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleEligibilityScheduleInstance.create_from_discriminator_value(pn) }) },
                    "roleEligibilityScheduleRequests" => lambda {|n| @role_eligibility_schedule_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleEligibilityScheduleRequest.create_from_discriminator_value(pn) }) },
                    "roleEligibilitySchedules" => lambda {|n| @role_eligibility_schedules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleEligibilitySchedule.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the roleAssignmentScheduleInstances property value. Instances for active role assignments.
            ## @return a unified_role_assignment_schedule_instance
            ## 
            def role_assignment_schedule_instances
                return @role_assignment_schedule_instances
            end
            ## 
            ## Sets the roleAssignmentScheduleInstances property value. Instances for active role assignments.
            ## @param value Value to set for the role_assignment_schedule_instances property.
            ## @return a void
            ## 
            def role_assignment_schedule_instances=(value)
                @role_assignment_schedule_instances = value
            end
            ## 
            ## Gets the roleAssignmentScheduleRequests property value. Requests for active role assignments to principals through PIM.
            ## @return a unified_role_assignment_schedule_request
            ## 
            def role_assignment_schedule_requests
                return @role_assignment_schedule_requests
            end
            ## 
            ## Sets the roleAssignmentScheduleRequests property value. Requests for active role assignments to principals through PIM.
            ## @param value Value to set for the role_assignment_schedule_requests property.
            ## @return a void
            ## 
            def role_assignment_schedule_requests=(value)
                @role_assignment_schedule_requests = value
            end
            ## 
            ## Gets the roleAssignmentSchedules property value. Schedules for active role assignment operations.
            ## @return a unified_role_assignment_schedule
            ## 
            def role_assignment_schedules
                return @role_assignment_schedules
            end
            ## 
            ## Sets the roleAssignmentSchedules property value. Schedules for active role assignment operations.
            ## @param value Value to set for the role_assignment_schedules property.
            ## @return a void
            ## 
            def role_assignment_schedules=(value)
                @role_assignment_schedules = value
            end
            ## 
            ## Gets the roleAssignments property value. Resource to grant access to users or groups.
            ## @return a unified_role_assignment
            ## 
            def role_assignments
                return @role_assignments
            end
            ## 
            ## Sets the roleAssignments property value. Resource to grant access to users or groups.
            ## @param value Value to set for the role_assignments property.
            ## @return a void
            ## 
            def role_assignments=(value)
                @role_assignments = value
            end
            ## 
            ## Gets the roleDefinitions property value. Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
            ## @return a unified_role_definition
            ## 
            def role_definitions
                return @role_definitions
            end
            ## 
            ## Sets the roleDefinitions property value. Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles.
            ## @param value Value to set for the role_definitions property.
            ## @return a void
            ## 
            def role_definitions=(value)
                @role_definitions = value
            end
            ## 
            ## Gets the roleEligibilityScheduleInstances property value. Instances for role eligibility requests.
            ## @return a unified_role_eligibility_schedule_instance
            ## 
            def role_eligibility_schedule_instances
                return @role_eligibility_schedule_instances
            end
            ## 
            ## Sets the roleEligibilityScheduleInstances property value. Instances for role eligibility requests.
            ## @param value Value to set for the role_eligibility_schedule_instances property.
            ## @return a void
            ## 
            def role_eligibility_schedule_instances=(value)
                @role_eligibility_schedule_instances = value
            end
            ## 
            ## Gets the roleEligibilityScheduleRequests property value. Requests for role eligibilities for principals through PIM.
            ## @return a unified_role_eligibility_schedule_request
            ## 
            def role_eligibility_schedule_requests
                return @role_eligibility_schedule_requests
            end
            ## 
            ## Sets the roleEligibilityScheduleRequests property value. Requests for role eligibilities for principals through PIM.
            ## @param value Value to set for the role_eligibility_schedule_requests property.
            ## @return a void
            ## 
            def role_eligibility_schedule_requests=(value)
                @role_eligibility_schedule_requests = value
            end
            ## 
            ## Gets the roleEligibilitySchedules property value. Schedules for role eligibility operations.
            ## @return a unified_role_eligibility_schedule
            ## 
            def role_eligibility_schedules
                return @role_eligibility_schedules
            end
            ## 
            ## Sets the roleEligibilitySchedules property value. Schedules for role eligibility operations.
            ## @param value Value to set for the role_eligibility_schedules property.
            ## @return a void
            ## 
            def role_eligibility_schedules=(value)
                @role_eligibility_schedules = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("roleAssignmentScheduleInstances", @role_assignment_schedule_instances)
                writer.write_collection_of_object_values("roleAssignmentScheduleRequests", @role_assignment_schedule_requests)
                writer.write_collection_of_object_values("roleAssignmentSchedules", @role_assignment_schedules)
                writer.write_collection_of_object_values("roleAssignments", @role_assignments)
                writer.write_collection_of_object_values("roleDefinitions", @role_definitions)
                writer.write_collection_of_object_values("roleEligibilityScheduleInstances", @role_eligibility_schedule_instances)
                writer.write_collection_of_object_values("roleEligibilityScheduleRequests", @role_eligibility_schedule_requests)
                writer.write_collection_of_object_values("roleEligibilitySchedules", @role_eligibility_schedules)
            end
        end
    end
end
