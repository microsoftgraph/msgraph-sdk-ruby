require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LearningProvider < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name that appears in Viva Learning. Required.
            @display_name
            ## 
            # Learning catalog items for the provider.
            @learning_contents
            ## 
            # Authentication URL to access the courses for the provider. Optional.
            @login_web_url
            ## 
            # The long logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            @long_logo_web_url_for_dark_theme
            ## 
            # The long logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            @long_logo_web_url_for_light_theme
            ## 
            # The square logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            @square_logo_web_url_for_dark_theme
            ## 
            # The square logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            @square_logo_web_url_for_light_theme
            ## 
            ## Instantiates a new learningProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a learning_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LearningProvider.new
            end
            ## 
            ## Gets the displayName property value. The display name that appears in Viva Learning. Required.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name that appears in Viva Learning. Required.
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
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "learningContents" => lambda {|n| @learning_contents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LearningContent.create_from_discriminator_value(pn) }) },
                    "loginWebUrl" => lambda {|n| @login_web_url = n.get_string_value() },
                    "longLogoWebUrlForDarkTheme" => lambda {|n| @long_logo_web_url_for_dark_theme = n.get_string_value() },
                    "longLogoWebUrlForLightTheme" => lambda {|n| @long_logo_web_url_for_light_theme = n.get_string_value() },
                    "squareLogoWebUrlForDarkTheme" => lambda {|n| @square_logo_web_url_for_dark_theme = n.get_string_value() },
                    "squareLogoWebUrlForLightTheme" => lambda {|n| @square_logo_web_url_for_light_theme = n.get_string_value() },
                })
            end
            ## 
            ## Gets the learningContents property value. Learning catalog items for the provider.
            ## @return a learning_content
            ## 
            def learning_contents
                return @learning_contents
            end
            ## 
            ## Sets the learningContents property value. Learning catalog items for the provider.
            ## @param value Value to set for the learning_contents property.
            ## @return a void
            ## 
            def learning_contents=(value)
                @learning_contents = value
            end
            ## 
            ## Gets the loginWebUrl property value. Authentication URL to access the courses for the provider. Optional.
            ## @return a string
            ## 
            def login_web_url
                return @login_web_url
            end
            ## 
            ## Sets the loginWebUrl property value. Authentication URL to access the courses for the provider. Optional.
            ## @param value Value to set for the login_web_url property.
            ## @return a void
            ## 
            def login_web_url=(value)
                @login_web_url = value
            end
            ## 
            ## Gets the longLogoWebUrlForDarkTheme property value. The long logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            ## @return a string
            ## 
            def long_logo_web_url_for_dark_theme
                return @long_logo_web_url_for_dark_theme
            end
            ## 
            ## Sets the longLogoWebUrlForDarkTheme property value. The long logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            ## @param value Value to set for the long_logo_web_url_for_dark_theme property.
            ## @return a void
            ## 
            def long_logo_web_url_for_dark_theme=(value)
                @long_logo_web_url_for_dark_theme = value
            end
            ## 
            ## Gets the longLogoWebUrlForLightTheme property value. The long logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            ## @return a string
            ## 
            def long_logo_web_url_for_light_theme
                return @long_logo_web_url_for_light_theme
            end
            ## 
            ## Sets the longLogoWebUrlForLightTheme property value. The long logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            ## @param value Value to set for the long_logo_web_url_for_light_theme property.
            ## @return a void
            ## 
            def long_logo_web_url_for_light_theme=(value)
                @long_logo_web_url_for_light_theme = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("learningContents", @learning_contents)
                writer.write_string_value("loginWebUrl", @login_web_url)
                writer.write_string_value("longLogoWebUrlForDarkTheme", @long_logo_web_url_for_dark_theme)
                writer.write_string_value("longLogoWebUrlForLightTheme", @long_logo_web_url_for_light_theme)
                writer.write_string_value("squareLogoWebUrlForDarkTheme", @square_logo_web_url_for_dark_theme)
                writer.write_string_value("squareLogoWebUrlForLightTheme", @square_logo_web_url_for_light_theme)
            end
            ## 
            ## Gets the squareLogoWebUrlForDarkTheme property value. The square logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            ## @return a string
            ## 
            def square_logo_web_url_for_dark_theme
                return @square_logo_web_url_for_dark_theme
            end
            ## 
            ## Sets the squareLogoWebUrlForDarkTheme property value. The square logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            ## @param value Value to set for the square_logo_web_url_for_dark_theme property.
            ## @return a void
            ## 
            def square_logo_web_url_for_dark_theme=(value)
                @square_logo_web_url_for_dark_theme = value
            end
            ## 
            ## Gets the squareLogoWebUrlForLightTheme property value. The square logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            ## @return a string
            ## 
            def square_logo_web_url_for_light_theme
                return @square_logo_web_url_for_light_theme
            end
            ## 
            ## Sets the squareLogoWebUrlForLightTheme property value. The square logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.
            ## @param value Value to set for the square_logo_web_url_for_light_theme property.
            ## @return a void
            ## 
            def square_logo_web_url_for_light_theme=(value)
                @square_logo_web_url_for_light_theme = value
            end
        end
    end
end
