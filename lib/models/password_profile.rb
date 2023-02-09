require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PasswordProfile
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # true if the user must change her password on the next login; otherwise false.
            @force_change_password_next_sign_in
            ## 
            # If true, at next sign-in, the user must perform a multi-factor authentication (MFA) before being forced to change their password. The behavior is identical to forceChangePasswordNextSignIn except that the user is required to first perform a multi-factor authentication before password change. After a password change, this property will be automatically reset to false. If not set, default is false.
            @force_change_password_next_sign_in_with_mfa
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The password for the user. This property is required when a user is created. It can be updated, but the user will be required to change the password on the next login. The password must satisfy minimum requirements as specified by the user’s passwordPolicies property. By default, a strong password is required.
            @password
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new passwordProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a password_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PasswordProfile.new
            end
            ## 
            ## Gets the forceChangePasswordNextSignIn property value. true if the user must change her password on the next login; otherwise false.
            ## @return a boolean
            ## 
            def force_change_password_next_sign_in
                return @force_change_password_next_sign_in
            end
            ## 
            ## Sets the forceChangePasswordNextSignIn property value. true if the user must change her password on the next login; otherwise false.
            ## @param value Value to set for the force_change_password_next_sign_in property.
            ## @return a void
            ## 
            def force_change_password_next_sign_in=(value)
                @force_change_password_next_sign_in = value
            end
            ## 
            ## Gets the forceChangePasswordNextSignInWithMfa property value. If true, at next sign-in, the user must perform a multi-factor authentication (MFA) before being forced to change their password. The behavior is identical to forceChangePasswordNextSignIn except that the user is required to first perform a multi-factor authentication before password change. After a password change, this property will be automatically reset to false. If not set, default is false.
            ## @return a boolean
            ## 
            def force_change_password_next_sign_in_with_mfa
                return @force_change_password_next_sign_in_with_mfa
            end
            ## 
            ## Sets the forceChangePasswordNextSignInWithMfa property value. If true, at next sign-in, the user must perform a multi-factor authentication (MFA) before being forced to change their password. The behavior is identical to forceChangePasswordNextSignIn except that the user is required to first perform a multi-factor authentication before password change. After a password change, this property will be automatically reset to false. If not set, default is false.
            ## @param value Value to set for the force_change_password_next_sign_in_with_mfa property.
            ## @return a void
            ## 
            def force_change_password_next_sign_in_with_mfa=(value)
                @force_change_password_next_sign_in_with_mfa = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "forceChangePasswordNextSignIn" => lambda {|n| @force_change_password_next_sign_in = n.get_boolean_value() },
                    "forceChangePasswordNextSignInWithMfa" => lambda {|n| @force_change_password_next_sign_in_with_mfa = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "password" => lambda {|n| @password = n.get_string_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the password property value. The password for the user. This property is required when a user is created. It can be updated, but the user will be required to change the password on the next login. The password must satisfy minimum requirements as specified by the user’s passwordPolicies property. By default, a strong password is required.
            ## @return a string
            ## 
            def password
                return @password
            end
            ## 
            ## Sets the password property value. The password for the user. This property is required when a user is created. It can be updated, but the user will be required to change the password on the next login. The password must satisfy minimum requirements as specified by the user’s passwordPolicies property. By default, a strong password is required.
            ## @param value Value to set for the password property.
            ## @return a void
            ## 
            def password=(value)
                @password = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("forceChangePasswordNextSignIn", @force_change_password_next_sign_in)
                writer.write_boolean_value("forceChangePasswordNextSignInWithMfa", @force_change_password_next_sign_in_with_mfa)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("password", @password)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
