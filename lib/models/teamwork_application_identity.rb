require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamworkApplicationIdentity < MicrosoftGraph::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Type of application that is referenced. Possible values are: aadApplication, bot, tenantBot, office365Connector, outgoingWebhook, and unknownFutureValue.
            @application_identity_type
            ## 
            ## Gets the applicationIdentityType property value. Type of application that is referenced. Possible values are: aadApplication, bot, tenantBot, office365Connector, outgoingWebhook, and unknownFutureValue.
            ## @return a teamwork_application_identity_type
            ## 
            def application_identity_type
                return @application_identity_type
            end
            ## 
            ## Sets the applicationIdentityType property value. Type of application that is referenced. Possible values are: aadApplication, bot, tenantBot, office365Connector, outgoingWebhook, and unknownFutureValue.
            ## @param value Value to set for the application_identity_type property.
            ## @return a void
            ## 
            def application_identity_type=(value)
                @application_identity_type = value
            end
            ## 
            ## Instantiates a new TeamworkApplicationIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.teamworkApplicationIdentity"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_application_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkApplicationIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationIdentityType" => lambda {|n| @application_identity_type = n.get_enum_value(MicrosoftGraph::Models::TeamworkApplicationIdentityType) },
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
                writer.write_enum_value("applicationIdentityType", @application_identity_type)
            end
        end
    end
end
