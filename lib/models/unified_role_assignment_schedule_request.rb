require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleAssignmentScheduleRequest < MicrosoftGraph::Models::Request
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the type of the operation on the role assignment request. The possible values are: adminAssign, adminUpdate, adminRemove, selfActivate, selfDeactivate, adminExtend, adminRenew, selfExtend, selfRenew, unknownFutureValue. adminAssign: For administrators to assign roles to principals.adminRemove: For administrators to remove principals from roles. adminUpdate: For administrators to change existing role assignments.adminExtend: For administrators to extend expiring assignments.adminRenew: For administrators to renew expired assignments.selfActivate: For principals to activate their assignments.selfDeactivate: For principals to deactivate their active assignments.selfExtend: For principals to request to extend their expiring assignments.selfRenew: For principals to request to renew their expired assignments.
            @action
            ## 
            # If the request is from an eligible administrator to activate a role, this parameter will show the related eligible assignment for that activation. Otherwise, it's null. Supports $expand.
            @activated_using
            ## 
            # Read-only property with details of the app-specific scope when the assignment is scoped to an app. Nullable. Supports $expand.
            @app_scope
            ## 
            # Identifier of the app-specific scope when the assignment is scoped to an app. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, ne, and on null values).
            @app_scope_id
            ## 
            # The directory object that is the scope of the assignment. Read-only. Supports $expand.
            @directory_scope
            ## 
            # Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, ne, and on null values).
            @directory_scope_id
            ## 
            # Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.
            @is_validation_only
            ## 
            # A message provided by users and administrators when create they create the unifiedRoleAssignmentScheduleRequest object.
            @justification
            ## 
            # The principal that's getting a role assignment through the request. Supports $expand.
            @principal
            ## 
            # Identifier of the principal that has been granted the assignment. Can be a user, role-assignable group, or a service principal. Supports $filter (eq, ne).
            @principal_id
            ## 
            # Detailed information for the unifiedRoleDefinition object that is referenced through the roleDefinitionId property. Supports $expand.
            @role_definition
            ## 
            # Identifier of the unifiedRoleDefinition object that is being assigned to the principal. Supports $filter (eq, ne).
            @role_definition_id
            ## 
            # The period of the role assignment. Recurring schedules are currently unsupported.
            @schedule_info
            ## 
            # The schedule for an eligible role assignment that is referenced through the targetScheduleId property. Supports $expand.
            @target_schedule
            ## 
            # Identifier of the schedule object that's linked to the assignment request. Supports $filter (eq, ne).
            @target_schedule_id
            ## 
            # Ticket details linked to the role assignment request including details of the ticket number and ticket system.
            @ticket_info
            ## 
            ## Gets the action property value. Represents the type of the operation on the role assignment request. The possible values are: adminAssign, adminUpdate, adminRemove, selfActivate, selfDeactivate, adminExtend, adminRenew, selfExtend, selfRenew, unknownFutureValue. adminAssign: For administrators to assign roles to principals.adminRemove: For administrators to remove principals from roles. adminUpdate: For administrators to change existing role assignments.adminExtend: For administrators to extend expiring assignments.adminRenew: For administrators to renew expired assignments.selfActivate: For principals to activate their assignments.selfDeactivate: For principals to deactivate their active assignments.selfExtend: For principals to request to extend their expiring assignments.selfRenew: For principals to request to renew their expired assignments.
            ## @return a unified_role_schedule_request_actions
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. Represents the type of the operation on the role assignment request. The possible values are: adminAssign, adminUpdate, adminRemove, selfActivate, selfDeactivate, adminExtend, adminRenew, selfExtend, selfRenew, unknownFutureValue. adminAssign: For administrators to assign roles to principals.adminRemove: For administrators to remove principals from roles. adminUpdate: For administrators to change existing role assignments.adminExtend: For administrators to extend expiring assignments.adminRenew: For administrators to renew expired assignments.selfActivate: For principals to activate their assignments.selfDeactivate: For principals to deactivate their active assignments.selfExtend: For principals to request to extend their expiring assignments.selfRenew: For principals to request to renew their expired assignments.
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
            end
            ## 
            ## Gets the activatedUsing property value. If the request is from an eligible administrator to activate a role, this parameter will show the related eligible assignment for that activation. Otherwise, it's null. Supports $expand.
            ## @return a unified_role_eligibility_schedule
            ## 
            def activated_using
                return @activated_using
            end
            ## 
            ## Sets the activatedUsing property value. If the request is from an eligible administrator to activate a role, this parameter will show the related eligible assignment for that activation. Otherwise, it's null. Supports $expand.
            ## @param value Value to set for the activated_using property.
            ## @return a void
            ## 
            def activated_using=(value)
                @activated_using = value
            end
            ## 
            ## Gets the appScope property value. Read-only property with details of the app-specific scope when the assignment is scoped to an app. Nullable. Supports $expand.
            ## @return a app_scope
            ## 
            def app_scope
                return @app_scope
            end
            ## 
            ## Sets the appScope property value. Read-only property with details of the app-specific scope when the assignment is scoped to an app. Nullable. Supports $expand.
            ## @param value Value to set for the app_scope property.
            ## @return a void
            ## 
            def app_scope=(value)
                @app_scope = value
            end
            ## 
            ## Gets the appScopeId property value. Identifier of the app-specific scope when the assignment is scoped to an app. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, ne, and on null values).
            ## @return a string
            ## 
            def app_scope_id
                return @app_scope_id
            end
            ## 
            ## Sets the appScopeId property value. Identifier of the app-specific scope when the assignment is scoped to an app. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Supports $filter (eq, ne, and on null values).
            ## @param value Value to set for the app_scope_id property.
            ## @return a void
            ## 
            def app_scope_id=(value)
                @app_scope_id = value
            end
            ## 
            ## Instantiates a new UnifiedRoleAssignmentScheduleRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_assignment_schedule_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleAssignmentScheduleRequest.new
            end
            ## 
            ## Gets the directoryScope property value. The directory object that is the scope of the assignment. Read-only. Supports $expand.
            ## @return a directory_object
            ## 
            def directory_scope
                return @directory_scope
            end
            ## 
            ## Sets the directoryScope property value. The directory object that is the scope of the assignment. Read-only. Supports $expand.
            ## @param value Value to set for the directory_scope property.
            ## @return a void
            ## 
            def directory_scope=(value)
                @directory_scope = value
            end
            ## 
            ## Gets the directoryScopeId property value. Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, ne, and on null values).
            ## @return a string
            ## 
            def directory_scope_id
                return @directory_scope_id
            end
            ## 
            ## Sets the directoryScopeId property value. Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Supports $filter (eq, ne, and on null values).
            ## @param value Value to set for the directory_scope_id property.
            ## @return a void
            ## 
            def directory_scope_id=(value)
                @directory_scope_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraph::Models::UnifiedRoleScheduleRequestActions) },
                    "activatedUsing" => lambda {|n| @activated_using = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleEligibilitySchedule.create_from_discriminator_value(pn) }) },
                    "appScope" => lambda {|n| @app_scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppScope.create_from_discriminator_value(pn) }) },
                    "appScopeId" => lambda {|n| @app_scope_id = n.get_string_value() },
                    "directoryScope" => lambda {|n| @directory_scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "directoryScopeId" => lambda {|n| @directory_scope_id = n.get_string_value() },
                    "isValidationOnly" => lambda {|n| @is_validation_only = n.get_boolean_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                    "roleDefinition" => lambda {|n| @role_definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleDefinition.create_from_discriminator_value(pn) }) },
                    "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                    "scheduleInfo" => lambda {|n| @schedule_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RequestSchedule.create_from_discriminator_value(pn) }) },
                    "targetSchedule" => lambda {|n| @target_schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleAssignmentSchedule.create_from_discriminator_value(pn) }) },
                    "targetScheduleId" => lambda {|n| @target_schedule_id = n.get_string_value() },
                    "ticketInfo" => lambda {|n| @ticket_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TicketInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isValidationOnly property value. Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.
            ## @return a boolean
            ## 
            def is_validation_only
                return @is_validation_only
            end
            ## 
            ## Sets the isValidationOnly property value. Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.
            ## @param value Value to set for the is_validation_only property.
            ## @return a void
            ## 
            def is_validation_only=(value)
                @is_validation_only = value
            end
            ## 
            ## Gets the justification property value. A message provided by users and administrators when create they create the unifiedRoleAssignmentScheduleRequest object.
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. A message provided by users and administrators when create they create the unifiedRoleAssignmentScheduleRequest object.
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the principal property value. The principal that's getting a role assignment through the request. Supports $expand.
            ## @return a directory_object
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. The principal that's getting a role assignment through the request. Supports $expand.
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalId property value. Identifier of the principal that has been granted the assignment. Can be a user, role-assignable group, or a service principal. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. Identifier of the principal that has been granted the assignment. Can be a user, role-assignable group, or a service principal. Supports $filter (eq, ne).
            ## @param value Value to set for the principal_id property.
            ## @return a void
            ## 
            def principal_id=(value)
                @principal_id = value
            end
            ## 
            ## Gets the roleDefinition property value. Detailed information for the unifiedRoleDefinition object that is referenced through the roleDefinitionId property. Supports $expand.
            ## @return a unified_role_definition
            ## 
            def role_definition
                return @role_definition
            end
            ## 
            ## Sets the roleDefinition property value. Detailed information for the unifiedRoleDefinition object that is referenced through the roleDefinitionId property. Supports $expand.
            ## @param value Value to set for the role_definition property.
            ## @return a void
            ## 
            def role_definition=(value)
                @role_definition = value
            end
            ## 
            ## Gets the roleDefinitionId property value. Identifier of the unifiedRoleDefinition object that is being assigned to the principal. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def role_definition_id
                return @role_definition_id
            end
            ## 
            ## Sets the roleDefinitionId property value. Identifier of the unifiedRoleDefinition object that is being assigned to the principal. Supports $filter (eq, ne).
            ## @param value Value to set for the role_definition_id property.
            ## @return a void
            ## 
            def role_definition_id=(value)
                @role_definition_id = value
            end
            ## 
            ## Gets the scheduleInfo property value. The period of the role assignment. Recurring schedules are currently unsupported.
            ## @return a request_schedule
            ## 
            def schedule_info
                return @schedule_info
            end
            ## 
            ## Sets the scheduleInfo property value. The period of the role assignment. Recurring schedules are currently unsupported.
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
                writer.write_enum_value("action", @action)
                writer.write_object_value("activatedUsing", @activated_using)
                writer.write_object_value("appScope", @app_scope)
                writer.write_string_value("appScopeId", @app_scope_id)
                writer.write_object_value("directoryScope", @directory_scope)
                writer.write_string_value("directoryScopeId", @directory_scope_id)
                writer.write_boolean_value("isValidationOnly", @is_validation_only)
                writer.write_string_value("justification", @justification)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
                writer.write_object_value("roleDefinition", @role_definition)
                writer.write_string_value("roleDefinitionId", @role_definition_id)
                writer.write_object_value("scheduleInfo", @schedule_info)
                writer.write_object_value("targetSchedule", @target_schedule)
                writer.write_string_value("targetScheduleId", @target_schedule_id)
                writer.write_object_value("ticketInfo", @ticket_info)
            end
            ## 
            ## Gets the targetSchedule property value. The schedule for an eligible role assignment that is referenced through the targetScheduleId property. Supports $expand.
            ## @return a unified_role_assignment_schedule
            ## 
            def target_schedule
                return @target_schedule
            end
            ## 
            ## Sets the targetSchedule property value. The schedule for an eligible role assignment that is referenced through the targetScheduleId property. Supports $expand.
            ## @param value Value to set for the target_schedule property.
            ## @return a void
            ## 
            def target_schedule=(value)
                @target_schedule = value
            end
            ## 
            ## Gets the targetScheduleId property value. Identifier of the schedule object that's linked to the assignment request. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def target_schedule_id
                return @target_schedule_id
            end
            ## 
            ## Sets the targetScheduleId property value. Identifier of the schedule object that's linked to the assignment request. Supports $filter (eq, ne).
            ## @param value Value to set for the target_schedule_id property.
            ## @return a void
            ## 
            def target_schedule_id=(value)
                @target_schedule_id = value
            end
            ## 
            ## Gets the ticketInfo property value. Ticket details linked to the role assignment request including details of the ticket number and ticket system.
            ## @return a ticket_info
            ## 
            def ticket_info
                return @ticket_info
            end
            ## 
            ## Sets the ticketInfo property value. Ticket details linked to the role assignment request including details of the ticket number and ticket system.
            ## @param value Value to set for the ticket_info property.
            ## @return a void
            ## 
            def ticket_info=(value)
                @ticket_info = value
            end
        end
    end
end
