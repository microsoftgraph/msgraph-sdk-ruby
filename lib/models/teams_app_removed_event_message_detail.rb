require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsAppRemovedEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Initiator of the event.
            @initiator
            ## 
            # Display name of the teamsApp.
            @teams_app_display_name
            ## 
            # Unique identifier of the teamsApp.
            @teams_app_id
            ## 
            ## Instantiates a new TeamsAppRemovedEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.teamsAppRemovedEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_removed_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAppRemovedEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "teamsAppDisplayName" => lambda {|n| @teams_app_display_name = n.get_string_value() },
                    "teamsAppId" => lambda {|n| @teams_app_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the initiator property value. Initiator of the event.
            ## @return a identity_set
            ## 
            def initiator
                return @initiator
            end
            ## 
            ## Sets the initiator property value. Initiator of the event.
            ## @param value Value to set for the initiator property.
            ## @return a void
            ## 
            def initiator=(value)
                @initiator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("initiator", @initiator)
                writer.write_string_value("teamsAppDisplayName", @teams_app_display_name)
                writer.write_string_value("teamsAppId", @teams_app_id)
            end
            ## 
            ## Gets the teamsAppDisplayName property value. Display name of the teamsApp.
            ## @return a string
            ## 
            def teams_app_display_name
                return @teams_app_display_name
            end
            ## 
            ## Sets the teamsAppDisplayName property value. Display name of the teamsApp.
            ## @param value Value to set for the teams_app_display_name property.
            ## @return a void
            ## 
            def teams_app_display_name=(value)
                @teams_app_display_name = value
            end
            ## 
            ## Gets the teamsAppId property value. Unique identifier of the teamsApp.
            ## @return a string
            ## 
            def teams_app_id
                return @teams_app_id
            end
            ## 
            ## Sets the teamsAppId property value. Unique identifier of the teamsApp.
            ## @param value Value to set for the teams_app_id property.
            ## @return a void
            ## 
            def teams_app_id=(value)
                @teams_app_id = value
            end
        end
    end
end
