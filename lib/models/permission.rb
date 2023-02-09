require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Permission < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A format of yyyy-MM-ddTHH:mm:ssZ of DateTimeOffset indicates the expiration time of the permission. DateTime.MinValue indicates there is no expiration set for this permission. Optional.
            @expiration_date_time
            ## 
            # The grantedTo property
            @granted_to
            ## 
            # The grantedToIdentities property
            @granted_to_identities
            ## 
            # For link type permissions, the details of the users to whom permission was granted. Read-only.
            @granted_to_identities_v2
            ## 
            # For user type permissions, the details of the users and applications for this permission. Read-only.
            @granted_to_v2
            ## 
            # Indicates whether the password is set for this permission. This property only appears in the response. Optional. Read-only. For OneDrive Personal only..
            @has_password
            ## 
            # Provides a reference to the ancestor of the current permission, if it is inherited from an ancestor. Read-only.
            @inherited_from
            ## 
            # Details of any associated sharing invitation for this permission. Read-only.
            @invitation
            ## 
            # Provides the link details of the current permission, if it is a link type permissions. Read-only.
            @link
            ## 
            # The type of permission, for example, read. See below for the full list of roles. Read-only.
            @roles
            ## 
            # A unique token that can be used to access this shared item via the **shares** API. Read-only.
            @share_id
            ## 
            ## Instantiates a new permission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a permission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Permission.new
            end
            ## 
            ## Gets the expirationDateTime property value. A format of yyyy-MM-ddTHH:mm:ssZ of DateTimeOffset indicates the expiration time of the permission. DateTime.MinValue indicates there is no expiration set for this permission. Optional.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. A format of yyyy-MM-ddTHH:mm:ssZ of DateTimeOffset indicates the expiration time of the permission. DateTime.MinValue indicates there is no expiration set for this permission. Optional.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "grantedTo" => lambda {|n| @granted_to = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "grantedToIdentities" => lambda {|n| @granted_to_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "grantedToIdentitiesV2" => lambda {|n| @granted_to_identities_v2 = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SharePointIdentitySet.create_from_discriminator_value(pn) }) },
                    "grantedToV2" => lambda {|n| @granted_to_v2 = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharePointIdentitySet.create_from_discriminator_value(pn) }) },
                    "hasPassword" => lambda {|n| @has_password = n.get_boolean_value() },
                    "inheritedFrom" => lambda {|n| @inherited_from = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemReference.create_from_discriminator_value(pn) }) },
                    "invitation" => lambda {|n| @invitation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharingInvitation.create_from_discriminator_value(pn) }) },
                    "link" => lambda {|n| @link = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharingLink.create_from_discriminator_value(pn) }) },
                    "roles" => lambda {|n| @roles = n.get_collection_of_primitive_values(String) },
                    "shareId" => lambda {|n| @share_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the grantedTo property value. The grantedTo property
            ## @return a identity_set
            ## 
            def granted_to
                return @granted_to
            end
            ## 
            ## Sets the grantedTo property value. The grantedTo property
            ## @param value Value to set for the granted_to property.
            ## @return a void
            ## 
            def granted_to=(value)
                @granted_to = value
            end
            ## 
            ## Gets the grantedToIdentities property value. The grantedToIdentities property
            ## @return a identity_set
            ## 
            def granted_to_identities
                return @granted_to_identities
            end
            ## 
            ## Sets the grantedToIdentities property value. The grantedToIdentities property
            ## @param value Value to set for the granted_to_identities property.
            ## @return a void
            ## 
            def granted_to_identities=(value)
                @granted_to_identities = value
            end
            ## 
            ## Gets the grantedToIdentitiesV2 property value. For link type permissions, the details of the users to whom permission was granted. Read-only.
            ## @return a share_point_identity_set
            ## 
            def granted_to_identities_v2
                return @granted_to_identities_v2
            end
            ## 
            ## Sets the grantedToIdentitiesV2 property value. For link type permissions, the details of the users to whom permission was granted. Read-only.
            ## @param value Value to set for the granted_to_identities_v2 property.
            ## @return a void
            ## 
            def granted_to_identities_v2=(value)
                @granted_to_identities_v2 = value
            end
            ## 
            ## Gets the grantedToV2 property value. For user type permissions, the details of the users and applications for this permission. Read-only.
            ## @return a share_point_identity_set
            ## 
            def granted_to_v2
                return @granted_to_v2
            end
            ## 
            ## Sets the grantedToV2 property value. For user type permissions, the details of the users and applications for this permission. Read-only.
            ## @param value Value to set for the granted_to_v2 property.
            ## @return a void
            ## 
            def granted_to_v2=(value)
                @granted_to_v2 = value
            end
            ## 
            ## Gets the hasPassword property value. Indicates whether the password is set for this permission. This property only appears in the response. Optional. Read-only. For OneDrive Personal only..
            ## @return a boolean
            ## 
            def has_password
                return @has_password
            end
            ## 
            ## Sets the hasPassword property value. Indicates whether the password is set for this permission. This property only appears in the response. Optional. Read-only. For OneDrive Personal only..
            ## @param value Value to set for the has_password property.
            ## @return a void
            ## 
            def has_password=(value)
                @has_password = value
            end
            ## 
            ## Gets the inheritedFrom property value. Provides a reference to the ancestor of the current permission, if it is inherited from an ancestor. Read-only.
            ## @return a item_reference
            ## 
            def inherited_from
                return @inherited_from
            end
            ## 
            ## Sets the inheritedFrom property value. Provides a reference to the ancestor of the current permission, if it is inherited from an ancestor. Read-only.
            ## @param value Value to set for the inherited_from property.
            ## @return a void
            ## 
            def inherited_from=(value)
                @inherited_from = value
            end
            ## 
            ## Gets the invitation property value. Details of any associated sharing invitation for this permission. Read-only.
            ## @return a sharing_invitation
            ## 
            def invitation
                return @invitation
            end
            ## 
            ## Sets the invitation property value. Details of any associated sharing invitation for this permission. Read-only.
            ## @param value Value to set for the invitation property.
            ## @return a void
            ## 
            def invitation=(value)
                @invitation = value
            end
            ## 
            ## Gets the link property value. Provides the link details of the current permission, if it is a link type permissions. Read-only.
            ## @return a sharing_link
            ## 
            def link
                return @link
            end
            ## 
            ## Sets the link property value. Provides the link details of the current permission, if it is a link type permissions. Read-only.
            ## @param value Value to set for the link property.
            ## @return a void
            ## 
            def link=(value)
                @link = value
            end
            ## 
            ## Gets the roles property value. The type of permission, for example, read. See below for the full list of roles. Read-only.
            ## @return a string
            ## 
            def roles
                return @roles
            end
            ## 
            ## Sets the roles property value. The type of permission, for example, read. See below for the full list of roles. Read-only.
            ## @param value Value to set for the roles property.
            ## @return a void
            ## 
            def roles=(value)
                @roles = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_object_value("grantedTo", @granted_to)
                writer.write_collection_of_object_values("grantedToIdentities", @granted_to_identities)
                writer.write_collection_of_object_values("grantedToIdentitiesV2", @granted_to_identities_v2)
                writer.write_object_value("grantedToV2", @granted_to_v2)
                writer.write_boolean_value("hasPassword", @has_password)
                writer.write_object_value("inheritedFrom", @inherited_from)
                writer.write_object_value("invitation", @invitation)
                writer.write_object_value("link", @link)
                writer.write_collection_of_primitive_values("roles", @roles)
                writer.write_string_value("shareId", @share_id)
            end
            ## 
            ## Gets the shareId property value. A unique token that can be used to access this shared item via the **shares** API. Read-only.
            ## @return a string
            ## 
            def share_id
                return @share_id
            end
            ## 
            ## Sets the shareId property value. A unique token that can be used to access this shared item via the **shares** API. Read-only.
            ## @param value Value to set for the share_id property.
            ## @return a void
            ## 
            def share_id=(value)
                @share_id = value
            end
        end
    end
end
