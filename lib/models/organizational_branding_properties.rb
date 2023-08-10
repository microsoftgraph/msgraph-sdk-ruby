require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OrganizationalBrandingProperties < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Color that appears in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is #FFFFFF.
            @background_color
            ## 
            # Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster.
            @background_image
            ## 
            # A relative URL for the backgroundImage property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            @background_image_relative_url
            ## 
            # A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG not larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            @banner_logo
            ## 
            # A relative URL for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            @banner_logo_relative_url
            ## 
            # A list of base URLs for all available CDN providers that are serving the assets of the current resource. Several CDN providers are used at the same time for high availability of read requests. Read-only.
            @cdn_list
            ## 
            # A custom URL for resetting account credentials. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters.
            @custom_account_reset_credentials_url
            ## 
            # CSS styling that appears on the sign-in page. The allowed format is .css format only and not larger than 25 KB.
            @custom_c_s_s
            ## 
            # A relative URL for the customCSS property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            @custom_c_s_s_relative_url
            ## 
            # A string to replace the default 'Can't access your account?' self-service password reset (SSPR) hyperlink text on the sign-in page. This text must be in Unicode format and not exceed 256 characters.
            @custom_cannot_access_your_account_text
            ## 
            # A custom URL to replace the default URL of the self-service password reset (SSPR) 'Can't access your account?' hyperlink on the sign-in page. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters. DO NOT USE. Use customAccountResetCredentialsUrl instead.
            @custom_cannot_access_your_account_url
            ## 
            # A string to replace the default 'Forgot my password' hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters.
            @custom_forgot_my_password_text
            ## 
            # A string to replace the default 'Privacy and Cookies' hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters.
            @custom_privacy_and_cookies_text
            ## 
            # A custom URL to replace the default URL of the 'Privacy and Cookies' hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters.
            @custom_privacy_and_cookies_url
            ## 
            # A string to replace the default 'reset it now' hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters. DO NOT USE: Customization of the 'reset it now' hyperlink text is currently not supported.
            @custom_reset_it_now_text
            ## 
            # A string to replace the the default 'Terms of Use' hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters.
            @custom_terms_of_use_text
            ## 
            # A custom URL to replace the default URL of the 'Terms of Use' hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128characters.
            @custom_terms_of_use_url
            ## 
            # A custom icon (favicon) to replace a default Microsoft product favicon on an Azure AD tenant.
            @favicon
            ## 
            # A relative url for the favicon above that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            @favicon_relative_url
            ## 
            # The RGB color to apply to customize the color of the header.
            @header_background_color
            ## 
            # A company logo that appears in the header of the sign-in page. The allowed types are PNG or JPEG not larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            @header_logo
            ## 
            # A relative URL for the headerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            @header_logo_relative_url
            ## 
            # Represents the layout configuration to be displayed on the login page for a tenant.
            @login_page_layout_configuration
            ## 
            # Represents the various texts that can be hidden on the login page for a tenant.
            @login_page_text_visibility_settings
            ## 
            # Text that appears at the bottom of the sign-in box. Use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be in Unicode format and not exceed 1024 characters.
            @sign_in_page_text
            ## 
            # A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            @square_logo
            ## 
            # A square dark version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            @square_logo_dark
            ## 
            # A relative URL for the squareLogoDark property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            @square_logo_dark_relative_url
            ## 
            # A relative URL for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            @square_logo_relative_url
            ## 
            # A string that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters.
            @username_hint_text
            ## 
            ## Gets the backgroundColor property value. Color that appears in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is #FFFFFF.
            ## @return a string
            ## 
            def background_color
                return @background_color
            end
            ## 
            ## Sets the backgroundColor property value. Color that appears in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is #FFFFFF.
            ## @param value Value to set for the backgroundColor property.
            ## @return a void
            ## 
            def background_color=(value)
                @background_color = value
            end
            ## 
            ## Gets the backgroundImage property value. Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster.
            ## @return a base64url
            ## 
            def background_image
                return @background_image
            end
            ## 
            ## Sets the backgroundImage property value. Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster.
            ## @param value Value to set for the backgroundImage property.
            ## @return a void
            ## 
            def background_image=(value)
                @background_image = value
            end
            ## 
            ## Gets the backgroundImageRelativeUrl property value. A relative URL for the backgroundImage property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @return a string
            ## 
            def background_image_relative_url
                return @background_image_relative_url
            end
            ## 
            ## Sets the backgroundImageRelativeUrl property value. A relative URL for the backgroundImage property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @param value Value to set for the backgroundImageRelativeUrl property.
            ## @return a void
            ## 
            def background_image_relative_url=(value)
                @background_image_relative_url = value
            end
            ## 
            ## Gets the bannerLogo property value. A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG not larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            ## @return a base64url
            ## 
            def banner_logo
                return @banner_logo
            end
            ## 
            ## Sets the bannerLogo property value. A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG not larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            ## @param value Value to set for the bannerLogo property.
            ## @return a void
            ## 
            def banner_logo=(value)
                @banner_logo = value
            end
            ## 
            ## Gets the bannerLogoRelativeUrl property value. A relative URL for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            ## @return a string
            ## 
            def banner_logo_relative_url
                return @banner_logo_relative_url
            end
            ## 
            ## Sets the bannerLogoRelativeUrl property value. A relative URL for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            ## @param value Value to set for the bannerLogoRelativeUrl property.
            ## @return a void
            ## 
            def banner_logo_relative_url=(value)
                @banner_logo_relative_url = value
            end
            ## 
            ## Gets the cdnList property value. A list of base URLs for all available CDN providers that are serving the assets of the current resource. Several CDN providers are used at the same time for high availability of read requests. Read-only.
            ## @return a string
            ## 
            def cdn_list
                return @cdn_list
            end
            ## 
            ## Sets the cdnList property value. A list of base URLs for all available CDN providers that are serving the assets of the current resource. Several CDN providers are used at the same time for high availability of read requests. Read-only.
            ## @param value Value to set for the cdnList property.
            ## @return a void
            ## 
            def cdn_list=(value)
                @cdn_list = value
            end
            ## 
            ## Instantiates a new organizationalBrandingProperties and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a organizational_branding_properties
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.organizationalBranding"
                            return OrganizationalBranding.new
                        when "#microsoft.graph.organizationalBrandingLocalization"
                            return OrganizationalBrandingLocalization.new
                    end
                end
                return OrganizationalBrandingProperties.new
            end
            ## 
            ## Gets the customAccountResetCredentialsUrl property value. A custom URL for resetting account credentials. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters.
            ## @return a string
            ## 
            def custom_account_reset_credentials_url
                return @custom_account_reset_credentials_url
            end
            ## 
            ## Sets the customAccountResetCredentialsUrl property value. A custom URL for resetting account credentials. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters.
            ## @param value Value to set for the customAccountResetCredentialsUrl property.
            ## @return a void
            ## 
            def custom_account_reset_credentials_url=(value)
                @custom_account_reset_credentials_url = value
            end
            ## 
            ## Gets the customCSS property value. CSS styling that appears on the sign-in page. The allowed format is .css format only and not larger than 25 KB.
            ## @return a base64url
            ## 
            def custom_c_s_s
                return @custom_c_s_s
            end
            ## 
            ## Sets the customCSS property value. CSS styling that appears on the sign-in page. The allowed format is .css format only and not larger than 25 KB.
            ## @param value Value to set for the customCSS property.
            ## @return a void
            ## 
            def custom_c_s_s=(value)
                @custom_c_s_s = value
            end
            ## 
            ## Gets the customCSSRelativeUrl property value. A relative URL for the customCSS property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @return a string
            ## 
            def custom_c_s_s_relative_url
                return @custom_c_s_s_relative_url
            end
            ## 
            ## Sets the customCSSRelativeUrl property value. A relative URL for the customCSS property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @param value Value to set for the customCSSRelativeUrl property.
            ## @return a void
            ## 
            def custom_c_s_s_relative_url=(value)
                @custom_c_s_s_relative_url = value
            end
            ## 
            ## Gets the customCannotAccessYourAccountText property value. A string to replace the default 'Can't access your account?' self-service password reset (SSPR) hyperlink text on the sign-in page. This text must be in Unicode format and not exceed 256 characters.
            ## @return a string
            ## 
            def custom_cannot_access_your_account_text
                return @custom_cannot_access_your_account_text
            end
            ## 
            ## Sets the customCannotAccessYourAccountText property value. A string to replace the default 'Can't access your account?' self-service password reset (SSPR) hyperlink text on the sign-in page. This text must be in Unicode format and not exceed 256 characters.
            ## @param value Value to set for the customCannotAccessYourAccountText property.
            ## @return a void
            ## 
            def custom_cannot_access_your_account_text=(value)
                @custom_cannot_access_your_account_text = value
            end
            ## 
            ## Gets the customCannotAccessYourAccountUrl property value. A custom URL to replace the default URL of the self-service password reset (SSPR) 'Can't access your account?' hyperlink on the sign-in page. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters. DO NOT USE. Use customAccountResetCredentialsUrl instead.
            ## @return a string
            ## 
            def custom_cannot_access_your_account_url
                return @custom_cannot_access_your_account_url
            end
            ## 
            ## Sets the customCannotAccessYourAccountUrl property value. A custom URL to replace the default URL of the self-service password reset (SSPR) 'Can't access your account?' hyperlink on the sign-in page. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters. DO NOT USE. Use customAccountResetCredentialsUrl instead.
            ## @param value Value to set for the customCannotAccessYourAccountUrl property.
            ## @return a void
            ## 
            def custom_cannot_access_your_account_url=(value)
                @custom_cannot_access_your_account_url = value
            end
            ## 
            ## Gets the customForgotMyPasswordText property value. A string to replace the default 'Forgot my password' hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters.
            ## @return a string
            ## 
            def custom_forgot_my_password_text
                return @custom_forgot_my_password_text
            end
            ## 
            ## Sets the customForgotMyPasswordText property value. A string to replace the default 'Forgot my password' hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters.
            ## @param value Value to set for the customForgotMyPasswordText property.
            ## @return a void
            ## 
            def custom_forgot_my_password_text=(value)
                @custom_forgot_my_password_text = value
            end
            ## 
            ## Gets the customPrivacyAndCookiesText property value. A string to replace the default 'Privacy and Cookies' hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters.
            ## @return a string
            ## 
            def custom_privacy_and_cookies_text
                return @custom_privacy_and_cookies_text
            end
            ## 
            ## Sets the customPrivacyAndCookiesText property value. A string to replace the default 'Privacy and Cookies' hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters.
            ## @param value Value to set for the customPrivacyAndCookiesText property.
            ## @return a void
            ## 
            def custom_privacy_and_cookies_text=(value)
                @custom_privacy_and_cookies_text = value
            end
            ## 
            ## Gets the customPrivacyAndCookiesUrl property value. A custom URL to replace the default URL of the 'Privacy and Cookies' hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters.
            ## @return a string
            ## 
            def custom_privacy_and_cookies_url
                return @custom_privacy_and_cookies_url
            end
            ## 
            ## Sets the customPrivacyAndCookiesUrl property value. A custom URL to replace the default URL of the 'Privacy and Cookies' hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters.
            ## @param value Value to set for the customPrivacyAndCookiesUrl property.
            ## @return a void
            ## 
            def custom_privacy_and_cookies_url=(value)
                @custom_privacy_and_cookies_url = value
            end
            ## 
            ## Gets the customResetItNowText property value. A string to replace the default 'reset it now' hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters. DO NOT USE: Customization of the 'reset it now' hyperlink text is currently not supported.
            ## @return a string
            ## 
            def custom_reset_it_now_text
                return @custom_reset_it_now_text
            end
            ## 
            ## Sets the customResetItNowText property value. A string to replace the default 'reset it now' hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters. DO NOT USE: Customization of the 'reset it now' hyperlink text is currently not supported.
            ## @param value Value to set for the customResetItNowText property.
            ## @return a void
            ## 
            def custom_reset_it_now_text=(value)
                @custom_reset_it_now_text = value
            end
            ## 
            ## Gets the customTermsOfUseText property value. A string to replace the the default 'Terms of Use' hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters.
            ## @return a string
            ## 
            def custom_terms_of_use_text
                return @custom_terms_of_use_text
            end
            ## 
            ## Sets the customTermsOfUseText property value. A string to replace the the default 'Terms of Use' hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters.
            ## @param value Value to set for the customTermsOfUseText property.
            ## @return a void
            ## 
            def custom_terms_of_use_text=(value)
                @custom_terms_of_use_text = value
            end
            ## 
            ## Gets the customTermsOfUseUrl property value. A custom URL to replace the default URL of the 'Terms of Use' hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128characters.
            ## @return a string
            ## 
            def custom_terms_of_use_url
                return @custom_terms_of_use_url
            end
            ## 
            ## Sets the customTermsOfUseUrl property value. A custom URL to replace the default URL of the 'Terms of Use' hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128characters.
            ## @param value Value to set for the customTermsOfUseUrl property.
            ## @return a void
            ## 
            def custom_terms_of_use_url=(value)
                @custom_terms_of_use_url = value
            end
            ## 
            ## Gets the favicon property value. A custom icon (favicon) to replace a default Microsoft product favicon on an Azure AD tenant.
            ## @return a base64url
            ## 
            def favicon
                return @favicon
            end
            ## 
            ## Sets the favicon property value. A custom icon (favicon) to replace a default Microsoft product favicon on an Azure AD tenant.
            ## @param value Value to set for the favicon property.
            ## @return a void
            ## 
            def favicon=(value)
                @favicon = value
            end
            ## 
            ## Gets the faviconRelativeUrl property value. A relative url for the favicon above that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @return a string
            ## 
            def favicon_relative_url
                return @favicon_relative_url
            end
            ## 
            ## Sets the faviconRelativeUrl property value. A relative url for the favicon above that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @param value Value to set for the faviconRelativeUrl property.
            ## @return a void
            ## 
            def favicon_relative_url=(value)
                @favicon_relative_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "backgroundColor" => lambda {|n| @background_color = n.get_string_value() },
                    "backgroundImage" => lambda {|n| @background_image = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "backgroundImageRelativeUrl" => lambda {|n| @background_image_relative_url = n.get_string_value() },
                    "bannerLogo" => lambda {|n| @banner_logo = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "bannerLogoRelativeUrl" => lambda {|n| @banner_logo_relative_url = n.get_string_value() },
                    "cdnList" => lambda {|n| @cdn_list = n.get_collection_of_primitive_values(String) },
                    "customAccountResetCredentialsUrl" => lambda {|n| @custom_account_reset_credentials_url = n.get_string_value() },
                    "customCSS" => lambda {|n| @custom_c_s_s = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "customCSSRelativeUrl" => lambda {|n| @custom_c_s_s_relative_url = n.get_string_value() },
                    "customCannotAccessYourAccountText" => lambda {|n| @custom_cannot_access_your_account_text = n.get_string_value() },
                    "customCannotAccessYourAccountUrl" => lambda {|n| @custom_cannot_access_your_account_url = n.get_string_value() },
                    "customForgotMyPasswordText" => lambda {|n| @custom_forgot_my_password_text = n.get_string_value() },
                    "customPrivacyAndCookiesText" => lambda {|n| @custom_privacy_and_cookies_text = n.get_string_value() },
                    "customPrivacyAndCookiesUrl" => lambda {|n| @custom_privacy_and_cookies_url = n.get_string_value() },
                    "customResetItNowText" => lambda {|n| @custom_reset_it_now_text = n.get_string_value() },
                    "customTermsOfUseText" => lambda {|n| @custom_terms_of_use_text = n.get_string_value() },
                    "customTermsOfUseUrl" => lambda {|n| @custom_terms_of_use_url = n.get_string_value() },
                    "favicon" => lambda {|n| @favicon = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "faviconRelativeUrl" => lambda {|n| @favicon_relative_url = n.get_string_value() },
                    "headerBackgroundColor" => lambda {|n| @header_background_color = n.get_string_value() },
                    "headerLogo" => lambda {|n| @header_logo = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "headerLogoRelativeUrl" => lambda {|n| @header_logo_relative_url = n.get_string_value() },
                    "loginPageLayoutConfiguration" => lambda {|n| @login_page_layout_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LoginPageLayoutConfiguration.create_from_discriminator_value(pn) }) },
                    "loginPageTextVisibilitySettings" => lambda {|n| @login_page_text_visibility_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LoginPageTextVisibilitySettings.create_from_discriminator_value(pn) }) },
                    "signInPageText" => lambda {|n| @sign_in_page_text = n.get_string_value() },
                    "squareLogo" => lambda {|n| @square_logo = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "squareLogoDark" => lambda {|n| @square_logo_dark = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "squareLogoDarkRelativeUrl" => lambda {|n| @square_logo_dark_relative_url = n.get_string_value() },
                    "squareLogoRelativeUrl" => lambda {|n| @square_logo_relative_url = n.get_string_value() },
                    "usernameHintText" => lambda {|n| @username_hint_text = n.get_string_value() },
                })
            end
            ## 
            ## Gets the headerBackgroundColor property value. The RGB color to apply to customize the color of the header.
            ## @return a string
            ## 
            def header_background_color
                return @header_background_color
            end
            ## 
            ## Sets the headerBackgroundColor property value. The RGB color to apply to customize the color of the header.
            ## @param value Value to set for the headerBackgroundColor property.
            ## @return a void
            ## 
            def header_background_color=(value)
                @header_background_color = value
            end
            ## 
            ## Gets the headerLogo property value. A company logo that appears in the header of the sign-in page. The allowed types are PNG or JPEG not larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            ## @return a base64url
            ## 
            def header_logo
                return @header_logo
            end
            ## 
            ## Sets the headerLogo property value. A company logo that appears in the header of the sign-in page. The allowed types are PNG or JPEG not larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            ## @param value Value to set for the headerLogo property.
            ## @return a void
            ## 
            def header_logo=(value)
                @header_logo = value
            end
            ## 
            ## Gets the headerLogoRelativeUrl property value. A relative URL for the headerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            ## @return a string
            ## 
            def header_logo_relative_url
                return @header_logo_relative_url
            end
            ## 
            ## Sets the headerLogoRelativeUrl property value. A relative URL for the headerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            ## @param value Value to set for the headerLogoRelativeUrl property.
            ## @return a void
            ## 
            def header_logo_relative_url=(value)
                @header_logo_relative_url = value
            end
            ## 
            ## Gets the loginPageLayoutConfiguration property value. Represents the layout configuration to be displayed on the login page for a tenant.
            ## @return a login_page_layout_configuration
            ## 
            def login_page_layout_configuration
                return @login_page_layout_configuration
            end
            ## 
            ## Sets the loginPageLayoutConfiguration property value. Represents the layout configuration to be displayed on the login page for a tenant.
            ## @param value Value to set for the loginPageLayoutConfiguration property.
            ## @return a void
            ## 
            def login_page_layout_configuration=(value)
                @login_page_layout_configuration = value
            end
            ## 
            ## Gets the loginPageTextVisibilitySettings property value. Represents the various texts that can be hidden on the login page for a tenant.
            ## @return a login_page_text_visibility_settings
            ## 
            def login_page_text_visibility_settings
                return @login_page_text_visibility_settings
            end
            ## 
            ## Sets the loginPageTextVisibilitySettings property value. Represents the various texts that can be hidden on the login page for a tenant.
            ## @param value Value to set for the loginPageTextVisibilitySettings property.
            ## @return a void
            ## 
            def login_page_text_visibility_settings=(value)
                @login_page_text_visibility_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("backgroundColor", @background_color)
                writer.write_object_value("backgroundImage", @background_image)
                writer.write_string_value("backgroundImageRelativeUrl", @background_image_relative_url)
                writer.write_object_value("bannerLogo", @banner_logo)
                writer.write_string_value("bannerLogoRelativeUrl", @banner_logo_relative_url)
                writer.write_collection_of_primitive_values("cdnList", @cdn_list)
                writer.write_string_value("customAccountResetCredentialsUrl", @custom_account_reset_credentials_url)
                writer.write_object_value("customCSS", @custom_c_s_s)
                writer.write_string_value("customCSSRelativeUrl", @custom_c_s_s_relative_url)
                writer.write_string_value("customCannotAccessYourAccountText", @custom_cannot_access_your_account_text)
                writer.write_string_value("customCannotAccessYourAccountUrl", @custom_cannot_access_your_account_url)
                writer.write_string_value("customForgotMyPasswordText", @custom_forgot_my_password_text)
                writer.write_string_value("customPrivacyAndCookiesText", @custom_privacy_and_cookies_text)
                writer.write_string_value("customPrivacyAndCookiesUrl", @custom_privacy_and_cookies_url)
                writer.write_string_value("customResetItNowText", @custom_reset_it_now_text)
                writer.write_string_value("customTermsOfUseText", @custom_terms_of_use_text)
                writer.write_string_value("customTermsOfUseUrl", @custom_terms_of_use_url)
                writer.write_object_value("favicon", @favicon)
                writer.write_string_value("faviconRelativeUrl", @favicon_relative_url)
                writer.write_string_value("headerBackgroundColor", @header_background_color)
                writer.write_object_value("headerLogo", @header_logo)
                writer.write_string_value("headerLogoRelativeUrl", @header_logo_relative_url)
                writer.write_object_value("loginPageLayoutConfiguration", @login_page_layout_configuration)
                writer.write_object_value("loginPageTextVisibilitySettings", @login_page_text_visibility_settings)
                writer.write_string_value("signInPageText", @sign_in_page_text)
                writer.write_object_value("squareLogo", @square_logo)
                writer.write_object_value("squareLogoDark", @square_logo_dark)
                writer.write_string_value("squareLogoDarkRelativeUrl", @square_logo_dark_relative_url)
                writer.write_string_value("squareLogoRelativeUrl", @square_logo_relative_url)
                writer.write_string_value("usernameHintText", @username_hint_text)
            end
            ## 
            ## Gets the signInPageText property value. Text that appears at the bottom of the sign-in box. Use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be in Unicode format and not exceed 1024 characters.
            ## @return a string
            ## 
            def sign_in_page_text
                return @sign_in_page_text
            end
            ## 
            ## Sets the signInPageText property value. Text that appears at the bottom of the sign-in box. Use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be in Unicode format and not exceed 1024 characters.
            ## @param value Value to set for the signInPageText property.
            ## @return a void
            ## 
            def sign_in_page_text=(value)
                @sign_in_page_text = value
            end
            ## 
            ## Gets the squareLogo property value. A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            ## @return a base64url
            ## 
            def square_logo
                return @square_logo
            end
            ## 
            ## Sets the squareLogo property value. A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            ## @param value Value to set for the squareLogo property.
            ## @return a void
            ## 
            def square_logo=(value)
                @square_logo = value
            end
            ## 
            ## Gets the squareLogoDark property value. A square dark version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            ## @return a base64url
            ## 
            def square_logo_dark
                return @square_logo_dark
            end
            ## 
            ## Sets the squareLogoDark property value. A square dark version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            ## @param value Value to set for the squareLogoDark property.
            ## @return a void
            ## 
            def square_logo_dark=(value)
                @square_logo_dark = value
            end
            ## 
            ## Gets the squareLogoDarkRelativeUrl property value. A relative URL for the squareLogoDark property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @return a string
            ## 
            def square_logo_dark_relative_url
                return @square_logo_dark_relative_url
            end
            ## 
            ## Sets the squareLogoDarkRelativeUrl property value. A relative URL for the squareLogoDark property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @param value Value to set for the squareLogoDarkRelativeUrl property.
            ## @return a void
            ## 
            def square_logo_dark_relative_url=(value)
                @square_logo_dark_relative_url = value
            end
            ## 
            ## Gets the squareLogoRelativeUrl property value. A relative URL for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @return a string
            ## 
            def square_logo_relative_url
                return @square_logo_relative_url
            end
            ## 
            ## Sets the squareLogoRelativeUrl property value. A relative URL for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @param value Value to set for the squareLogoRelativeUrl property.
            ## @return a void
            ## 
            def square_logo_relative_url=(value)
                @square_logo_relative_url = value
            end
            ## 
            ## Gets the usernameHintText property value. A string that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters.
            ## @return a string
            ## 
            def username_hint_text
                return @username_hint_text
            end
            ## 
            ## Sets the usernameHintText property value. A string that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters.
            ## @param value Value to set for the usernameHintText property.
            ## @return a void
            ## 
            def username_hint_text=(value)
                @username_hint_text = value
            end
        end
    end
end
