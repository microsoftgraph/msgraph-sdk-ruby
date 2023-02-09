require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
            @description
            ## 
            # The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
            @display_name
            ## 
            # Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
            @inherits_permissions_from
            ## 
            # Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
            @is_built_in
            ## 
            # Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
            @is_enabled
            ## 
            # List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
            @resource_scopes
            ## 
            # List of permissions included in the role. Read-only when isBuiltIn is true. Required.
            @role_permissions
            ## 
            # Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
            @template_id
            ## 
            # Indicates version of the role definition. Read-only when isBuiltIn is true.
            @version
            ## 
            ## Instantiates a new unifiedRoleDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleDefinition.new
            end
            ## 
            ## Gets the description property value. The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.  Supports $filter (eq, in).
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "inheritsPermissionsFrom" => lambda {|n| @inherits_permissions_from = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleDefinition.create_from_discriminator_value(pn) }) },
                    "isBuiltIn" => lambda {|n| @is_built_in = n.get_boolean_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "resourceScopes" => lambda {|n| @resource_scopes = n.get_collection_of_primitive_values(String) },
                    "rolePermissions" => lambda {|n| @role_permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRolePermission.create_from_discriminator_value(pn) }) },
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the inheritsPermissionsFrom property value. Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
            ## @return a unified_role_definition
            ## 
            def inherits_permissions_from
                return @inherits_permissions_from
            end
            ## 
            ## Sets the inheritsPermissionsFrom property value. Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (isBuiltIn is true) support this attribute. Supports $expand.
            ## @param value Value to set for the inherits_permissions_from property.
            ## @return a void
            ## 
            def inherits_permissions_from=(value)
                @inherits_permissions_from = value
            end
            ## 
            ## Gets the isBuiltIn property value. Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
            ## @return a boolean
            ## 
            def is_built_in
                return @is_built_in
            end
            ## 
            ## Sets the isBuiltIn property value. Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (eq, in).
            ## @param value Value to set for the is_built_in property.
            ## @return a void
            ## 
            def is_built_in=(value)
                @is_built_in = value
            end
            ## 
            ## Gets the isEnabled property value. Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Flag indicating whether the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true.
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the resourceScopes property value. List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
            ## @return a string
            ## 
            def resource_scopes
                return @resource_scopes
            end
            ## 
            ## Sets the resourceScopes property value. List of the scopes or permissions the role definition applies to. Currently only / is supported. Read-only when isBuiltIn is true. DO NOT USE. This will be deprecated soon. Attach scope to role assignment.
            ## @param value Value to set for the resource_scopes property.
            ## @return a void
            ## 
            def resource_scopes=(value)
                @resource_scopes = value
            end
            ## 
            ## Gets the rolePermissions property value. List of permissions included in the role. Read-only when isBuiltIn is true. Required.
            ## @return a unified_role_permission
            ## 
            def role_permissions
                return @role_permissions
            end
            ## 
            ## Sets the rolePermissions property value. List of permissions included in the role. Read-only when isBuiltIn is true. Required.
            ## @param value Value to set for the role_permissions property.
            ## @return a void
            ## 
            def role_permissions=(value)
                @role_permissions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("inheritsPermissionsFrom", @inherits_permissions_from)
                writer.write_boolean_value("isBuiltIn", @is_built_in)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_collection_of_primitive_values("resourceScopes", @resource_scopes)
                writer.write_collection_of_object_values("rolePermissions", @role_permissions)
                writer.write_string_value("templateId", @template_id)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the templateId property value. Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. Custom template identifier that can be set when isBuiltIn is false but is read-only when isBuiltIn is true. This identifier is typically used if one needs an identifier to be the same across different directories.
            ## @param value Value to set for the template_id property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
            ## 
            ## Gets the version property value. Indicates version of the role definition. Read-only when isBuiltIn is true.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Indicates version of the role definition. Read-only when isBuiltIn is true.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
