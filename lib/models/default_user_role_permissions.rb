require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DefaultUserRolePermissions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the default user role can create applications. This setting corresponds to the Users can register applications setting in the User settings menu in the Microsoft Entra admin center.
            @allowed_to_create_apps
            ## 
            # Indicates whether the default user role can create security groups. This setting corresponds to the following menus in the Microsoft Entra admin center:  The Users can create security groups in Microsoft Entra admin centers, API or PowerShell setting in the Group settings menu.  Users can create security groups setting in the User settings menu.
            @allowed_to_create_security_groups
            ## 
            # Indicates whether the default user role can create tenants. This setting corresponds to the Restrict non-admin users from creating tenants setting in the User settings menu in the Microsoft Entra admin center.  When this setting is false, users assigned the Tenant Creator role can still create tenants.
            @allowed_to_create_tenants
            ## 
            # Indicates whether the registered owners of a device can read their own BitLocker recovery keys with default user role.
            @allowed_to_read_bitlocker_keys_for_owned_device
            ## 
            # Indicates whether the default user role can read other users. DO NOT SET THIS VALUE TO false.
            @allowed_to_read_other_users
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates if user consent to apps is allowed, and if it is, which permission to grant consent and which app consent policy (permissionGrantPolicy) govern the permission for users to grant consent. Value should be in the format managePermissionGrantsForSelf.{id}, where {id} is the id of a built-in or custom app consent policy. An empty list indicates user consent to apps is disabled.
            @permission_grant_policies_assigned
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowedToCreateApps property value. Indicates whether the default user role can create applications. This setting corresponds to the Users can register applications setting in the User settings menu in the Microsoft Entra admin center.
            ## @return a boolean
            ## 
            def allowed_to_create_apps
                return @allowed_to_create_apps
            end
            ## 
            ## Sets the allowedToCreateApps property value. Indicates whether the default user role can create applications. This setting corresponds to the Users can register applications setting in the User settings menu in the Microsoft Entra admin center.
            ## @param value Value to set for the allowedToCreateApps property.
            ## @return a void
            ## 
            def allowed_to_create_apps=(value)
                @allowed_to_create_apps = value
            end
            ## 
            ## Gets the allowedToCreateSecurityGroups property value. Indicates whether the default user role can create security groups. This setting corresponds to the following menus in the Microsoft Entra admin center:  The Users can create security groups in Microsoft Entra admin centers, API or PowerShell setting in the Group settings menu.  Users can create security groups setting in the User settings menu.
            ## @return a boolean
            ## 
            def allowed_to_create_security_groups
                return @allowed_to_create_security_groups
            end
            ## 
            ## Sets the allowedToCreateSecurityGroups property value. Indicates whether the default user role can create security groups. This setting corresponds to the following menus in the Microsoft Entra admin center:  The Users can create security groups in Microsoft Entra admin centers, API or PowerShell setting in the Group settings menu.  Users can create security groups setting in the User settings menu.
            ## @param value Value to set for the allowedToCreateSecurityGroups property.
            ## @return a void
            ## 
            def allowed_to_create_security_groups=(value)
                @allowed_to_create_security_groups = value
            end
            ## 
            ## Gets the allowedToCreateTenants property value. Indicates whether the default user role can create tenants. This setting corresponds to the Restrict non-admin users from creating tenants setting in the User settings menu in the Microsoft Entra admin center.  When this setting is false, users assigned the Tenant Creator role can still create tenants.
            ## @return a boolean
            ## 
            def allowed_to_create_tenants
                return @allowed_to_create_tenants
            end
            ## 
            ## Sets the allowedToCreateTenants property value. Indicates whether the default user role can create tenants. This setting corresponds to the Restrict non-admin users from creating tenants setting in the User settings menu in the Microsoft Entra admin center.  When this setting is false, users assigned the Tenant Creator role can still create tenants.
            ## @param value Value to set for the allowedToCreateTenants property.
            ## @return a void
            ## 
            def allowed_to_create_tenants=(value)
                @allowed_to_create_tenants = value
            end
            ## 
            ## Gets the allowedToReadBitlockerKeysForOwnedDevice property value. Indicates whether the registered owners of a device can read their own BitLocker recovery keys with default user role.
            ## @return a boolean
            ## 
            def allowed_to_read_bitlocker_keys_for_owned_device
                return @allowed_to_read_bitlocker_keys_for_owned_device
            end
            ## 
            ## Sets the allowedToReadBitlockerKeysForOwnedDevice property value. Indicates whether the registered owners of a device can read their own BitLocker recovery keys with default user role.
            ## @param value Value to set for the allowedToReadBitlockerKeysForOwnedDevice property.
            ## @return a void
            ## 
            def allowed_to_read_bitlocker_keys_for_owned_device=(value)
                @allowed_to_read_bitlocker_keys_for_owned_device = value
            end
            ## 
            ## Gets the allowedToReadOtherUsers property value. Indicates whether the default user role can read other users. DO NOT SET THIS VALUE TO false.
            ## @return a boolean
            ## 
            def allowed_to_read_other_users
                return @allowed_to_read_other_users
            end
            ## 
            ## Sets the allowedToReadOtherUsers property value. Indicates whether the default user role can read other users. DO NOT SET THIS VALUE TO false.
            ## @param value Value to set for the allowedToReadOtherUsers property.
            ## @return a void
            ## 
            def allowed_to_read_other_users=(value)
                @allowed_to_read_other_users = value
            end
            ## 
            ## Instantiates a new DefaultUserRolePermissions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a default_user_role_permissions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DefaultUserRolePermissions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedToCreateApps" => lambda {|n| @allowed_to_create_apps = n.get_boolean_value() },
                    "allowedToCreateSecurityGroups" => lambda {|n| @allowed_to_create_security_groups = n.get_boolean_value() },
                    "allowedToCreateTenants" => lambda {|n| @allowed_to_create_tenants = n.get_boolean_value() },
                    "allowedToReadBitlockerKeysForOwnedDevice" => lambda {|n| @allowed_to_read_bitlocker_keys_for_owned_device = n.get_boolean_value() },
                    "allowedToReadOtherUsers" => lambda {|n| @allowed_to_read_other_users = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "permissionGrantPoliciesAssigned" => lambda {|n| @permission_grant_policies_assigned = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the permissionGrantPoliciesAssigned property value. Indicates if user consent to apps is allowed, and if it is, which permission to grant consent and which app consent policy (permissionGrantPolicy) govern the permission for users to grant consent. Value should be in the format managePermissionGrantsForSelf.{id}, where {id} is the id of a built-in or custom app consent policy. An empty list indicates user consent to apps is disabled.
            ## @return a string
            ## 
            def permission_grant_policies_assigned
                return @permission_grant_policies_assigned
            end
            ## 
            ## Sets the permissionGrantPoliciesAssigned property value. Indicates if user consent to apps is allowed, and if it is, which permission to grant consent and which app consent policy (permissionGrantPolicy) govern the permission for users to grant consent. Value should be in the format managePermissionGrantsForSelf.{id}, where {id} is the id of a built-in or custom app consent policy. An empty list indicates user consent to apps is disabled.
            ## @param value Value to set for the permissionGrantPoliciesAssigned property.
            ## @return a void
            ## 
            def permission_grant_policies_assigned=(value)
                @permission_grant_policies_assigned = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowedToCreateApps", @allowed_to_create_apps)
                writer.write_boolean_value("allowedToCreateSecurityGroups", @allowed_to_create_security_groups)
                writer.write_boolean_value("allowedToCreateTenants", @allowed_to_create_tenants)
                writer.write_boolean_value("allowedToReadBitlockerKeysForOwnedDevice", @allowed_to_read_bitlocker_keys_for_owned_device)
                writer.write_boolean_value("allowedToReadOtherUsers", @allowed_to_read_other_users)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("permissionGrantPoliciesAssigned", @permission_grant_policies_assigned)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
