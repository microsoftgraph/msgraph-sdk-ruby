require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.
        class IntuneBrand
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Email address of the person/organization responsible for IT support.
            @contact_i_t_email_address
            ## 
            # Name of the person/organization responsible for IT support.
            @contact_i_t_name
            ## 
            # Text comments regarding the person/organization responsible for IT support.
            @contact_i_t_notes
            ## 
            # Phone number of the person/organization responsible for IT support.
            @contact_i_t_phone_number
            ## 
            # Logo image displayed in Company Portal apps which have a dark background behind the logo.
            @dark_background_logo
            ## 
            # Company/organization name that is displayed to end users.
            @display_name
            ## 
            # Logo image displayed in Company Portal apps which have a light background behind the logo.
            @light_background_logo
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Display name of the company/organization’s IT helpdesk site.
            @online_support_site_name
            ## 
            # URL to the company/organization’s IT helpdesk site.
            @online_support_site_url
            ## 
            # URL to the company/organization’s privacy policy.
            @privacy_url
            ## 
            # Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            @show_display_name_next_to_logo
            ## 
            # Boolean that represents whether the administrator-supplied logo images are shown or not shown.
            @show_logo
            ## 
            # Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            @show_name_next_to_logo
            ## 
            # Primary theme color used in the Company Portal applications and web portal.
            @theme_color
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
            ## Instantiates a new intuneBrand and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contactITEmailAddress property value. Email address of the person/organization responsible for IT support.
            ## @return a string
            ## 
            def contact_i_t_email_address
                return @contact_i_t_email_address
            end
            ## 
            ## Sets the contactITEmailAddress property value. Email address of the person/organization responsible for IT support.
            ## @param value Value to set for the contact_i_t_email_address property.
            ## @return a void
            ## 
            def contact_i_t_email_address=(value)
                @contact_i_t_email_address = value
            end
            ## 
            ## Gets the contactITName property value. Name of the person/organization responsible for IT support.
            ## @return a string
            ## 
            def contact_i_t_name
                return @contact_i_t_name
            end
            ## 
            ## Sets the contactITName property value. Name of the person/organization responsible for IT support.
            ## @param value Value to set for the contact_i_t_name property.
            ## @return a void
            ## 
            def contact_i_t_name=(value)
                @contact_i_t_name = value
            end
            ## 
            ## Gets the contactITNotes property value. Text comments regarding the person/organization responsible for IT support.
            ## @return a string
            ## 
            def contact_i_t_notes
                return @contact_i_t_notes
            end
            ## 
            ## Sets the contactITNotes property value. Text comments regarding the person/organization responsible for IT support.
            ## @param value Value to set for the contact_i_t_notes property.
            ## @return a void
            ## 
            def contact_i_t_notes=(value)
                @contact_i_t_notes = value
            end
            ## 
            ## Gets the contactITPhoneNumber property value. Phone number of the person/organization responsible for IT support.
            ## @return a string
            ## 
            def contact_i_t_phone_number
                return @contact_i_t_phone_number
            end
            ## 
            ## Sets the contactITPhoneNumber property value. Phone number of the person/organization responsible for IT support.
            ## @param value Value to set for the contact_i_t_phone_number property.
            ## @return a void
            ## 
            def contact_i_t_phone_number=(value)
                @contact_i_t_phone_number = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a intune_brand
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IntuneBrand.new
            end
            ## 
            ## Gets the darkBackgroundLogo property value. Logo image displayed in Company Portal apps which have a dark background behind the logo.
            ## @return a mime_content
            ## 
            def dark_background_logo
                return @dark_background_logo
            end
            ## 
            ## Sets the darkBackgroundLogo property value. Logo image displayed in Company Portal apps which have a dark background behind the logo.
            ## @param value Value to set for the dark_background_logo property.
            ## @return a void
            ## 
            def dark_background_logo=(value)
                @dark_background_logo = value
            end
            ## 
            ## Gets the displayName property value. Company/organization name that is displayed to end users.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Company/organization name that is displayed to end users.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contactITEmailAddress" => lambda {|n| @contact_i_t_email_address = n.get_string_value() },
                    "contactITName" => lambda {|n| @contact_i_t_name = n.get_string_value() },
                    "contactITNotes" => lambda {|n| @contact_i_t_notes = n.get_string_value() },
                    "contactITPhoneNumber" => lambda {|n| @contact_i_t_phone_number = n.get_string_value() },
                    "darkBackgroundLogo" => lambda {|n| @dark_background_logo = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lightBackgroundLogo" => lambda {|n| @light_background_logo = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onlineSupportSiteName" => lambda {|n| @online_support_site_name = n.get_string_value() },
                    "onlineSupportSiteUrl" => lambda {|n| @online_support_site_url = n.get_string_value() },
                    "privacyUrl" => lambda {|n| @privacy_url = n.get_string_value() },
                    "showDisplayNameNextToLogo" => lambda {|n| @show_display_name_next_to_logo = n.get_boolean_value() },
                    "showLogo" => lambda {|n| @show_logo = n.get_boolean_value() },
                    "showNameNextToLogo" => lambda {|n| @show_name_next_to_logo = n.get_boolean_value() },
                    "themeColor" => lambda {|n| @theme_color = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RgbColor.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the lightBackgroundLogo property value. Logo image displayed in Company Portal apps which have a light background behind the logo.
            ## @return a mime_content
            ## 
            def light_background_logo
                return @light_background_logo
            end
            ## 
            ## Sets the lightBackgroundLogo property value. Logo image displayed in Company Portal apps which have a light background behind the logo.
            ## @param value Value to set for the light_background_logo property.
            ## @return a void
            ## 
            def light_background_logo=(value)
                @light_background_logo = value
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
            ## Gets the onlineSupportSiteName property value. Display name of the company/organization’s IT helpdesk site.
            ## @return a string
            ## 
            def online_support_site_name
                return @online_support_site_name
            end
            ## 
            ## Sets the onlineSupportSiteName property value. Display name of the company/organization’s IT helpdesk site.
            ## @param value Value to set for the online_support_site_name property.
            ## @return a void
            ## 
            def online_support_site_name=(value)
                @online_support_site_name = value
            end
            ## 
            ## Gets the onlineSupportSiteUrl property value. URL to the company/organization’s IT helpdesk site.
            ## @return a string
            ## 
            def online_support_site_url
                return @online_support_site_url
            end
            ## 
            ## Sets the onlineSupportSiteUrl property value. URL to the company/organization’s IT helpdesk site.
            ## @param value Value to set for the online_support_site_url property.
            ## @return a void
            ## 
            def online_support_site_url=(value)
                @online_support_site_url = value
            end
            ## 
            ## Gets the privacyUrl property value. URL to the company/organization’s privacy policy.
            ## @return a string
            ## 
            def privacy_url
                return @privacy_url
            end
            ## 
            ## Sets the privacyUrl property value. URL to the company/organization’s privacy policy.
            ## @param value Value to set for the privacy_url property.
            ## @return a void
            ## 
            def privacy_url=(value)
                @privacy_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("contactITEmailAddress", @contact_i_t_email_address)
                writer.write_string_value("contactITName", @contact_i_t_name)
                writer.write_string_value("contactITNotes", @contact_i_t_notes)
                writer.write_string_value("contactITPhoneNumber", @contact_i_t_phone_number)
                writer.write_object_value("darkBackgroundLogo", @dark_background_logo)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("lightBackgroundLogo", @light_background_logo)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("onlineSupportSiteName", @online_support_site_name)
                writer.write_string_value("onlineSupportSiteUrl", @online_support_site_url)
                writer.write_string_value("privacyUrl", @privacy_url)
                writer.write_boolean_value("showDisplayNameNextToLogo", @show_display_name_next_to_logo)
                writer.write_boolean_value("showLogo", @show_logo)
                writer.write_boolean_value("showNameNextToLogo", @show_name_next_to_logo)
                writer.write_object_value("themeColor", @theme_color)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the showDisplayNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            ## @return a boolean
            ## 
            def show_display_name_next_to_logo
                return @show_display_name_next_to_logo
            end
            ## 
            ## Sets the showDisplayNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            ## @param value Value to set for the show_display_name_next_to_logo property.
            ## @return a void
            ## 
            def show_display_name_next_to_logo=(value)
                @show_display_name_next_to_logo = value
            end
            ## 
            ## Gets the showLogo property value. Boolean that represents whether the administrator-supplied logo images are shown or not shown.
            ## @return a boolean
            ## 
            def show_logo
                return @show_logo
            end
            ## 
            ## Sets the showLogo property value. Boolean that represents whether the administrator-supplied logo images are shown or not shown.
            ## @param value Value to set for the show_logo property.
            ## @return a void
            ## 
            def show_logo=(value)
                @show_logo = value
            end
            ## 
            ## Gets the showNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            ## @return a boolean
            ## 
            def show_name_next_to_logo
                return @show_name_next_to_logo
            end
            ## 
            ## Sets the showNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            ## @param value Value to set for the show_name_next_to_logo property.
            ## @return a void
            ## 
            def show_name_next_to_logo=(value)
                @show_name_next_to_logo = value
            end
            ## 
            ## Gets the themeColor property value. Primary theme color used in the Company Portal applications and web portal.
            ## @return a rgb_color
            ## 
            def theme_color
                return @theme_color
            end
            ## 
            ## Sets the themeColor property value. Primary theme color used in the Company Portal applications and web portal.
            ## @param value Value to set for the theme_color property.
            ## @return a void
            ## 
            def theme_color=(value)
                @theme_color = value
            end
        end
    end
end
