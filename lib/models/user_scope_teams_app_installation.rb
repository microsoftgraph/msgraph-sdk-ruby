require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserScopeTeamsAppInstallation < MicrosoftGraph::Models::TeamsAppInstallation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The chat between the user and Teams app.
            @chat
            ## 
            ## Gets the chat property value. The chat between the user and Teams app.
            ## @return a chat
            ## 
            def chat
                return @chat
            end
            ## 
            ## Sets the chat property value. The chat between the user and Teams app.
            ## @param value Value to set for the chat property.
            ## @return a void
            ## 
            def chat=(value)
                @chat = value
            end
            ## 
            ## Instantiates a new UserScopeTeamsAppInstallation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.userScopeTeamsAppInstallation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_scope_teams_app_installation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserScopeTeamsAppInstallation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "chat" => lambda {|n| @chat = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Chat.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("chat", @chat)
            end
        end
    end
end
