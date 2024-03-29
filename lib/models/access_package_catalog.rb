require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageCatalog < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The access packages in this catalog. Read-only. Nullable.
            @access_packages
            ## 
            # Whether the catalog is created by a user or entitlement management. The possible values are: userManaged, serviceDefault, serviceManaged, unknownFutureValue.
            @catalog_type
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # The customWorkflowExtensions property
            @custom_workflow_extensions
            ## 
            # The description of the access package catalog.
            @description
            ## 
            # The display name of the access package catalog.
            @display_name
            ## 
            # Whether the access packages in this catalog can be requested by users outside of the tenant.
            @is_externally_visible
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @modified_date_time
            ## 
            # The resourceRoles property
            @resource_roles
            ## 
            # The resourceScopes property
            @resource_scopes
            ## 
            # Access package resources in this catalog.
            @resources
            ## 
            # Has the value published if the access packages are available for management. The possible values are: unpublished, published, unknownFutureValue.
            @state
            ## 
            ## Gets the accessPackages property value. The access packages in this catalog. Read-only. Nullable.
            ## @return a access_package
            ## 
            def access_packages
                return @access_packages
            end
            ## 
            ## Sets the accessPackages property value. The access packages in this catalog. Read-only. Nullable.
            ## @param value Value to set for the accessPackages property.
            ## @return a void
            ## 
            def access_packages=(value)
                @access_packages = value
            end
            ## 
            ## Gets the catalogType property value. Whether the catalog is created by a user or entitlement management. The possible values are: userManaged, serviceDefault, serviceManaged, unknownFutureValue.
            ## @return a access_package_catalog_type
            ## 
            def catalog_type
                return @catalog_type
            end
            ## 
            ## Sets the catalogType property value. Whether the catalog is created by a user or entitlement management. The possible values are: userManaged, serviceDefault, serviceManaged, unknownFutureValue.
            ## @param value Value to set for the catalogType property.
            ## @return a void
            ## 
            def catalog_type=(value)
                @catalog_type = value
            end
            ## 
            ## Instantiates a new accessPackageCatalog and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_catalog
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageCatalog.new
            end
            ## 
            ## Gets the customWorkflowExtensions property value. The customWorkflowExtensions property
            ## @return a custom_callout_extension
            ## 
            def custom_workflow_extensions
                return @custom_workflow_extensions
            end
            ## 
            ## Sets the customWorkflowExtensions property value. The customWorkflowExtensions property
            ## @param value Value to set for the customWorkflowExtensions property.
            ## @return a void
            ## 
            def custom_workflow_extensions=(value)
                @custom_workflow_extensions = value
            end
            ## 
            ## Gets the description property value. The description of the access package catalog.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the access package catalog.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the access package catalog.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the access package catalog.
            ## @param value Value to set for the displayName property.
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
                    "accessPackages" => lambda {|n| @access_packages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "catalogType" => lambda {|n| @catalog_type = n.get_enum_value(MicrosoftGraph::Models::AccessPackageCatalogType) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customWorkflowExtensions" => lambda {|n| @custom_workflow_extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CustomCalloutExtension.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isExternallyVisible" => lambda {|n| @is_externally_visible = n.get_boolean_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "resourceRoles" => lambda {|n| @resource_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }) },
                    "resourceScopes" => lambda {|n| @resource_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }) },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResource.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::AccessPackageCatalogState) },
                })
            end
            ## 
            ## Gets the isExternallyVisible property value. Whether the access packages in this catalog can be requested by users outside of the tenant.
            ## @return a boolean
            ## 
            def is_externally_visible
                return @is_externally_visible
            end
            ## 
            ## Sets the isExternallyVisible property value. Whether the access packages in this catalog can be requested by users outside of the tenant.
            ## @param value Value to set for the isExternallyVisible property.
            ## @return a void
            ## 
            def is_externally_visible=(value)
                @is_externally_visible = value
            end
            ## 
            ## Gets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Gets the resourceRoles property value. The resourceRoles property
            ## @return a access_package_resource_role
            ## 
            def resource_roles
                return @resource_roles
            end
            ## 
            ## Sets the resourceRoles property value. The resourceRoles property
            ## @param value Value to set for the resourceRoles property.
            ## @return a void
            ## 
            def resource_roles=(value)
                @resource_roles = value
            end
            ## 
            ## Gets the resourceScopes property value. The resourceScopes property
            ## @return a access_package_resource_scope
            ## 
            def resource_scopes
                return @resource_scopes
            end
            ## 
            ## Sets the resourceScopes property value. The resourceScopes property
            ## @param value Value to set for the resourceScopes property.
            ## @return a void
            ## 
            def resource_scopes=(value)
                @resource_scopes = value
            end
            ## 
            ## Gets the resources property value. Access package resources in this catalog.
            ## @return a access_package_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. Access package resources in this catalog.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("accessPackages", @access_packages)
                writer.write_enum_value("catalogType", @catalog_type)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("customWorkflowExtensions", @custom_workflow_extensions)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isExternallyVisible", @is_externally_visible)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_collection_of_object_values("resourceRoles", @resource_roles)
                writer.write_collection_of_object_values("resourceScopes", @resource_scopes)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. Has the value published if the access packages are available for management. The possible values are: unpublished, published, unknownFutureValue.
            ## @return a access_package_catalog_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Has the value published if the access packages are available for management. The possible values are: unpublished, published, unknownFutureValue.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
