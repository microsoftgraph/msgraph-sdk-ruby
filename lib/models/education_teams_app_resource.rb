require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationTeamsAppResource < MicrosoftGraph::Models::EducationResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # URL that points to the icon of the app.
            @app_icon_web_url
            ## 
            # Teams app ID of the application.
            @app_id
            ## 
            # URL for the app resource that will be opened by Teams.
            @teams_embedded_content_url
            ## 
            # URL for the app resource that can be opened in the browser.
            @web_url
            ## 
            ## Gets the appIconWebUrl property value. URL that points to the icon of the app.
            ## @return a string
            ## 
            def app_icon_web_url
                return @app_icon_web_url
            end
            ## 
            ## Sets the appIconWebUrl property value. URL that points to the icon of the app.
            ## @param value Value to set for the app_icon_web_url property.
            ## @return a void
            ## 
            def app_icon_web_url=(value)
                @app_icon_web_url = value
            end
            ## 
            ## Gets the appId property value. Teams app ID of the application.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. Teams app ID of the application.
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new EducationTeamsAppResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationTeamsAppResource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_teams_app_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationTeamsAppResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appIconWebUrl" => lambda {|n| @app_icon_web_url = n.get_string_value() },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "teamsEmbeddedContentUrl" => lambda {|n| @teams_embedded_content_url = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
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
                writer.write_string_value("appIconWebUrl", @app_icon_web_url)
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("teamsEmbeddedContentUrl", @teams_embedded_content_url)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the teamsEmbeddedContentUrl property value. URL for the app resource that will be opened by Teams.
            ## @return a string
            ## 
            def teams_embedded_content_url
                return @teams_embedded_content_url
            end
            ## 
            ## Sets the teamsEmbeddedContentUrl property value. URL for the app resource that will be opened by Teams.
            ## @param value Value to set for the teams_embedded_content_url property.
            ## @return a void
            ## 
            def teams_embedded_content_url=(value)
                @teams_embedded_content_url = value
            end
            ## 
            ## Gets the webUrl property value. URL for the app resource that can be opened in the browser.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. URL for the app resource that can be opened in the browser.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
