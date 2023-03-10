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
            # Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters.
            @sign_in_page_text
            ## 
            # A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 x 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo.
            @square_logo
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
            ## @param parseNode The parse node to use to read the discriminator value and create the object
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
                    "signInPageText" => lambda {|n| @sign_in_page_text = n.get_string_value() },
                    "squareLogo" => lambda {|n| @square_logo = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "squareLogoRelativeUrl" => lambda {|n| @square_logo_relative_url = n.get_string_value() },
                    "usernameHintText" => lambda {|n| @username_hint_text = n.get_string_value() },
                })
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
                writer.write_string_value("signInPageText", @sign_in_page_text)
                writer.write_object_value("squareLogo", @square_logo)
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
