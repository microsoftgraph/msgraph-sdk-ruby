require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PermissionGrantConditionSet < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of appId values for the client applications to match with, or a list with the single value all to match any client application. Default is the single value all.
            @client_application_ids
            ## 
            # A list of Microsoft Partner Network (MPN) IDs for verified publishers of the client application, or a list with the single value all to match with client apps from any publisher. Default is the single value all.
            @client_application_publisher_ids
            ## 
            # A list of Azure Active Directory tenant IDs in which the client application is registered, or a list with the single value all to match with client apps registered in any tenant. Default is the single value all.
            @client_application_tenant_ids
            ## 
            # Set to true to only match on client applications with a verified publisher. Set to false to match on any client app, even if it does not have a verified publisher. Default is false.
            @client_applications_from_verified_publisher_only
            ## 
            # The permission classification for the permission being granted, or all to match with any permission classification (including permissions which are not classified). Default is all.
            @permission_classification
            ## 
            # The permission type of the permission being granted. Possible values: application for application permissions (e.g. app roles), or delegated for delegated permissions. The value delegatedUserConsentable indicates delegated permissions which have not been configured by the API publisher to require admin consent—this value may be used in built-in permission grant policies, but cannot be used in custom permission grant policies. Required.
            @permission_type
            ## 
            # The list of id values for the specific permissions to match with, or a list with the single value all to match with any permission. The id of delegated permissions can be found in the oauth2PermissionScopes property of the API's **servicePrincipal** object. The id of application permissions can be found in the appRoles property of the API's **servicePrincipal** object. The id of resource-specific application permissions can be found in the resourceSpecificApplicationPermissions property of the API's **servicePrincipal** object. Default is the single value all.
            @permissions
            ## 
            # The appId of the resource application (e.g. the API) for which a permission is being granted, or any to match with any resource application or API. Default is any.
            @resource_application
            ## 
            ## Gets the clientApplicationIds property value. A list of appId values for the client applications to match with, or a list with the single value all to match any client application. Default is the single value all.
            ## @return a string
            ## 
            def client_application_ids
                return @client_application_ids
            end
            ## 
            ## Sets the clientApplicationIds property value. A list of appId values for the client applications to match with, or a list with the single value all to match any client application. Default is the single value all.
            ## @param value Value to set for the client_application_ids property.
            ## @return a void
            ## 
            def client_application_ids=(value)
                @client_application_ids = value
            end
            ## 
            ## Gets the clientApplicationPublisherIds property value. A list of Microsoft Partner Network (MPN) IDs for verified publishers of the client application, or a list with the single value all to match with client apps from any publisher. Default is the single value all.
            ## @return a string
            ## 
            def client_application_publisher_ids
                return @client_application_publisher_ids
            end
            ## 
            ## Sets the clientApplicationPublisherIds property value. A list of Microsoft Partner Network (MPN) IDs for verified publishers of the client application, or a list with the single value all to match with client apps from any publisher. Default is the single value all.
            ## @param value Value to set for the client_application_publisher_ids property.
            ## @return a void
            ## 
            def client_application_publisher_ids=(value)
                @client_application_publisher_ids = value
            end
            ## 
            ## Gets the clientApplicationTenantIds property value. A list of Azure Active Directory tenant IDs in which the client application is registered, or a list with the single value all to match with client apps registered in any tenant. Default is the single value all.
            ## @return a string
            ## 
            def client_application_tenant_ids
                return @client_application_tenant_ids
            end
            ## 
            ## Sets the clientApplicationTenantIds property value. A list of Azure Active Directory tenant IDs in which the client application is registered, or a list with the single value all to match with client apps registered in any tenant. Default is the single value all.
            ## @param value Value to set for the client_application_tenant_ids property.
            ## @return a void
            ## 
            def client_application_tenant_ids=(value)
                @client_application_tenant_ids = value
            end
            ## 
            ## Gets the clientApplicationsFromVerifiedPublisherOnly property value. Set to true to only match on client applications with a verified publisher. Set to false to match on any client app, even if it does not have a verified publisher. Default is false.
            ## @return a boolean
            ## 
            def client_applications_from_verified_publisher_only
                return @client_applications_from_verified_publisher_only
            end
            ## 
            ## Sets the clientApplicationsFromVerifiedPublisherOnly property value. Set to true to only match on client applications with a verified publisher. Set to false to match on any client app, even if it does not have a verified publisher. Default is false.
            ## @param value Value to set for the client_applications_from_verified_publisher_only property.
            ## @return a void
            ## 
            def client_applications_from_verified_publisher_only=(value)
                @client_applications_from_verified_publisher_only = value
            end
            ## 
            ## Instantiates a new permissionGrantConditionSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a permission_grant_condition_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionGrantConditionSet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientApplicationIds" => lambda {|n| @client_application_ids = n.get_collection_of_primitive_values(String) },
                    "clientApplicationPublisherIds" => lambda {|n| @client_application_publisher_ids = n.get_collection_of_primitive_values(String) },
                    "clientApplicationTenantIds" => lambda {|n| @client_application_tenant_ids = n.get_collection_of_primitive_values(String) },
                    "clientApplicationsFromVerifiedPublisherOnly" => lambda {|n| @client_applications_from_verified_publisher_only = n.get_boolean_value() },
                    "permissionClassification" => lambda {|n| @permission_classification = n.get_string_value() },
                    "permissionType" => lambda {|n| @permission_type = n.get_enum_value(MicrosoftGraph::Models::PermissionType) },
                    "permissions" => lambda {|n| @permissions = n.get_collection_of_primitive_values(String) },
                    "resourceApplication" => lambda {|n| @resource_application = n.get_string_value() },
                })
            end
            ## 
            ## Gets the permissionClassification property value. The permission classification for the permission being granted, or all to match with any permission classification (including permissions which are not classified). Default is all.
            ## @return a string
            ## 
            def permission_classification
                return @permission_classification
            end
            ## 
            ## Sets the permissionClassification property value. The permission classification for the permission being granted, or all to match with any permission classification (including permissions which are not classified). Default is all.
            ## @param value Value to set for the permission_classification property.
            ## @return a void
            ## 
            def permission_classification=(value)
                @permission_classification = value
            end
            ## 
            ## Gets the permissionType property value. The permission type of the permission being granted. Possible values: application for application permissions (e.g. app roles), or delegated for delegated permissions. The value delegatedUserConsentable indicates delegated permissions which have not been configured by the API publisher to require admin consent—this value may be used in built-in permission grant policies, but cannot be used in custom permission grant policies. Required.
            ## @return a permission_type
            ## 
            def permission_type
                return @permission_type
            end
            ## 
            ## Sets the permissionType property value. The permission type of the permission being granted. Possible values: application for application permissions (e.g. app roles), or delegated for delegated permissions. The value delegatedUserConsentable indicates delegated permissions which have not been configured by the API publisher to require admin consent—this value may be used in built-in permission grant policies, but cannot be used in custom permission grant policies. Required.
            ## @param value Value to set for the permission_type property.
            ## @return a void
            ## 
            def permission_type=(value)
                @permission_type = value
            end
            ## 
            ## Gets the permissions property value. The list of id values for the specific permissions to match with, or a list with the single value all to match with any permission. The id of delegated permissions can be found in the oauth2PermissionScopes property of the API's **servicePrincipal** object. The id of application permissions can be found in the appRoles property of the API's **servicePrincipal** object. The id of resource-specific application permissions can be found in the resourceSpecificApplicationPermissions property of the API's **servicePrincipal** object. Default is the single value all.
            ## @return a string
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. The list of id values for the specific permissions to match with, or a list with the single value all to match with any permission. The id of delegated permissions can be found in the oauth2PermissionScopes property of the API's **servicePrincipal** object. The id of application permissions can be found in the appRoles property of the API's **servicePrincipal** object. The id of resource-specific application permissions can be found in the resourceSpecificApplicationPermissions property of the API's **servicePrincipal** object. Default is the single value all.
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Gets the resourceApplication property value. The appId of the resource application (e.g. the API) for which a permission is being granted, or any to match with any resource application or API. Default is any.
            ## @return a string
            ## 
            def resource_application
                return @resource_application
            end
            ## 
            ## Sets the resourceApplication property value. The appId of the resource application (e.g. the API) for which a permission is being granted, or any to match with any resource application or API. Default is any.
            ## @param value Value to set for the resource_application property.
            ## @return a void
            ## 
            def resource_application=(value)
                @resource_application = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("clientApplicationIds", @client_application_ids)
                writer.write_collection_of_primitive_values("clientApplicationPublisherIds", @client_application_publisher_ids)
                writer.write_collection_of_primitive_values("clientApplicationTenantIds", @client_application_tenant_ids)
                writer.write_boolean_value("clientApplicationsFromVerifiedPublisherOnly", @client_applications_from_verified_publisher_only)
                writer.write_string_value("permissionClassification", @permission_classification)
                writer.write_enum_value("permissionType", @permission_type)
                writer.write_collection_of_primitive_values("permissions", @permissions)
                writer.write_string_value("resourceApplication", @resource_application)
            end
        end
    end
end
