require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Teamwork < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The deleted team.
            @deleted_teams
            ## 
            # Represents tenant-wide settings for all Teams apps in the tenant.
            @teams_app_settings
            ## 
            # The workforceIntegrations property
            @workforce_integrations
            ## 
            ## Instantiates a new Teamwork and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Teamwork.new
            end
            ## 
            ## Gets the deletedTeams property value. The deleted team.
            ## @return a deleted_team
            ## 
            def deleted_teams
                return @deleted_teams
            end
            ## 
            ## Sets the deletedTeams property value. The deleted team.
            ## @param value Value to set for the deletedTeams property.
            ## @return a void
            ## 
            def deleted_teams=(value)
                @deleted_teams = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deletedTeams" => lambda {|n| @deleted_teams = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeletedTeam.create_from_discriminator_value(pn) }) },
                    "teamsAppSettings" => lambda {|n| @teams_app_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamsAppSettings.create_from_discriminator_value(pn) }) },
                    "workforceIntegrations" => lambda {|n| @workforce_integrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkforceIntegration.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("deletedTeams", @deleted_teams)
                writer.write_object_value("teamsAppSettings", @teams_app_settings)
                writer.write_collection_of_object_values("workforceIntegrations", @workforce_integrations)
            end
            ## 
            ## Gets the teamsAppSettings property value. Represents tenant-wide settings for all Teams apps in the tenant.
            ## @return a teams_app_settings
            ## 
            def teams_app_settings
                return @teams_app_settings
            end
            ## 
            ## Sets the teamsAppSettings property value. Represents tenant-wide settings for all Teams apps in the tenant.
            ## @param value Value to set for the teamsAppSettings property.
            ## @return a void
            ## 
            def teams_app_settings=(value)
                @teams_app_settings = value
            end
            ## 
            ## Gets the workforceIntegrations property value. The workforceIntegrations property
            ## @return a workforce_integration
            ## 
            def workforce_integrations
                return @workforce_integrations
            end
            ## 
            ## Sets the workforceIntegrations property value. The workforceIntegrations property
            ## @param value Value to set for the workforceIntegrations property.
            ## @return a void
            ## 
            def workforce_integrations=(value)
                @workforce_integrations = value
            end
        end
    end
end
