require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleAssignment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Supports $expand.
            @app_scope
            ## 
            # Identifier of the app specific scope when the assignment scope is app specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by a resource application only. For the entitlement management provider, use this property to specify a catalog, for example /AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997. Supports $filter (eq, in). For example /roleManagement/entitlementManagement/roleAssignments?$filter=appScopeId eq '/AccessPackageCatalog/{catalog id}'.
            @app_scope_id
            ## 
            # The condition property
            @condition
            ## 
            # The directory object that is the scope of the assignment. Read-only. Supports $expand.
            @directory_scope
            ## 
            # Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications, unlike app scopes that are defined and understood by a resource application only. Supports $filter (eq, in).
            @directory_scope_id
            ## 
            # Referencing the assigned principal. Read-only. Supports $expand.
            @principal
            ## 
            # Identifier of the principal to which the assignment is granted. Supported principals are users, role-assignable groups, and service principals. Supports $filter (eq, in).
            @principal_id
            ## 
            # The roleDefinition the assignment is for.  Supports $expand.
            @role_definition
            ## 
            # Identifier of the unifiedRoleDefinition the assignment is for. Read-only. Supports $filter (eq, in).
            @role_definition_id
            ## 
            ## Gets the appScope property value. Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Supports $expand.
            ## @return a app_scope
            ## 
            def app_scope
                return @app_scope
            end
            ## 
            ## Sets the appScope property value. Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Supports $expand.
            ## @param value Value to set for the appScope property.
            ## @return a void
            ## 
            def app_scope=(value)
                @app_scope = value
            end
            ## 
            ## Gets the appScopeId property value. Identifier of the app specific scope when the assignment scope is app specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by a resource application only. For the entitlement management provider, use this property to specify a catalog, for example /AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997. Supports $filter (eq, in). For example /roleManagement/entitlementManagement/roleAssignments?$filter=appScopeId eq '/AccessPackageCatalog/{catalog id}'.
            ## @return a string
            ## 
            def app_scope_id
                return @app_scope_id
            end
            ## 
            ## Sets the appScopeId property value. Identifier of the app specific scope when the assignment scope is app specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by a resource application only. For the entitlement management provider, use this property to specify a catalog, for example /AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997. Supports $filter (eq, in). For example /roleManagement/entitlementManagement/roleAssignments?$filter=appScopeId eq '/AccessPackageCatalog/{catalog id}'.
            ## @param value Value to set for the appScopeId property.
            ## @return a void
            ## 
            def app_scope_id=(value)
                @app_scope_id = value
            end
            ## 
            ## Gets the condition property value. The condition property
            ## @return a string
            ## 
            def condition
                return @condition
            end
            ## 
            ## Sets the condition property value. The condition property
            ## @param value Value to set for the condition property.
            ## @return a void
            ## 
            def condition=(value)
                @condition = value
            end
            ## 
            ## Instantiates a new unifiedRoleAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleAssignment.new
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
            ## @param value Value to set for the directoryScope property.
            ## @return a void
            ## 
            def directory_scope=(value)
                @directory_scope = value
            end
            ## 
            ## Gets the directoryScopeId property value. Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications, unlike app scopes that are defined and understood by a resource application only. Supports $filter (eq, in).
            ## @return a string
            ## 
            def directory_scope_id
                return @directory_scope_id
            end
            ## 
            ## Sets the directoryScopeId property value. Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications, unlike app scopes that are defined and understood by a resource application only. Supports $filter (eq, in).
            ## @param value Value to set for the directoryScopeId property.
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
                    "condition" => lambda {|n| @condition = n.get_string_value() },
                    "directoryScope" => lambda {|n| @directory_scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "directoryScopeId" => lambda {|n| @directory_scope_id = n.get_string_value() },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                    "roleDefinition" => lambda {|n| @role_definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleDefinition.create_from_discriminator_value(pn) }) },
                    "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the principal property value. Referencing the assigned principal. Read-only. Supports $expand.
            ## @return a directory_object
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. Referencing the assigned principal. Read-only. Supports $expand.
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalId property value. Identifier of the principal to which the assignment is granted. Supported principals are users, role-assignable groups, and service principals. Supports $filter (eq, in).
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. Identifier of the principal to which the assignment is granted. Supported principals are users, role-assignable groups, and service principals. Supports $filter (eq, in).
            ## @param value Value to set for the principalId property.
            ## @return a void
            ## 
            def principal_id=(value)
                @principal_id = value
            end
            ## 
            ## Gets the roleDefinition property value. The roleDefinition the assignment is for.  Supports $expand.
            ## @return a unified_role_definition
            ## 
            def role_definition
                return @role_definition
            end
            ## 
            ## Sets the roleDefinition property value. The roleDefinition the assignment is for.  Supports $expand.
            ## @param value Value to set for the roleDefinition property.
            ## @return a void
            ## 
            def role_definition=(value)
                @role_definition = value
            end
            ## 
            ## Gets the roleDefinitionId property value. Identifier of the unifiedRoleDefinition the assignment is for. Read-only. Supports $filter (eq, in).
            ## @return a string
            ## 
            def role_definition_id
                return @role_definition_id
            end
            ## 
            ## Sets the roleDefinitionId property value. Identifier of the unifiedRoleDefinition the assignment is for. Read-only. Supports $filter (eq, in).
            ## @param value Value to set for the roleDefinitionId property.
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
                writer.write_string_value("condition", @condition)
                writer.write_object_value("directoryScope", @directory_scope)
                writer.write_string_value("directoryScopeId", @directory_scope_id)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
                writer.write_object_value("roleDefinition", @role_definition)
                writer.write_string_value("roleDefinitionId", @role_definition_id)
            end
        end
    end
end
