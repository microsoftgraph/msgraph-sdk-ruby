require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleScheduleBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only property with details of the app-specific scope when the role eligibility or assignment is scoped to an app. Nullable.
            @app_scope
            ## 
            # Identifier of the app-specific scope when the assignment or eligibility is scoped to an app. The scope of an assignment or eligibility determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units.
            @app_scope_id
            ## 
            # When the schedule was created.
            @created_date_time
            ## 
            # Identifier of the object through which this schedule was created.
            @created_using
            ## 
            # The directory object that is the scope of the role eligibility or assignment. Read-only.
            @directory_scope
            ## 
            # Identifier of the directory object representing the scope of the assignment or eligibility. The scope of an assignment or eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only.
            @directory_scope_id
            ## 
            # When the schedule was last modified.
            @modified_date_time
            ## 
            # The principal that's getting a role assignment or that's eligible for a role through the request.
            @principal
            ## 
            # Identifier of the principal that has been granted the role assignment or eligibility.
            @principal_id
            ## 
            # Detailed information for the roleDefinition object that is referenced through the roleDefinitionId property.
            @role_definition
            ## 
            # Identifier of the unifiedRoleDefinition object that is being assigned to the principal or that a principal is eligible for.
            @role_definition_id
            ## 
            # The status of the role assignment or eligibility request.
            @status
            ## 
            ## Gets the appScope property value. Read-only property with details of the app-specific scope when the role eligibility or assignment is scoped to an app. Nullable.
            ## @return a app_scope
            ## 
            def app_scope
                return @app_scope
            end
            ## 
            ## Sets the appScope property value. Read-only property with details of the app-specific scope when the role eligibility or assignment is scoped to an app. Nullable.
            ## @param value Value to set for the app_scope property.
            ## @return a void
            ## 
            def app_scope=(value)
                @app_scope = value
            end
            ## 
            ## Gets the appScopeId property value. Identifier of the app-specific scope when the assignment or eligibility is scoped to an app. The scope of an assignment or eligibility determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units.
            ## @return a string
            ## 
            def app_scope_id
                return @app_scope_id
            end
            ## 
            ## Sets the appScopeId property value. Identifier of the app-specific scope when the assignment or eligibility is scoped to an app. The scope of an assignment or eligibility determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units.
            ## @param value Value to set for the app_scope_id property.
            ## @return a void
            ## 
            def app_scope_id=(value)
                @app_scope_id = value
            end
            ## 
            ## Instantiates a new unifiedRoleScheduleBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. When the schedule was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. When the schedule was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Gets the createdUsing property value. Identifier of the object through which this schedule was created.
            ## @return a string
            ## 
            def created_using
                return @created_using
            end
            ## 
            ## Sets the createdUsing property value. Identifier of the object through which this schedule was created.
            ## @param value Value to set for the created_using property.
            ## @return a void
            ## 
            def created_using=(value)
                @created_using = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_schedule_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.unifiedRoleAssignmentSchedule"
                            return UnifiedRoleAssignmentSchedule.new
                        when "#microsoft.graph.unifiedRoleEligibilitySchedule"
                            return UnifiedRoleEligibilitySchedule.new
                    end
                end
                return UnifiedRoleScheduleBase.new
            end
            ## 
            ## Gets the directoryScope property value. The directory object that is the scope of the role eligibility or assignment. Read-only.
            ## @return a directory_object
            ## 
            def directory_scope
                return @directory_scope
            end
            ## 
            ## Sets the directoryScope property value. The directory object that is the scope of the role eligibility or assignment. Read-only.
            ## @param value Value to set for the directory_scope property.
            ## @return a void
            ## 
            def directory_scope=(value)
                @directory_scope = value
            end
            ## 
            ## Gets the directoryScopeId property value. Identifier of the directory object representing the scope of the assignment or eligibility. The scope of an assignment or eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only.
            ## @return a string
            ## 
            def directory_scope_id
                return @directory_scope_id
            end
            ## 
            ## Sets the directoryScopeId property value. Identifier of the directory object representing the scope of the assignment or eligibility. The scope of an assignment or eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only.
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
                    "appScope" => lambda {|n| @app_scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppScope.create_from_discriminator_value(pn) }) },
                    "appScopeId" => lambda {|n| @app_scope_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "createdUsing" => lambda {|n| @created_using = n.get_string_value() },
                    "directoryScope" => lambda {|n| @directory_scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "directoryScopeId" => lambda {|n| @directory_scope_id = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                    "roleDefinition" => lambda {|n| @role_definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleDefinition.create_from_discriminator_value(pn) }) },
                    "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the modifiedDateTime property value. When the schedule was last modified.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. When the schedule was last modified.
            ## @param value Value to set for the modified_date_time property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Gets the principal property value. The principal that's getting a role assignment or that's eligible for a role through the request.
            ## @return a directory_object
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. The principal that's getting a role assignment or that's eligible for a role through the request.
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalId property value. Identifier of the principal that has been granted the role assignment or eligibility.
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. Identifier of the principal that has been granted the role assignment or eligibility.
            ## @param value Value to set for the principal_id property.
            ## @return a void
            ## 
            def principal_id=(value)
                @principal_id = value
            end
            ## 
            ## Gets the roleDefinition property value. Detailed information for the roleDefinition object that is referenced through the roleDefinitionId property.
            ## @return a unified_role_definition
            ## 
            def role_definition
                return @role_definition
            end
            ## 
            ## Sets the roleDefinition property value. Detailed information for the roleDefinition object that is referenced through the roleDefinitionId property.
            ## @param value Value to set for the role_definition property.
            ## @return a void
            ## 
            def role_definition=(value)
                @role_definition = value
            end
            ## 
            ## Gets the roleDefinitionId property value. Identifier of the unifiedRoleDefinition object that is being assigned to the principal or that a principal is eligible for.
            ## @return a string
            ## 
            def role_definition_id
                return @role_definition_id
            end
            ## 
            ## Sets the roleDefinitionId property value. Identifier of the unifiedRoleDefinition object that is being assigned to the principal or that a principal is eligible for.
            ## @param value Value to set for the role_definition_id property.
            ## @return a void
            ## 
            def role_definition_id=(value)
                @role_definition_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("appScope", @app_scope)
                writer.write_string_value("appScopeId", @app_scope_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("createdUsing", @created_using)
                writer.write_object_value("directoryScope", @directory_scope)
                writer.write_string_value("directoryScopeId", @directory_scope_id)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
                writer.write_object_value("roleDefinition", @role_definition)
                writer.write_string_value("roleDefinitionId", @role_definition_id)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the role assignment or eligibility request.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the role assignment or eligibility request.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
