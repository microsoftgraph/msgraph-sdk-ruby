require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageResource < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains information about the attributes to be collected from the requestor and sent to the resource application.
            @attributes
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # A description for the resource.
            @description
            ## 
            # The display name of the resource, such as the application name, group name or site name.
            @display_name
            ## 
            # Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
            @environment
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @modified_date_time
            ## 
            # The unique identifier of the resource in the origin system. In the case of a Microsoft Entra group, this is the identifier of the group.
            @origin_id
            ## 
            # The type of the resource in the origin system, such as SharePointOnline, AadApplication or AadGroup.
            @origin_system
            ## 
            # Read-only. Nullable. Supports $expand.
            @roles
            ## 
            # Read-only. Nullable. Supports $expand.
            @scopes
            ## 
            ## Gets the attributes property value. Contains information about the attributes to be collected from the requestor and sent to the resource application.
            ## @return a access_package_resource_attribute
            ## 
            def attributes
                return @attributes
            end
            ## 
            ## Sets the attributes property value. Contains information about the attributes to be collected from the requestor and sent to the resource application.
            ## @param value Value to set for the attributes property.
            ## @return a void
            ## 
            def attributes=(value)
                @attributes = value
            end
            ## 
            ## Instantiates a new AccessPackageResource and sets the default values.
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
            ## @return a access_package_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResource.new
            end
            ## 
            ## Gets the description property value. A description for the resource.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A description for the resource.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the resource, such as the application name, group name or site name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the resource, such as the application name, group name or site name.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the environment property value. Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
            ## @return a access_package_resource_environment
            ## 
            def environment
                return @environment
            end
            ## 
            ## Sets the environment property value. Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
            ## @param value Value to set for the environment property.
            ## @return a void
            ## 
            def environment=(value)
                @environment = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attributes" => lambda {|n| @attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceAttribute.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "environment" => lambda {|n| @environment = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceEnvironment.create_from_discriminator_value(pn) }) },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "originId" => lambda {|n| @origin_id = n.get_string_value() },
                    "originSystem" => lambda {|n| @origin_system = n.get_string_value() },
                    "roles" => lambda {|n| @roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }) },
                    "scopes" => lambda {|n| @scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }) },
                })
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
            ## Gets the originId property value. The unique identifier of the resource in the origin system. In the case of a Microsoft Entra group, this is the identifier of the group.
            ## @return a string
            ## 
            def origin_id
                return @origin_id
            end
            ## 
            ## Sets the originId property value. The unique identifier of the resource in the origin system. In the case of a Microsoft Entra group, this is the identifier of the group.
            ## @param value Value to set for the originId property.
            ## @return a void
            ## 
            def origin_id=(value)
                @origin_id = value
            end
            ## 
            ## Gets the originSystem property value. The type of the resource in the origin system, such as SharePointOnline, AadApplication or AadGroup.
            ## @return a string
            ## 
            def origin_system
                return @origin_system
            end
            ## 
            ## Sets the originSystem property value. The type of the resource in the origin system, such as SharePointOnline, AadApplication or AadGroup.
            ## @param value Value to set for the originSystem property.
            ## @return a void
            ## 
            def origin_system=(value)
                @origin_system = value
            end
            ## 
            ## Gets the roles property value. Read-only. Nullable. Supports $expand.
            ## @return a access_package_resource_role
            ## 
            def roles
                return @roles
            end
            ## 
            ## Sets the roles property value. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the roles property.
            ## @return a void
            ## 
            def roles=(value)
                @roles = value
            end
            ## 
            ## Gets the scopes property value. Read-only. Nullable. Supports $expand.
            ## @return a access_package_resource_scope
            ## 
            def scopes
                return @scopes
            end
            ## 
            ## Sets the scopes property value. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the scopes property.
            ## @return a void
            ## 
            def scopes=(value)
                @scopes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("attributes", @attributes)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("environment", @environment)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_string_value("originId", @origin_id)
                writer.write_string_value("originSystem", @origin_system)
                writer.write_collection_of_object_values("roles", @roles)
                writer.write_collection_of_object_values("scopes", @scopes)
            end
        end
    end
end
