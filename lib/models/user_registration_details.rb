require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserRegistrationDetails < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isAdmin property
            @is_admin
            ## 
            # The isMfaCapable property
            @is_mfa_capable
            ## 
            # The isMfaRegistered property
            @is_mfa_registered
            ## 
            # The isPasswordlessCapable property
            @is_passwordless_capable
            ## 
            # The isSsprCapable property
            @is_sspr_capable
            ## 
            # The isSsprEnabled property
            @is_sspr_enabled
            ## 
            # The isSsprRegistered property
            @is_sspr_registered
            ## 
            # The isSystemPreferredAuthenticationMethodEnabled property
            @is_system_preferred_authentication_method_enabled
            ## 
            # The lastUpdatedDateTime property
            @last_updated_date_time
            ## 
            # The methodsRegistered property
            @methods_registered
            ## 
            # The systemPreferredAuthenticationMethods property
            @system_preferred_authentication_methods
            ## 
            # The userDisplayName property
            @user_display_name
            ## 
            # The userPreferredMethodForSecondaryAuthentication property
            @user_preferred_method_for_secondary_authentication
            ## 
            # The userPrincipalName property
            @user_principal_name
            ## 
            # The userType property
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
            ## Gets the isAdmin property value. The isAdmin property
            ## @return a boolean
            ## 
            def is_admin
                return @is_admin
            end
            ## 
            ## Sets the isAdmin property value. The isAdmin property
            ## @param value Value to set for the is_admin property.
            ## @return a void
            ## 
            def is_admin=(value)
                @is_admin = value
            end
            ## 
            ## Gets the isMfaCapable property value. The isMfaCapable property
            ## @return a boolean
            ## 
            def is_mfa_capable
                return @is_mfa_capable
            end
            ## 
            ## Sets the isMfaCapable property value. The isMfaCapable property
            ## @param value Value to set for the is_mfa_capable property.
            ## @return a void
            ## 
            def is_mfa_capable=(value)
                @is_mfa_capable = value
            end
            ## 
            ## Gets the isMfaRegistered property value. The isMfaRegistered property
            ## @return a boolean
            ## 
            def is_mfa_registered
                return @is_mfa_registered
            end
            ## 
            ## Sets the isMfaRegistered property value. The isMfaRegistered property
            ## @param value Value to set for the is_mfa_registered property.
            ## @return a void
            ## 
            def is_mfa_registered=(value)
                @is_mfa_registered = value
            end
            ## 
            ## Gets the isPasswordlessCapable property value. The isPasswordlessCapable property
            ## @return a boolean
            ## 
            def is_passwordless_capable
                return @is_passwordless_capable
            end
            ## 
            ## Sets the isPasswordlessCapable property value. The isPasswordlessCapable property
            ## @param value Value to set for the is_passwordless_capable property.
            ## @return a void
            ## 
            def is_passwordless_capable=(value)
                @is_passwordless_capable = value
            end
            ## 
            ## Gets the isSsprCapable property value. The isSsprCapable property
            ## @return a boolean
            ## 
            def is_sspr_capable
                return @is_sspr_capable
            end
            ## 
            ## Sets the isSsprCapable property value. The isSsprCapable property
            ## @param value Value to set for the is_sspr_capable property.
            ## @return a void
            ## 
            def is_sspr_capable=(value)
                @is_sspr_capable = value
            end
            ## 
            ## Gets the isSsprEnabled property value. The isSsprEnabled property
            ## @return a boolean
            ## 
            def is_sspr_enabled
                return @is_sspr_enabled
            end
            ## 
            ## Sets the isSsprEnabled property value. The isSsprEnabled property
            ## @param value Value to set for the is_sspr_enabled property.
            ## @return a void
            ## 
            def is_sspr_enabled=(value)
                @is_sspr_enabled = value
            end
            ## 
            ## Gets the isSsprRegistered property value. The isSsprRegistered property
            ## @return a boolean
            ## 
            def is_sspr_registered
                return @is_sspr_registered
            end
            ## 
            ## Sets the isSsprRegistered property value. The isSsprRegistered property
            ## @param value Value to set for the is_sspr_registered property.
            ## @return a void
            ## 
            def is_sspr_registered=(value)
                @is_sspr_registered = value
            end
            ## 
            ## Gets the isSystemPreferredAuthenticationMethodEnabled property value. The isSystemPreferredAuthenticationMethodEnabled property
            ## @return a boolean
            ## 
            def is_system_preferred_authentication_method_enabled
                return @is_system_preferred_authentication_method_enabled
            end
            ## 
            ## Sets the isSystemPreferredAuthenticationMethodEnabled property value. The isSystemPreferredAuthenticationMethodEnabled property
            ## @param value Value to set for the is_system_preferred_authentication_method_enabled property.
            ## @return a void
            ## 
            def is_system_preferred_authentication_method_enabled=(value)
                @is_system_preferred_authentication_method_enabled = value
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
            ## @param value Value to set for the last_updated_date_time property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the methodsRegistered property value. The methodsRegistered property
            ## @return a string
            ## 
            def methods_registered
                return @methods_registered
            end
            ## 
            ## Sets the methodsRegistered property value. The methodsRegistered property
            ## @param value Value to set for the methods_registered property.
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
            ## Gets the systemPreferredAuthenticationMethods property value. The systemPreferredAuthenticationMethods property
            ## @return a string
            ## 
            def system_preferred_authentication_methods
                return @system_preferred_authentication_methods
            end
            ## 
            ## Sets the systemPreferredAuthenticationMethods property value. The systemPreferredAuthenticationMethods property
            ## @param value Value to set for the system_preferred_authentication_methods property.
            ## @return a void
            ## 
            def system_preferred_authentication_methods=(value)
                @system_preferred_authentication_methods = value
            end
            ## 
            ## Gets the userDisplayName property value. The userDisplayName property
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. The userDisplayName property
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPreferredMethodForSecondaryAuthentication property value. The userPreferredMethodForSecondaryAuthentication property
            ## @return a user_default_authentication_method
            ## 
            def user_preferred_method_for_secondary_authentication
                return @user_preferred_method_for_secondary_authentication
            end
            ## 
            ## Sets the userPreferredMethodForSecondaryAuthentication property value. The userPreferredMethodForSecondaryAuthentication property
            ## @param value Value to set for the user_preferred_method_for_secondary_authentication property.
            ## @return a void
            ## 
            def user_preferred_method_for_secondary_authentication=(value)
                @user_preferred_method_for_secondary_authentication = value
            end
            ## 
            ## Gets the userPrincipalName property value. The userPrincipalName property
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The userPrincipalName property
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userType property value. The userType property
            ## @return a sign_in_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. The userType property
            ## @param value Value to set for the user_type property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
