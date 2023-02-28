require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppRoleAssignment < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier (id) for the app role which is assigned to the principal. This app role must be exposed in the appRoles property on the resource application's service principal (resourceId). If the resource application has not declared any app roles, a default app role ID of 00000000-0000-0000-0000-000000000000 can be specified to signal that the principal is assigned to the resource app without any specific app roles. Required on create.
            @app_role_id
            ## 
            # The time when the app role assignment was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # The display name of the user, group, or service principal that was granted the app role assignment. Read-only. Supports $filter (eq and startswith).
            @principal_display_name
            ## 
            # The unique identifier (id) for the user, security group, or service principal being granted the app role. Security groups with dynamic memberships are supported. Required on create.
            @principal_id
            ## 
            # The type of the assigned principal. This can either be User, Group, or ServicePrincipal. Read-only.
            @principal_type
            ## 
            # The display name of the resource app's service principal to which the assignment is made.
            @resource_display_name
            ## 
            # The unique identifier (id) for the resource service principal for which the assignment is made. Required on create. Supports $filter (eq only).
            @resource_id
            ## 
            ## Gets the appRoleId property value. The identifier (id) for the app role which is assigned to the principal. This app role must be exposed in the appRoles property on the resource application's service principal (resourceId). If the resource application has not declared any app roles, a default app role ID of 00000000-0000-0000-0000-000000000000 can be specified to signal that the principal is assigned to the resource app without any specific app roles. Required on create.
            ## @return a guid
            ## 
            def app_role_id
                return @app_role_id
            end
            ## 
            ## Sets the appRoleId property value. The identifier (id) for the app role which is assigned to the principal. This app role must be exposed in the appRoles property on the resource application's service principal (resourceId). If the resource application has not declared any app roles, a default app role ID of 00000000-0000-0000-0000-000000000000 can be specified to signal that the principal is assigned to the resource app without any specific app roles. Required on create.
            ## @param value Value to set for the app_role_id property.
            ## @return a void
            ## 
            def app_role_id=(value)
                @app_role_id = value
            end
            ## 
            ## Instantiates a new appRoleAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.appRoleAssignment"
            end
            ## 
            ## Gets the createdDateTime property value. The time when the app role assignment was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time when the app role assignment was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a app_role_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppRoleAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appRoleId" => lambda {|n| @app_role_id = n.get_guid_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "principalDisplayName" => lambda {|n| @principal_display_name = n.get_string_value() },
                    "principalId" => lambda {|n| @principal_id = n.get_guid_value() },
                    "principalType" => lambda {|n| @principal_type = n.get_string_value() },
                    "resourceDisplayName" => lambda {|n| @resource_display_name = n.get_string_value() },
                    "resourceId" => lambda {|n| @resource_id = n.get_guid_value() },
                })
            end
            ## 
            ## Gets the principalDisplayName property value. The display name of the user, group, or service principal that was granted the app role assignment. Read-only. Supports $filter (eq and startswith).
            ## @return a string
            ## 
            def principal_display_name
                return @principal_display_name
            end
            ## 
            ## Sets the principalDisplayName property value. The display name of the user, group, or service principal that was granted the app role assignment. Read-only. Supports $filter (eq and startswith).
            ## @param value Value to set for the principal_display_name property.
            ## @return a void
            ## 
            def principal_display_name=(value)
                @principal_display_name = value
            end
            ## 
            ## Gets the principalId property value. The unique identifier (id) for the user, security group, or service principal being granted the app role. Security groups with dynamic memberships are supported. Required on create.
            ## @return a guid
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. The unique identifier (id) for the user, security group, or service principal being granted the app role. Security groups with dynamic memberships are supported. Required on create.
            ## @param value Value to set for the principal_id property.
            ## @return a void
            ## 
            def principal_id=(value)
                @principal_id = value
            end
            ## 
            ## Gets the principalType property value. The type of the assigned principal. This can either be User, Group, or ServicePrincipal. Read-only.
            ## @return a string
            ## 
            def principal_type
                return @principal_type
            end
            ## 
            ## Sets the principalType property value. The type of the assigned principal. This can either be User, Group, or ServicePrincipal. Read-only.
            ## @param value Value to set for the principal_type property.
            ## @return a void
            ## 
            def principal_type=(value)
                @principal_type = value
            end
            ## 
            ## Gets the resourceDisplayName property value. The display name of the resource app's service principal to which the assignment is made.
            ## @return a string
            ## 
            def resource_display_name
                return @resource_display_name
            end
            ## 
            ## Sets the resourceDisplayName property value. The display name of the resource app's service principal to which the assignment is made.
            ## @param value Value to set for the resource_display_name property.
            ## @return a void
            ## 
            def resource_display_name=(value)
                @resource_display_name = value
            end
            ## 
            ## Gets the resourceId property value. The unique identifier (id) for the resource service principal for which the assignment is made. Required on create. Supports $filter (eq only).
            ## @return a guid
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The unique identifier (id) for the resource service principal for which the assignment is made. Required on create. Supports $filter (eq only).
            ## @param value Value to set for the resource_id property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_guid_value("appRoleId", @app_role_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("principalDisplayName", @principal_display_name)
                writer.write_guid_value("principalId", @principal_id)
                writer.write_string_value("principalType", @principal_type)
                writer.write_string_value("resourceDisplayName", @resource_display_name)
                writer.write_guid_value("resourceId", @resource_id)
            end
        end
    end
end
