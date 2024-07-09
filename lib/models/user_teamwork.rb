require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserTeamwork < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of associatedTeamInfo objects that a user is associated with.
            @associated_teams
            ## 
            # The apps installed in the personal scope of this user.
            @installed_apps
            ## 
            # The chosen locale of a user in Microsoft Teams.
            @locale
            ## 
            # The region of the user in Microsoft Teams.
            @region
            ## 
            ## Gets the associatedTeams property value. The list of associatedTeamInfo objects that a user is associated with.
            ## @return a associated_team_info
            ## 
            def associated_teams
                return @associated_teams
            end
            ## 
            ## Sets the associatedTeams property value. The list of associatedTeamInfo objects that a user is associated with.
            ## @param value Value to set for the associatedTeams property.
            ## @return a void
            ## 
            def associated_teams=(value)
                @associated_teams = value
            end
            ## 
            ## Instantiates a new UserTeamwork and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_teamwork
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserTeamwork.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "associatedTeams" => lambda {|n| @associated_teams = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssociatedTeamInfo.create_from_discriminator_value(pn) }) },
                    "installedApps" => lambda {|n| @installed_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserScopeTeamsAppInstallation.create_from_discriminator_value(pn) }) },
                    "locale" => lambda {|n| @locale = n.get_string_value() },
                    "region" => lambda {|n| @region = n.get_string_value() },
                })
            end
            ## 
            ## Gets the installedApps property value. The apps installed in the personal scope of this user.
            ## @return a user_scope_teams_app_installation
            ## 
            def installed_apps
                return @installed_apps
            end
            ## 
            ## Sets the installedApps property value. The apps installed in the personal scope of this user.
            ## @param value Value to set for the installedApps property.
            ## @return a void
            ## 
            def installed_apps=(value)
                @installed_apps = value
            end
            ## 
            ## Gets the locale property value. The chosen locale of a user in Microsoft Teams.
            ## @return a string
            ## 
            def locale
                return @locale
            end
            ## 
            ## Sets the locale property value. The chosen locale of a user in Microsoft Teams.
            ## @param value Value to set for the locale property.
            ## @return a void
            ## 
            def locale=(value)
                @locale = value
            end
            ## 
            ## Gets the region property value. The region of the user in Microsoft Teams.
            ## @return a string
            ## 
            def region
                return @region
            end
            ## 
            ## Sets the region property value. The region of the user in Microsoft Teams.
            ## @param value Value to set for the region property.
            ## @return a void
            ## 
            def region=(value)
                @region = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("associatedTeams", @associated_teams)
                writer.write_collection_of_object_values("installedApps", @installed_apps)
                writer.write_string_value("locale", @locale)
                writer.write_string_value("region", @region)
            end
        end
    end
end
