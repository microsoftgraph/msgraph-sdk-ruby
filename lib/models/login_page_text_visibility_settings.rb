require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LoginPageTextVisibilitySettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Option to hide the self-service password reset (SSPR) hyperlinks such as 'Can't access your account?', 'Forgot my password' and 'Reset it now' on the sign-in form.
            @hide_account_reset_credentials
            ## 
            # Option to hide the self-service password reset (SSPR) 'Can't access your account?' hyperlink on the sign-in form.
            @hide_cannot_access_your_account
            ## 
            # Option to hide the self-service password reset (SSPR) 'Forgot my password' hyperlink on the sign-in form.
            @hide_forgot_my_password
            ## 
            # Option to hide the 'Privacy & Cookies' hyperlink in the footer.
            @hide_privacy_and_cookies
            ## 
            # Option to hide the self-service password reset (SSPR) 'reset it now' hyperlink on the sign-in form.
            @hide_reset_it_now
            ## 
            # Option to hide the 'Terms of Use' hyperlink in the footer.
            @hide_terms_of_use
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new loginPageTextVisibilitySettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a login_page_text_visibility_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LoginPageTextVisibilitySettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "hideAccountResetCredentials" => lambda {|n| @hide_account_reset_credentials = n.get_boolean_value() },
                    "hideCannotAccessYourAccount" => lambda {|n| @hide_cannot_access_your_account = n.get_boolean_value() },
                    "hideForgotMyPassword" => lambda {|n| @hide_forgot_my_password = n.get_boolean_value() },
                    "hidePrivacyAndCookies" => lambda {|n| @hide_privacy_and_cookies = n.get_boolean_value() },
                    "hideResetItNow" => lambda {|n| @hide_reset_it_now = n.get_boolean_value() },
                    "hideTermsOfUse" => lambda {|n| @hide_terms_of_use = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the hideAccountResetCredentials property value. Option to hide the self-service password reset (SSPR) hyperlinks such as 'Can't access your account?', 'Forgot my password' and 'Reset it now' on the sign-in form.
            ## @return a boolean
            ## 
            def hide_account_reset_credentials
                return @hide_account_reset_credentials
            end
            ## 
            ## Sets the hideAccountResetCredentials property value. Option to hide the self-service password reset (SSPR) hyperlinks such as 'Can't access your account?', 'Forgot my password' and 'Reset it now' on the sign-in form.
            ## @param value Value to set for the hideAccountResetCredentials property.
            ## @return a void
            ## 
            def hide_account_reset_credentials=(value)
                @hide_account_reset_credentials = value
            end
            ## 
            ## Gets the hideCannotAccessYourAccount property value. Option to hide the self-service password reset (SSPR) 'Can't access your account?' hyperlink on the sign-in form.
            ## @return a boolean
            ## 
            def hide_cannot_access_your_account
                return @hide_cannot_access_your_account
            end
            ## 
            ## Sets the hideCannotAccessYourAccount property value. Option to hide the self-service password reset (SSPR) 'Can't access your account?' hyperlink on the sign-in form.
            ## @param value Value to set for the hideCannotAccessYourAccount property.
            ## @return a void
            ## 
            def hide_cannot_access_your_account=(value)
                @hide_cannot_access_your_account = value
            end
            ## 
            ## Gets the hideForgotMyPassword property value. Option to hide the self-service password reset (SSPR) 'Forgot my password' hyperlink on the sign-in form.
            ## @return a boolean
            ## 
            def hide_forgot_my_password
                return @hide_forgot_my_password
            end
            ## 
            ## Sets the hideForgotMyPassword property value. Option to hide the self-service password reset (SSPR) 'Forgot my password' hyperlink on the sign-in form.
            ## @param value Value to set for the hideForgotMyPassword property.
            ## @return a void
            ## 
            def hide_forgot_my_password=(value)
                @hide_forgot_my_password = value
            end
            ## 
            ## Gets the hidePrivacyAndCookies property value. Option to hide the 'Privacy & Cookies' hyperlink in the footer.
            ## @return a boolean
            ## 
            def hide_privacy_and_cookies
                return @hide_privacy_and_cookies
            end
            ## 
            ## Sets the hidePrivacyAndCookies property value. Option to hide the 'Privacy & Cookies' hyperlink in the footer.
            ## @param value Value to set for the hidePrivacyAndCookies property.
            ## @return a void
            ## 
            def hide_privacy_and_cookies=(value)
                @hide_privacy_and_cookies = value
            end
            ## 
            ## Gets the hideResetItNow property value. Option to hide the self-service password reset (SSPR) 'reset it now' hyperlink on the sign-in form.
            ## @return a boolean
            ## 
            def hide_reset_it_now
                return @hide_reset_it_now
            end
            ## 
            ## Sets the hideResetItNow property value. Option to hide the self-service password reset (SSPR) 'reset it now' hyperlink on the sign-in form.
            ## @param value Value to set for the hideResetItNow property.
            ## @return a void
            ## 
            def hide_reset_it_now=(value)
                @hide_reset_it_now = value
            end
            ## 
            ## Gets the hideTermsOfUse property value. Option to hide the 'Terms of Use' hyperlink in the footer.
            ## @return a boolean
            ## 
            def hide_terms_of_use
                return @hide_terms_of_use
            end
            ## 
            ## Sets the hideTermsOfUse property value. Option to hide the 'Terms of Use' hyperlink in the footer.
            ## @param value Value to set for the hideTermsOfUse property.
            ## @return a void
            ## 
            def hide_terms_of_use=(value)
                @hide_terms_of_use = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("hideAccountResetCredentials", @hide_account_reset_credentials) unless @hide_account_reset_credentials.nil?
                writer.write_boolean_value("hideCannotAccessYourAccount", @hide_cannot_access_your_account) unless @hide_cannot_access_your_account.nil?
                writer.write_boolean_value("hideForgotMyPassword", @hide_forgot_my_password) unless @hide_forgot_my_password.nil?
                writer.write_boolean_value("hidePrivacyAndCookies", @hide_privacy_and_cookies) unless @hide_privacy_and_cookies.nil?
                writer.write_boolean_value("hideResetItNow", @hide_reset_it_now) unless @hide_reset_it_now.nil?
                writer.write_boolean_value("hideTermsOfUse", @hide_terms_of_use) unless @hide_terms_of_use.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
        end
    end
end
