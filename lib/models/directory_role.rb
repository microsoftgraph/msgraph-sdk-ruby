require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DirectoryRole < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description for the directory role. Read-only. Supports $filter (eq), $search, $select.
            @description
            ## 
            # The display name for the directory role. Read-only. Supports $filter (eq), $search, $select.
            @display_name
            ## 
            # Users that are members of this directory role. HTTP Methods: GET, POST, DELETE. Read-only. Nullable. Supports $expand.
            @members
            ## 
            # The id of the directoryRoleTemplate that this role is based on. The property must be specified when activating a directory role in a tenant with a POST operation. After the directory role has been activated, the property is read only. Supports $filter (eq), $select.
            @role_template_id
            ## 
            # Members of this directory role that are scoped to administrative units. Read-only. Nullable.
            @scoped_members
            ## 
            ## Instantiates a new DirectoryRole and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.directoryRole"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a directory_role
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DirectoryRole.new
            end
            ## 
            ## Gets the description property value. The description for the directory role. Read-only. Supports $filter (eq), $search, $select.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for the directory role. Read-only. Supports $filter (eq), $search, $select.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the directory role. Read-only. Supports $filter (eq), $search, $select.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the directory role. Read-only. Supports $filter (eq), $search, $select.
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
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "roleTemplateId" => lambda {|n| @role_template_id = n.get_string_value() },
                    "scopedMembers" => lambda {|n| @scoped_members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ScopedRoleMembership.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the members property value. Users that are members of this directory role. HTTP Methods: GET, POST, DELETE. Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. Users that are members of this directory role. HTTP Methods: GET, POST, DELETE. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the roleTemplateId property value. The id of the directoryRoleTemplate that this role is based on. The property must be specified when activating a directory role in a tenant with a POST operation. After the directory role has been activated, the property is read only. Supports $filter (eq), $select.
            ## @return a string
            ## 
            def role_template_id
                return @role_template_id
            end
            ## 
            ## Sets the roleTemplateId property value. The id of the directoryRoleTemplate that this role is based on. The property must be specified when activating a directory role in a tenant with a POST operation. After the directory role has been activated, the property is read only. Supports $filter (eq), $select.
            ## @param value Value to set for the role_template_id property.
            ## @return a void
            ## 
            def role_template_id=(value)
                @role_template_id = value
            end
            ## 
            ## Gets the scopedMembers property value. Members of this directory role that are scoped to administrative units. Read-only. Nullable.
            ## @return a scoped_role_membership
            ## 
            def scoped_members
                return @scoped_members
            end
            ## 
            ## Sets the scopedMembers property value. Members of this directory role that are scoped to administrative units. Read-only. Nullable.
            ## @param value Value to set for the scoped_members property.
            ## @return a void
            ## 
            def scoped_members=(value)
                @scoped_members = value
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
                writer.write_collection_of_object_values("members", @members)
                writer.write_string_value("roleTemplateId", @role_template_id)
                writer.write_collection_of_object_values("scopedMembers", @scoped_members)
            end
        end
    end
end
