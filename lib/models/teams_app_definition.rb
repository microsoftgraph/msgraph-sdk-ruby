require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsAppDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The details of the bot specified in the Teams app manifest.
            @bot
            ## 
            # The createdBy property
            @created_by
            ## 
            # Verbose description of the application.
            @description
            ## 
            # The name of the app provided by the app developer.
            @display_name
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The published status of a specific version of a Teams app. Possible values are:submitted — The specific version of the Teams app has been submitted and is under review. published  — The request to publish the specific version of the Teams app has been approved by the admin and the app is published.  rejected — The request to publish the specific version of the Teams app was rejected by the admin.
            @publishing_state
            ## 
            # Short description of the application.
            @short_description
            ## 
            # The ID from the Teams app manifest.
            @teams_app_id
            ## 
            # The version number of the application.
            @version
            ## 
            ## Gets the bot property value. The details of the bot specified in the Teams app manifest.
            ## @return a teamwork_bot
            ## 
            def bot
                return @bot
            end
            ## 
            ## Sets the bot property value. The details of the bot specified in the Teams app manifest.
            ## @param value Value to set for the bot property.
            ## @return a void
            ## 
            def bot=(value)
                @bot = value
            end
            ## 
            ## Instantiates a new teamsAppDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAppDefinition.new
            end
            ## 
            ## Gets the description property value. Verbose description of the application.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Verbose description of the application.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the app provided by the app developer.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the app provided by the app developer.
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
                    "bot" => lambda {|n| @bot = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamworkBot.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "publishingState" => lambda {|n| @publishing_state = n.get_enum_value(MicrosoftGraph::Models::TeamsAppPublishingState) },
                    "shortDescription" => lambda {|n| @short_description = n.get_string_value() },
                    "teamsAppId" => lambda {|n| @teams_app_id = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the publishingState property value. The published status of a specific version of a Teams app. Possible values are:submitted — The specific version of the Teams app has been submitted and is under review. published  — The request to publish the specific version of the Teams app has been approved by the admin and the app is published.  rejected — The request to publish the specific version of the Teams app was rejected by the admin.
            ## @return a teams_app_publishing_state
            ## 
            def publishing_state
                return @publishing_state
            end
            ## 
            ## Sets the publishingState property value. The published status of a specific version of a Teams app. Possible values are:submitted — The specific version of the Teams app has been submitted and is under review. published  — The request to publish the specific version of the Teams app has been approved by the admin and the app is published.  rejected — The request to publish the specific version of the Teams app was rejected by the admin.
            ## @param value Value to set for the publishing_state property.
            ## @return a void
            ## 
            def publishing_state=(value)
                @publishing_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("bot", @bot)
                writer.write_object_value("createdBy", @created_by)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("publishingState", @publishing_state)
                writer.write_string_value("shortDescription", @short_description)
                writer.write_string_value("teamsAppId", @teams_app_id)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the shortDescription property value. Short description of the application.
            ## @return a string
            ## 
            def short_description
                return @short_description
            end
            ## 
            ## Sets the shortDescription property value. Short description of the application.
            ## @param value Value to set for the short_description property.
            ## @return a void
            ## 
            def short_description=(value)
                @short_description = value
            end
            ## 
            ## Gets the teamsAppId property value. The ID from the Teams app manifest.
            ## @return a string
            ## 
            def teams_app_id
                return @teams_app_id
            end
            ## 
            ## Sets the teamsAppId property value. The ID from the Teams app manifest.
            ## @param value Value to set for the teams_app_id property.
            ## @return a void
            ## 
            def teams_app_id=(value)
                @teams_app_id = value
            end
            ## 
            ## Gets the version property value. The version number of the application.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version number of the application.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
