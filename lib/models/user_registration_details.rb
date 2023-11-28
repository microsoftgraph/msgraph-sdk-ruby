require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserRegistrationDetails < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the user has an admin role in the tenant. This value can be used to check the authentication methods that privileged accounts are registered for and capable of.
            @is_admin
            ## 
            # Indicates whether the user has registered a strong authentication method for multifactor authentication. The method must be allowed by the authentication methods policy. Supports $filter (eq).
            @is_mfa_capable
            ## 
            # Indicates whether the user has registered a strong authentication method for multifactor authentication. The method may not necessarily be allowed by the authentication methods policy. Supports $filter (eq).
            @is_mfa_registered
            ## 
            # Indicates whether the user has registered a passwordless strong authentication method (including FIDO2, Windows Hello for Business, and Microsoft Authenticator (Passwordless)) that is allowed by the authentication methods policy. Supports $filter (eq).
            @is_passwordless_capable
            ## 
            # Indicates whether the user has registered the required number of authentication methods for self-service password reset and the user is allowed to perform self-service password reset by policy. Supports $filter (eq).
            @is_sspr_capable
            ## 
            # Indicates whether the user is allowed to perform self-service password reset by policy. The user may not necessarily have registered the required number of authentication methods for self-service password reset. Supports $filter (eq).
            @is_sspr_enabled
            ## 
            # Indicates whether the user has registered the required number of authentication methods for self-service password reset. The user may not necessarily be allowed to perform self-service password reset by policy. Supports $filter (eq).
            @is_sspr_registered
            ## 
            # Indicates whether system preferred authentication method is enabled. If enabled, the system dynamically determines the most secure authentication method among the methods registered by the user. Supports $filter (eq).
            @is_system_preferred_authentication_method_enabled
            ## 
            # The date and time (UTC) when the record was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_updated_date_time
            ## 
            # Collection of authentication methods registered, such as mobilePhone, email, passKeyDeviceBound. Supports $filter (any with eq).
            @methods_registered
            ## 
            # Collection of authentication methods that the system determined to be the most secure authentication methods among the registered methods for second factor authentication. Possible values are: push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, none, unknownFutureValue. Supports $filter (any with eq).
            @system_preferred_authentication_methods
            ## 
            # The user display name, such as Adele Vance. Supports $filter (eq, startsWith) and $orderby.
            @user_display_name
            ## 
            # The method the user selected as the default second-factor for performing multifactor authentication. Possible values are: push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, none, unknownFutureValue. This property is used as preferred MFA method when isSystemPreferredAuthenticationMethodEnabled is false. Supports $filter (any with eq).
            @user_preferred_method_for_secondary_authentication
            ## 
            # The user principal name, such as AdeleV@contoso.com. Supports $filter (eq, startsWith) and $orderby.
            @user_principal_name
            ## 
            # Identifies whether the user is a member or guest in the tenant. The possible values are: member, guest, unknownFutureValue.
            @user_type
            ## 
            ## Instantiates a new userRegistrationDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_registration_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserRegistrationDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isAdmin" => lambda {|n| @is_admin = n.get_boolean_value() },
                    "isMfaCapable" => lambda {|n| @is_mfa_capable = n.get_boolean_value() },
                    "isMfaRegistered" => lambda {|n| @is_mfa_registered = n.get_boolean_value() },
                    "isPasswordlessCapable" => lambda {|n| @is_passwordless_capable = n.get_boolean_value() },
                    "isSsprCapable" => lambda {|n| @is_sspr_capable = n.get_boolean_value() },
                    "isSsprEnabled" => lambda {|n| @is_sspr_enabled = n.get_boolean_value() },
                    "isSsprRegistered" => lambda {|n| @is_sspr_registered = n.get_boolean_value() },
                    "isSystemPreferredAuthenticationMethodEnabled" => lambda {|n| @is_system_preferred_authentication_method_enabled = n.get_boolean_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "methodsRegistered" => lambda {|n| @methods_registered = n.get_collection_of_primitive_values(String) },
                    "systemPreferredAuthenticationMethods" => lambda {|n| @system_preferred_authentication_methods = n.get_collection_of_primitive_values(String) },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userPreferredMethodForSecondaryAuthentication" => lambda {|n| @user_preferred_method_for_secondary_authentication = n.get_enum_value(MicrosoftGraph::Models::UserDefaultAuthenticationMethod) },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraph::Models::SignInUserType) },
                })
            end
            ## 
            ## Gets the isAdmin property value. Indicates whether the user has an admin role in the tenant. This value can be used to check the authentication methods that privileged accounts are registered for and capable of.
            ## @return a boolean
            ## 
            def is_admin
                return @is_admin
            end
            ## 
            ## Sets the isAdmin property value. Indicates whether the user has an admin role in the tenant. This value can be used to check the authentication methods that privileged accounts are registered for and capable of.
            ## @param value Value to set for the isAdmin property.
            ## @return a void
            ## 
            def is_admin=(value)
                @is_admin = value
            end
            ## 
            ## Gets the isMfaCapable property value. Indicates whether the user has registered a strong authentication method for multifactor authentication. The method must be allowed by the authentication methods policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_mfa_capable
                return @is_mfa_capable
            end
            ## 
            ## Sets the isMfaCapable property value. Indicates whether the user has registered a strong authentication method for multifactor authentication. The method must be allowed by the authentication methods policy. Supports $filter (eq).
            ## @param value Value to set for the isMfaCapable property.
            ## @return a void
            ## 
            def is_mfa_capable=(value)
                @is_mfa_capable = value
            end
            ## 
            ## Gets the isMfaRegistered property value. Indicates whether the user has registered a strong authentication method for multifactor authentication. The method may not necessarily be allowed by the authentication methods policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_mfa_registered
                return @is_mfa_registered
            end
            ## 
            ## Sets the isMfaRegistered property value. Indicates whether the user has registered a strong authentication method for multifactor authentication. The method may not necessarily be allowed by the authentication methods policy. Supports $filter (eq).
            ## @param value Value to set for the isMfaRegistered property.
            ## @return a void
            ## 
            def is_mfa_registered=(value)
                @is_mfa_registered = value
            end
            ## 
            ## Gets the isPasswordlessCapable property value. Indicates whether the user has registered a passwordless strong authentication method (including FIDO2, Windows Hello for Business, and Microsoft Authenticator (Passwordless)) that is allowed by the authentication methods policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_passwordless_capable
                return @is_passwordless_capable
            end
            ## 
            ## Sets the isPasswordlessCapable property value. Indicates whether the user has registered a passwordless strong authentication method (including FIDO2, Windows Hello for Business, and Microsoft Authenticator (Passwordless)) that is allowed by the authentication methods policy. Supports $filter (eq).
            ## @param value Value to set for the isPasswordlessCapable property.
            ## @return a void
            ## 
            def is_passwordless_capable=(value)
                @is_passwordless_capable = value
            end
            ## 
            ## Gets the isSsprCapable property value. Indicates whether the user has registered the required number of authentication methods for self-service password reset and the user is allowed to perform self-service password reset by policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_sspr_capable
                return @is_sspr_capable
            end
            ## 
            ## Sets the isSsprCapable property value. Indicates whether the user has registered the required number of authentication methods for self-service password reset and the user is allowed to perform self-service password reset by policy. Supports $filter (eq).
            ## @param value Value to set for the isSsprCapable property.
            ## @return a void
            ## 
            def is_sspr_capable=(value)
                @is_sspr_capable = value
            end
            ## 
            ## Gets the isSsprEnabled property value. Indicates whether the user is allowed to perform self-service password reset by policy. The user may not necessarily have registered the required number of authentication methods for self-service password reset. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_sspr_enabled
                return @is_sspr_enabled
            end
            ## 
            ## Sets the isSsprEnabled property value. Indicates whether the user is allowed to perform self-service password reset by policy. The user may not necessarily have registered the required number of authentication methods for self-service password reset. Supports $filter (eq).
            ## @param value Value to set for the isSsprEnabled property.
            ## @return a void
            ## 
            def is_sspr_enabled=(value)
                @is_sspr_enabled = value
            end
            ## 
            ## Gets the isSsprRegistered property value. Indicates whether the user has registered the required number of authentication methods for self-service password reset. The user may not necessarily be allowed to perform self-service password reset by policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_sspr_registered
                return @is_sspr_registered
            end
            ## 
            ## Sets the isSsprRegistered property value. Indicates whether the user has registered the required number of authentication methods for self-service password reset. The user may not necessarily be allowed to perform self-service password reset by policy. Supports $filter (eq).
            ## @param value Value to set for the isSsprRegistered property.
            ## @return a void
            ## 
            def is_sspr_registered=(value)
                @is_sspr_registered = value
            end
            ## 
            ## Gets the isSystemPreferredAuthenticationMethodEnabled property value. Indicates whether system preferred authentication method is enabled. If enabled, the system dynamically determines the most secure authentication method among the methods registered by the user. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_system_preferred_authentication_method_enabled
                return @is_system_preferred_authentication_method_enabled
            end
            ## 
            ## Sets the isSystemPreferredAuthenticationMethodEnabled property value. Indicates whether system preferred authentication method is enabled. If enabled, the system dynamically determines the most secure authentication method among the methods registered by the user. Supports $filter (eq).
            ## @param value Value to set for the isSystemPreferredAuthenticationMethodEnabled property.
            ## @return a void
            ## 
            def is_system_preferred_authentication_method_enabled=(value)
                @is_system_preferred_authentication_method_enabled = value
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. The date and time (UTC) when the record was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. The date and time (UTC) when the record was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastUpdatedDateTime property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the methodsRegistered property value. Collection of authentication methods registered, such as mobilePhone, email, passKeyDeviceBound. Supports $filter (any with eq).
            ## @return a string
            ## 
            def methods_registered
                return @methods_registered
            end
            ## 
            ## Sets the methodsRegistered property value. Collection of authentication methods registered, such as mobilePhone, email, passKeyDeviceBound. Supports $filter (any with eq).
            ## @param value Value to set for the methodsRegistered property.
            ## @return a void
            ## 
            def methods_registered=(value)
                @methods_registered = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isAdmin", @is_admin)
                writer.write_boolean_value("isMfaCapable", @is_mfa_capable)
                writer.write_boolean_value("isMfaRegistered", @is_mfa_registered)
                writer.write_boolean_value("isPasswordlessCapable", @is_passwordless_capable)
                writer.write_boolean_value("isSsprCapable", @is_sspr_capable)
                writer.write_boolean_value("isSsprEnabled", @is_sspr_enabled)
                writer.write_boolean_value("isSsprRegistered", @is_sspr_registered)
                writer.write_boolean_value("isSystemPreferredAuthenticationMethodEnabled", @is_system_preferred_authentication_method_enabled)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_collection_of_primitive_values("methodsRegistered", @methods_registered)
                writer.write_collection_of_primitive_values("systemPreferredAuthenticationMethods", @system_preferred_authentication_methods)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_enum_value("userPreferredMethodForSecondaryAuthentication", @user_preferred_method_for_secondary_authentication)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_enum_value("userType", @user_type)
            end
            ## 
            ## Gets the systemPreferredAuthenticationMethods property value. Collection of authentication methods that the system determined to be the most secure authentication methods among the registered methods for second factor authentication. Possible values are: push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, none, unknownFutureValue. Supports $filter (any with eq).
            ## @return a string
            ## 
            def system_preferred_authentication_methods
                return @system_preferred_authentication_methods
            end
            ## 
            ## Sets the systemPreferredAuthenticationMethods property value. Collection of authentication methods that the system determined to be the most secure authentication methods among the registered methods for second factor authentication. Possible values are: push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, none, unknownFutureValue. Supports $filter (any with eq).
            ## @param value Value to set for the systemPreferredAuthenticationMethods property.
            ## @return a void
            ## 
            def system_preferred_authentication_methods=(value)
                @system_preferred_authentication_methods = value
            end
            ## 
            ## Gets the userDisplayName property value. The user display name, such as Adele Vance. Supports $filter (eq, startsWith) and $orderby.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. The user display name, such as Adele Vance. Supports $filter (eq, startsWith) and $orderby.
            ## @param value Value to set for the userDisplayName property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPreferredMethodForSecondaryAuthentication property value. The method the user selected as the default second-factor for performing multifactor authentication. Possible values are: push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, none, unknownFutureValue. This property is used as preferred MFA method when isSystemPreferredAuthenticationMethodEnabled is false. Supports $filter (any with eq).
            ## @return a user_default_authentication_method
            ## 
            def user_preferred_method_for_secondary_authentication
                return @user_preferred_method_for_secondary_authentication
            end
            ## 
            ## Sets the userPreferredMethodForSecondaryAuthentication property value. The method the user selected as the default second-factor for performing multifactor authentication. Possible values are: push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, none, unknownFutureValue. This property is used as preferred MFA method when isSystemPreferredAuthenticationMethodEnabled is false. Supports $filter (any with eq).
            ## @param value Value to set for the userPreferredMethodForSecondaryAuthentication property.
            ## @return a void
            ## 
            def user_preferred_method_for_secondary_authentication=(value)
                @user_preferred_method_for_secondary_authentication = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name, such as AdeleV@contoso.com. Supports $filter (eq, startsWith) and $orderby.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name, such as AdeleV@contoso.com. Supports $filter (eq, startsWith) and $orderby.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userType property value. Identifies whether the user is a member or guest in the tenant. The possible values are: member, guest, unknownFutureValue.
            ## @return a sign_in_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. Identifies whether the user is a member or guest in the tenant. The possible values are: member, guest, unknownFutureValue.
            ## @param value Value to set for the userType property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
