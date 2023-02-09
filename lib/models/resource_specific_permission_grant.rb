require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ResourceSpecificPermissionGrant < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # ID of the service principal of the Azure AD app that has been granted access. Read-only.
            @client_app_id
            ## 
            # ID of the Azure AD app that has been granted access. Read-only.
            @client_id
            ## 
            # The name of the resource-specific permission. Read-only.
            @permission
            ## 
            # The type of permission. Possible values are: Application, Delegated. Read-only.
            @permission_type
            ## 
            # ID of the Azure AD app that is hosting the resource. Read-only.
            @resource_app_id
            ## 
            ## Gets the clientAppId property value. ID of the service principal of the Azure AD app that has been granted access. Read-only.
            ## @return a string
            ## 
            def client_app_id
                return @client_app_id
            end
            ## 
            ## Sets the clientAppId property value. ID of the service principal of the Azure AD app that has been granted access. Read-only.
            ## @param value Value to set for the client_app_id property.
            ## @return a void
            ## 
            def client_app_id=(value)
                @client_app_id = value
            end
            ## 
            ## Gets the clientId property value. ID of the Azure AD app that has been granted access. Read-only.
            ## @return a string
            ## 
            def client_id
                return @client_id
            end
            ## 
            ## Sets the clientId property value. ID of the Azure AD app that has been granted access. Read-only.
            ## @param value Value to set for the client_id property.
            ## @return a void
            ## 
            def client_id=(value)
                @client_id = value
            end
            ## 
            ## Instantiates a new resourceSpecificPermissionGrant and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.resourceSpecificPermissionGrant"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a resource_specific_permission_grant
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ResourceSpecificPermissionGrant.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientAppId" => lambda {|n| @client_app_id = n.get_string_value() },
                    "clientId" => lambda {|n| @client_id = n.get_string_value() },
                    "permission" => lambda {|n| @permission = n.get_string_value() },
                    "permissionType" => lambda {|n| @permission_type = n.get_string_value() },
                    "resourceAppId" => lambda {|n| @resource_app_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the permission property value. The name of the resource-specific permission. Read-only.
            ## @return a string
            ## 
            def permission
                return @permission
            end
            ## 
            ## Sets the permission property value. The name of the resource-specific permission. Read-only.
            ## @param value Value to set for the permission property.
            ## @return a void
            ## 
            def permission=(value)
                @permission = value
            end
            ## 
            ## Gets the permissionType property value. The type of permission. Possible values are: Application, Delegated. Read-only.
            ## @return a string
            ## 
            def permission_type
                return @permission_type
            end
            ## 
            ## Sets the permissionType property value. The type of permission. Possible values are: Application, Delegated. Read-only.
            ## @param value Value to set for the permission_type property.
            ## @return a void
            ## 
            def permission_type=(value)
                @permission_type = value
            end
            ## 
            ## Gets the resourceAppId property value. ID of the Azure AD app that is hosting the resource. Read-only.
            ## @return a string
            ## 
            def resource_app_id
                return @resource_app_id
            end
            ## 
            ## Sets the resourceAppId property value. ID of the Azure AD app that is hosting the resource. Read-only.
            ## @param value Value to set for the resource_app_id property.
            ## @return a void
            ## 
            def resource_app_id=(value)
                @resource_app_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("clientAppId", @client_app_id)
                writer.write_string_value("clientId", @client_id)
                writer.write_string_value("permission", @permission)
                writer.write_string_value("permissionType", @permission_type)
                writer.write_string_value("resourceAppId", @resource_app_id)
            end
        end
    end
end
