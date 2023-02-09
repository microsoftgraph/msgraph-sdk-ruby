require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppCatalogs < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The teamsApps property
            @teams_apps
            ## 
            ## Instantiates a new AppCatalogs and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a app_catalogs
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppCatalogs.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "teamsApps" => lambda {|n| @teams_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamsApp.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("teamsApps", @teams_apps)
            end
            ## 
            ## Gets the teamsApps property value. The teamsApps property
            ## @return a teams_app
            ## 
            def teams_apps
                return @teams_apps
            end
            ## 
            ## Sets the teamsApps property value. The teamsApps property
            ## @param value Value to set for the teams_apps property.
            ## @return a void
            ## 
            def teams_apps=(value)
                @teams_apps = value
            end
        end
    end
end
