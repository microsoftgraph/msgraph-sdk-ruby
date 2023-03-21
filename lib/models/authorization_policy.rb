require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthorizationPolicy < MicrosoftGraph::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether a user can join the tenant by email validation.
            @allow_email_verified_users_to_join_organization
            ## 
            # Indicates who can invite external users to the organization. Possible values are: none, adminsAndGuestInviters, adminsGuestInvitersAndAllMembers, everyone.  everyone is the default setting for all cloud environments except US Government. See more in the table below.
            @allow_invites_from
            ## 
            # The allowUserConsentForRiskyApps property
            @allow_user_consent_for_risky_apps
            ## 
            # Indicates whether users can sign up for email based subscriptions.
            @allowed_to_sign_up_email_based_subscriptions
            ## 
            # Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant.
            @allowed_to_use_s_s_p_r
            ## 
            # To disable the use of MSOL PowerShell set this property to true. This will also disable user-based access to the legacy service endpoint used by MSOL PowerShell. This does not affect Azure AD Connect or Microsoft Graph.
            @block_msol_power_shell
            ## 
            # The defaultUserRolePermissions property
            @default_user_role_permissions
            ## 
            # Represents role templateId for the role that should be granted to guest user. Currently following roles are supported:  User (a0b1b346-4d3e-4e8b-98f8-753987be4970), Guest User (10dae51f-b6af-4016-8d66-8c2a99b929b3), and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b).
            @guest_user_role_id
            ## 
            ## Gets the allowEmailVerifiedUsersToJoinOrganization property value. Indicates whether a user can join the tenant by email validation.
            ## @return a boolean
            ## 
            def allow_email_verified_users_to_join_organization
                return @allow_email_verified_users_to_join_organization
            end
            ## 
            ## Sets the allowEmailVerifiedUsersToJoinOrganization property value. Indicates whether a user can join the tenant by email validation.
            ## @param value Value to set for the allow_email_verified_users_to_join_organization property.
            ## @return a void
            ## 
            def allow_email_verified_users_to_join_organization=(value)
                @allow_email_verified_users_to_join_organization = value
            end
            ## 
            ## Gets the allowInvitesFrom property value. Indicates who can invite external users to the organization. Possible values are: none, adminsAndGuestInviters, adminsGuestInvitersAndAllMembers, everyone.  everyone is the default setting for all cloud environments except US Government. See more in the table below.
            ## @return a allow_invites_from
            ## 
            def allow_invites_from
                return @allow_invites_from
            end
            ## 
            ## Sets the allowInvitesFrom property value. Indicates who can invite external users to the organization. Possible values are: none, adminsAndGuestInviters, adminsGuestInvitersAndAllMembers, everyone.  everyone is the default setting for all cloud environments except US Government. See more in the table below.
            ## @param value Value to set for the allow_invites_from property.
            ## @return a void
            ## 
            def allow_invites_from=(value)
                @allow_invites_from = value
            end
            ## 
            ## Gets the allowUserConsentForRiskyApps property value. The allowUserConsentForRiskyApps property
            ## @return a boolean
            ## 
            def allow_user_consent_for_risky_apps
                return @allow_user_consent_for_risky_apps
            end
            ## 
            ## Sets the allowUserConsentForRiskyApps property value. The allowUserConsentForRiskyApps property
            ## @param value Value to set for the allow_user_consent_for_risky_apps property.
            ## @return a void
            ## 
            def allow_user_consent_for_risky_apps=(value)
                @allow_user_consent_for_risky_apps = value
            end
            ## 
            ## Gets the allowedToSignUpEmailBasedSubscriptions property value. Indicates whether users can sign up for email based subscriptions.
            ## @return a boolean
            ## 
            def allowed_to_sign_up_email_based_subscriptions
                return @allowed_to_sign_up_email_based_subscriptions
            end
            ## 
            ## Sets the allowedToSignUpEmailBasedSubscriptions property value. Indicates whether users can sign up for email based subscriptions.
            ## @param value Value to set for the allowed_to_sign_up_email_based_subscriptions property.
            ## @return a void
            ## 
            def allowed_to_sign_up_email_based_subscriptions=(value)
                @allowed_to_sign_up_email_based_subscriptions = value
            end
            ## 
            ## Gets the allowedToUseSSPR property value. Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant.
            ## @return a boolean
            ## 
            def allowed_to_use_s_s_p_r
                return @allowed_to_use_s_s_p_r
            end
            ## 
            ## Sets the allowedToUseSSPR property value. Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant.
            ## @param value Value to set for the allowed_to_use_s_s_p_r property.
            ## @return a void
            ## 
            def allowed_to_use_s_s_p_r=(value)
                @allowed_to_use_s_s_p_r = value
            end
            ## 
            ## Gets the blockMsolPowerShell property value. To disable the use of MSOL PowerShell set this property to true. This will also disable user-based access to the legacy service endpoint used by MSOL PowerShell. This does not affect Azure AD Connect or Microsoft Graph.
            ## @return a boolean
            ## 
            def block_msol_power_shell
                return @block_msol_power_shell
            end
            ## 
            ## Sets the blockMsolPowerShell property value. To disable the use of MSOL PowerShell set this property to true. This will also disable user-based access to the legacy service endpoint used by MSOL PowerShell. This does not affect Azure AD Connect or Microsoft Graph.
            ## @param value Value to set for the block_msol_power_shell property.
            ## @return a void
            ## 
            def block_msol_power_shell=(value)
                @block_msol_power_shell = value
            end
            ## 
            ## Instantiates a new AuthorizationPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.authorizationPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a authorization_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthorizationPolicy.new
            end
            ## 
            ## Gets the defaultUserRolePermissions property value. The defaultUserRolePermissions property
            ## @return a default_user_role_permissions
            ## 
            def default_user_role_permissions
                return @default_user_role_permissions
            end
            ## 
            ## Sets the defaultUserRolePermissions property value. The defaultUserRolePermissions property
            ## @param value Value to set for the default_user_role_permissions property.
            ## @return a void
            ## 
            def default_user_role_permissions=(value)
                @default_user_role_permissions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowEmailVerifiedUsersToJoinOrganization" => lambda {|n| @allow_email_verified_users_to_join_organization = n.get_boolean_value() },
                    "allowInvitesFrom" => lambda {|n| @allow_invites_from = n.get_enum_value(MicrosoftGraph::Models::AllowInvitesFrom) },
                    "allowUserConsentForRiskyApps" => lambda {|n| @allow_user_consent_for_risky_apps = n.get_boolean_value() },
                    "allowedToSignUpEmailBasedSubscriptions" => lambda {|n| @allowed_to_sign_up_email_based_subscriptions = n.get_boolean_value() },
                    "allowedToUseSSPR" => lambda {|n| @allowed_to_use_s_s_p_r = n.get_boolean_value() },
                    "blockMsolPowerShell" => lambda {|n| @block_msol_power_shell = n.get_boolean_value() },
                    "defaultUserRolePermissions" => lambda {|n| @default_user_role_permissions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DefaultUserRolePermissions.create_from_discriminator_value(pn) }) },
                    "guestUserRoleId" => lambda {|n| @guest_user_role_id = n.get_guid_value() },
                })
            end
            ## 
            ## Gets the guestUserRoleId property value. Represents role templateId for the role that should be granted to guest user. Currently following roles are supported:  User (a0b1b346-4d3e-4e8b-98f8-753987be4970), Guest User (10dae51f-b6af-4016-8d66-8c2a99b929b3), and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b).
            ## @return a guid
            ## 
            def guest_user_role_id
                return @guest_user_role_id
            end
            ## 
            ## Sets the guestUserRoleId property value. Represents role templateId for the role that should be granted to guest user. Currently following roles are supported:  User (a0b1b346-4d3e-4e8b-98f8-753987be4970), Guest User (10dae51f-b6af-4016-8d66-8c2a99b929b3), and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b).
            ## @param value Value to set for the guest_user_role_id property.
            ## @return a void
            ## 
            def guest_user_role_id=(value)
                @guest_user_role_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowEmailVerifiedUsersToJoinOrganization", @allow_email_verified_users_to_join_organization)
                writer.write_enum_value("allowInvitesFrom", @allow_invites_from)
                writer.write_boolean_value("allowUserConsentForRiskyApps", @allow_user_consent_for_risky_apps)
                writer.write_boolean_value("allowedToSignUpEmailBasedSubscriptions", @allowed_to_sign_up_email_based_subscriptions)
                writer.write_boolean_value("allowedToUseSSPR", @allowed_to_use_s_s_p_r)
                writer.write_boolean_value("blockMsolPowerShell", @block_msol_power_shell)
                writer.write_object_value("defaultUserRolePermissions", @default_user_role_permissions)
                writer.write_guid_value("guestUserRoleId", @guest_user_role_id)
            end
        end
    end
end
