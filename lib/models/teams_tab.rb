require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsTab < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Container for custom settings applied to a tab. The tab is considered configured only once this property is set.
            @configuration
            ## 
            # Name of the tab.
            @display_name
            ## 
            # The application that is linked to the tab. This cannot be changed after tab creation.
            @teams_app
            ## 
            # Deep link URL of the tab instance. Read only.
            @web_url
            ## 
            ## Gets the configuration property value. Container for custom settings applied to a tab. The tab is considered configured only once this property is set.
            ## @return a teams_tab_configuration
            ## 
            def configuration
                return @configuration
            end
            ## 
            ## Sets the configuration property value. Container for custom settings applied to a tab. The tab is considered configured only once this property is set.
            ## @param value Value to set for the configuration property.
            ## @return a void
            ## 
            def configuration=(value)
                @configuration = value
            end
            ## 
            ## Instantiates a new teamsTab and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teams_tab
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsTab.new
            end
            ## 
            ## Gets the displayName property value. Name of the tab.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the tab.
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
                    "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamsTabConfiguration.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "teamsApp" => lambda {|n| @teams_app = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamsApp.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("configuration", @configuration)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("teamsApp", @teams_app)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the teamsApp property value. The application that is linked to the tab. This cannot be changed after tab creation.
            ## @return a teams_app
            ## 
            def teams_app
                return @teams_app
            end
            ## 
            ## Sets the teamsApp property value. The application that is linked to the tab. This cannot be changed after tab creation.
            ## @param value Value to set for the teams_app property.
            ## @return a void
            ## 
            def teams_app=(value)
                @teams_app = value
            end
            ## 
            ## Gets the webUrl property value. Deep link URL of the tab instance. Read only.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Deep link URL of the tab instance. Read only.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
