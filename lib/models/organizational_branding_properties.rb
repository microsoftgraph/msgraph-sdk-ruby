require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OrganizationalBrandingProperties < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Color that will appear in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is #FFFFFF.
            @background_color
            ## 
            # Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster.
            @background_image
            ## 
            # A relative URL for the backgroundImage property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            @background_image_relative_url
            ## 
            # A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG no larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            @banner_logo
            ## 
            # A relative url for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            @banner_logo_relative_url
            ## 
            # A list of base URLs for all available CDN providers that are serving the assets of the current resource. Several CDN providers are used at the same time for high availability of read requests. Read-only.
            @cdn_list
            ## 
            # The customAccountResetCredentialsUrl property
            @custom_account_reset_credentials_url
            ## 
            # The customCSS property
            @custom_c_s_s
            ## 
            # The customCSSRelativeUrl property
            @custom_c_s_s_relative_url
            ## 
            # The customCannotAccessYourAccountText property
            @custom_cannot_access_your_account_text
            ## 
            # The customCannotAccessYourAccountUrl property
            @custom_cannot_access_your_account_url
            ## 
            # The customForgotMyPasswordText property
            @custom_forgot_my_password_text
            ## 
            # The customPrivacyAndCookiesText property
            @custom_privacy_and_cookies_text
            ## 
            # The customPrivacyAndCookiesUrl property
            @custom_privacy_and_cookies_url
            ## 
            # The customResetItNowText property
            @custom_reset_it_now_text
            ## 
            # The customTermsOfUseText property
            @custom_terms_of_use_text
            ## 
            # The customTermsOfUseUrl property
            @custom_terms_of_use_url
            ## 
            # The favicon property
            @favicon
            ## 
            # The faviconRelativeUrl property
            @favicon_relative_url
            ## 
            # The headerBackgroundColor property
            @header_background_color
            ## 
            # The headerLogo property
            @header_logo
            ## 
            # The headerLogoRelativeUrl property
            @header_logo_relative_url
            ## 
            # The loginPageLayoutConfiguration property
            @login_page_layout_configuration
            ## 
            # The loginPageTextVisibilitySettings property
            @login_page_text_visibility_settings
            ## 
            # Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters.
            @sign_in_page_text
            ## 
            # A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 x 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            @square_logo
            ## 
            # The squareLogoDark property
            @square_logo_dark
            ## 
            # The squareLogoDarkRelativeUrl property
            @square_logo_dark_relative_url
            ## 
            # A relative url for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            @square_logo_relative_url
            ## 
            # String that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters.
            @username_hint_text
            ## 
            ## Gets the backgroundColor property value. Color that will appear in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is #FFFFFF.
            ## @return a string
            ## 
            def background_color
                return @background_color
            end
            ## 
            ## Sets the backgroundColor property value. Color that will appear in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is #FFFFFF.
            ## @param value Value to set for the background_color property.
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
            ## @param value Value to set for the background_image property.
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
            ## @param value Value to set for the background_image_relative_url property.
            ## @return a void
            ## 
            def background_image_relative_url=(value)
                @background_image_relative_url = value
            end
            ## 
            ## Gets the bannerLogo property value. A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG no larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            ## @return a base64url
            ## 
            def banner_logo
                return @banner_logo
            end
            ## 
            ## Sets the bannerLogo property value. A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG no larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo.
            ## @param value Value to set for the banner_logo property.
            ## @return a void
            ## 
            def banner_logo=(value)
                @banner_logo = value
            end
            ## 
            ## Gets the bannerLogoRelativeUrl property value. A relative url for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            ## @return a string
            ## 
            def banner_logo_relative_url
                return @banner_logo_relative_url
            end
            ## 
            ## Sets the bannerLogoRelativeUrl property value. A relative url for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the read-only version served by a CDN. Read-only.
            ## @param value Value to set for the banner_logo_relative_url property.
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
            ## @param value Value to set for the cdn_list property.
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
            ## Gets the customAccountResetCredentialsUrl property value. The customAccountResetCredentialsUrl property
            ## @return a string
            ## 
            def custom_account_reset_credentials_url
                return @custom_account_reset_credentials_url
            end
            ## 
            ## Sets the customAccountResetCredentialsUrl property value. The customAccountResetCredentialsUrl property
            ## @param value Value to set for the custom_account_reset_credentials_url property.
            ## @return a void
            ## 
            def custom_account_reset_credentials_url=(value)
                @custom_account_reset_credentials_url = value
            end
            ## 
            ## Gets the customCSS property value. The customCSS property
            ## @return a base64url
            ## 
            def custom_c_s_s
                return @custom_c_s_s
            end
            ## 
            ## Sets the customCSS property value. The customCSS property
            ## @param value Value to set for the custom_c_s_s property.
            ## @return a void
            ## 
            def custom_c_s_s=(value)
                @custom_c_s_s = value
            end
            ## 
            ## Gets the customCSSRelativeUrl property value. The customCSSRelativeUrl property
            ## @return a string
            ## 
            def custom_c_s_s_relative_url
                return @custom_c_s_s_relative_url
            end
            ## 
            ## Sets the customCSSRelativeUrl property value. The customCSSRelativeUrl property
            ## @param value Value to set for the custom_c_s_s_relative_url property.
            ## @return a void
            ## 
            def custom_c_s_s_relative_url=(value)
                @custom_c_s_s_relative_url = value
            end
            ## 
            ## Gets the customCannotAccessYourAccountText property value. The customCannotAccessYourAccountText property
            ## @return a string
            ## 
            def custom_cannot_access_your_account_text
                return @custom_cannot_access_your_account_text
            end
            ## 
            ## Sets the customCannotAccessYourAccountText property value. The customCannotAccessYourAccountText property
            ## @param value Value to set for the custom_cannot_access_your_account_text property.
            ## @return a void
            ## 
            def custom_cannot_access_your_account_text=(value)
                @custom_cannot_access_your_account_text = value
            end
            ## 
            ## Gets the customCannotAccessYourAccountUrl property value. The customCannotAccessYourAccountUrl property
            ## @return a string
            ## 
            def custom_cannot_access_your_account_url
                return @custom_cannot_access_your_account_url
            end
            ## 
            ## Sets the customCannotAccessYourAccountUrl property value. The customCannotAccessYourAccountUrl property
            ## @param value Value to set for the custom_cannot_access_your_account_url property.
            ## @return a void
            ## 
            def custom_cannot_access_your_account_url=(value)
                @custom_cannot_access_your_account_url = value
            end
            ## 
            ## Gets the customForgotMyPasswordText property value. The customForgotMyPasswordText property
            ## @return a string
            ## 
            def custom_forgot_my_password_text
                return @custom_forgot_my_password_text
            end
            ## 
            ## Sets the customForgotMyPasswordText property value. The customForgotMyPasswordText property
            ## @param value Value to set for the custom_forgot_my_password_text property.
            ## @return a void
            ## 
            def custom_forgot_my_password_text=(value)
                @custom_forgot_my_password_text = value
            end
            ## 
            ## Gets the customPrivacyAndCookiesText property value. The customPrivacyAndCookiesText property
            ## @return a string
            ## 
            def custom_privacy_and_cookies_text
                return @custom_privacy_and_cookies_text
            end
            ## 
            ## Sets the customPrivacyAndCookiesText property value. The customPrivacyAndCookiesText property
            ## @param value Value to set for the custom_privacy_and_cookies_text property.
            ## @return a void
            ## 
            def custom_privacy_and_cookies_text=(value)
                @custom_privacy_and_cookies_text = value
            end
            ## 
            ## Gets the customPrivacyAndCookiesUrl property value. The customPrivacyAndCookiesUrl property
            ## @return a string
            ## 
            def custom_privacy_and_cookies_url
                return @custom_privacy_and_cookies_url
            end
            ## 
            ## Sets the customPrivacyAndCookiesUrl property value. The customPrivacyAndCookiesUrl property
            ## @param value Value to set for the custom_privacy_and_cookies_url property.
            ## @return a void
            ## 
            def custom_privacy_and_cookies_url=(value)
                @custom_privacy_and_cookies_url = value
            end
            ## 
            ## Gets the customResetItNowText property value. The customResetItNowText property
            ## @return a string
            ## 
            def custom_reset_it_now_text
                return @custom_reset_it_now_text
            end
            ## 
            ## Sets the customResetItNowText property value. The customResetItNowText property
            ## @param value Value to set for the custom_reset_it_now_text property.
            ## @return a void
            ## 
            def custom_reset_it_now_text=(value)
                @custom_reset_it_now_text = value
            end
            ## 
            ## Gets the customTermsOfUseText property value. The customTermsOfUseText property
            ## @return a string
            ## 
            def custom_terms_of_use_text
                return @custom_terms_of_use_text
            end
            ## 
            ## Sets the customTermsOfUseText property value. The customTermsOfUseText property
            ## @param value Value to set for the custom_terms_of_use_text property.
            ## @return a void
            ## 
            def custom_terms_of_use_text=(value)
                @custom_terms_of_use_text = value
            end
            ## 
            ## Gets the customTermsOfUseUrl property value. The customTermsOfUseUrl property
            ## @return a string
            ## 
            def custom_terms_of_use_url
                return @custom_terms_of_use_url
            end
            ## 
            ## Sets the customTermsOfUseUrl property value. The customTermsOfUseUrl property
            ## @param value Value to set for the custom_terms_of_use_url property.
            ## @return a void
            ## 
            def custom_terms_of_use_url=(value)
                @custom_terms_of_use_url = value
            end
            ## 
            ## Gets the favicon property value. The favicon property
            ## @return a base64url
            ## 
            def favicon
                return @favicon
            end
            ## 
            ## Sets the favicon property value. The favicon property
            ## @param value Value to set for the favicon property.
            ## @return a void
            ## 
            def favicon=(value)
                @favicon = value
            end
            ## 
            ## Gets the faviconRelativeUrl property value. The faviconRelativeUrl property
            ## @return a string
            ## 
            def favicon_relative_url
                return @favicon_relative_url
            end
            ## 
            ## Sets the faviconRelativeUrl property value. The faviconRelativeUrl property
            ## @param value Value to set for the favicon_relative_url property.
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
            ## Gets the headerBackgroundColor property value. The headerBackgroundColor property
            ## @return a string
            ## 
            def header_background_color
                return @header_background_color
            end
            ## 
            ## Sets the headerBackgroundColor property value. The headerBackgroundColor property
            ## @param value Value to set for the header_background_color property.
            ## @return a void
            ## 
            def header_background_color=(value)
                @header_background_color = value
            end
            ## 
            ## Gets the headerLogo property value. The headerLogo property
            ## @return a base64url
            ## 
            def header_logo
                return @header_logo
            end
            ## 
            ## Sets the headerLogo property value. The headerLogo property
            ## @param value Value to set for the header_logo property.
            ## @return a void
            ## 
            def header_logo=(value)
                @header_logo = value
            end
            ## 
            ## Gets the headerLogoRelativeUrl property value. The headerLogoRelativeUrl property
            ## @return a string
            ## 
            def header_logo_relative_url
                return @header_logo_relative_url
            end
            ## 
            ## Sets the headerLogoRelativeUrl property value. The headerLogoRelativeUrl property
            ## @param value Value to set for the header_logo_relative_url property.
            ## @return a void
            ## 
            def header_logo_relative_url=(value)
                @header_logo_relative_url = value
            end
            ## 
            ## Gets the loginPageLayoutConfiguration property value. The loginPageLayoutConfiguration property
            ## @return a login_page_layout_configuration
            ## 
            def login_page_layout_configuration
                return @login_page_layout_configuration
            end
            ## 
            ## Sets the loginPageLayoutConfiguration property value. The loginPageLayoutConfiguration property
            ## @param value Value to set for the login_page_layout_configuration property.
            ## @return a void
            ## 
            def login_page_layout_configuration=(value)
                @login_page_layout_configuration = value
            end
            ## 
            ## Gets the loginPageTextVisibilitySettings property value. The loginPageTextVisibilitySettings property
            ## @return a login_page_text_visibility_settings
            ## 
            def login_page_text_visibility_settings
                return @login_page_text_visibility_settings
            end
            ## 
            ## Sets the loginPageTextVisibilitySettings property value. The loginPageTextVisibilitySettings property
            ## @param value Value to set for the login_page_text_visibility_settings property.
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
            ## Gets the signInPageText property value. Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters.
            ## @return a string
            ## 
            def sign_in_page_text
                return @sign_in_page_text
            end
            ## 
            ## Sets the signInPageText property value. Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters.
            ## @param value Value to set for the sign_in_page_text property.
            ## @return a void
            ## 
            def sign_in_page_text=(value)
                @sign_in_page_text = value
            end
            ## 
            ## Gets the squareLogo property value. A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 x 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            ## @return a base64url
            ## 
            def square_logo
                return @square_logo
            end
            ## 
            ## Sets the squareLogo property value. A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 x 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            ## @param value Value to set for the square_logo property.
            ## @return a void
            ## 
            def square_logo=(value)
                @square_logo = value
            end
            ## 
            ## Gets the squareLogoDark property value. The squareLogoDark property
            ## @return a base64url
            ## 
            def square_logo_dark
                return @square_logo_dark
            end
            ## 
            ## Sets the squareLogoDark property value. The squareLogoDark property
            ## @param value Value to set for the square_logo_dark property.
            ## @return a void
            ## 
            def square_logo_dark=(value)
                @square_logo_dark = value
            end
            ## 
            ## Gets the squareLogoDarkRelativeUrl property value. The squareLogoDarkRelativeUrl property
            ## @return a string
            ## 
            def square_logo_dark_relative_url
                return @square_logo_dark_relative_url
            end
            ## 
            ## Sets the squareLogoDarkRelativeUrl property value. The squareLogoDarkRelativeUrl property
            ## @param value Value to set for the square_logo_dark_relative_url property.
            ## @return a void
            ## 
            def square_logo_dark_relative_url=(value)
                @square_logo_dark_relative_url = value
            end
            ## 
            ## Gets the squareLogoRelativeUrl property value. A relative url for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @return a string
            ## 
            def square_logo_relative_url
                return @square_logo_relative_url
            end
            ## 
            ## Sets the squareLogoRelativeUrl property value. A relative url for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only.
            ## @param value Value to set for the square_logo_relative_url property.
            ## @return a void
            ## 
            def square_logo_relative_url=(value)
                @square_logo_relative_url = value
            end
            ## 
            ## Gets the usernameHintText property value. String that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters.
            ## @return a string
            ## 
            def username_hint_text
                return @username_hint_text
            end
            ## 
            ## Sets the usernameHintText property value. String that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters.
            ## @param value Value to set for the username_hint_text property.
            ## @return a void
            ## 
            def username_hint_text=(value)
                @username_hint_text = value
            end
        end
    end
end
