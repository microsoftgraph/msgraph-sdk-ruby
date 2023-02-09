require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsAppInstallation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The app that is installed.
            @teams_app
            ## 
            # The details of this version of the app.
            @teams_app_definition
            ## 
            ## Instantiates a new teamsAppInstallation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_installation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.userScopeTeamsAppInstallation"
                            return UserScopeTeamsAppInstallation.new
                    end
                end
                return TeamsAppInstallation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "teamsApp" => lambda {|n| @teams_app = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamsApp.create_from_discriminator_value(pn) }) },
                    "teamsAppDefinition" => lambda {|n| @teams_app_definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamsAppDefinition.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("teamsApp", @teams_app)
                writer.write_object_value("teamsAppDefinition", @teams_app_definition)
            end
            ## 
            ## Gets the teamsApp property value. The app that is installed.
            ## @return a teams_app
            ## 
            def teams_app
                return @teams_app
            end
            ## 
            ## Sets the teamsApp property value. The app that is installed.
            ## @param value Value to set for the teams_app property.
            ## @return a void
            ## 
            def teams_app=(value)
                @teams_app = value
            end
            ## 
            ## Gets the teamsAppDefinition property value. The details of this version of the app.
            ## @return a teams_app_definition
            ## 
            def teams_app_definition
                return @teams_app_definition
            end
            ## 
            ## Sets the teamsAppDefinition property value. The details of this version of the app.
            ## @param value Value to set for the teams_app_definition property.
            ## @return a void
            ## 
            def teams_app_definition=(value)
                @teams_app_definition = value
            end
        end
    end
end
