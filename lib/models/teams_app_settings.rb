require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsAppSettings < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The allowUserRequestsForAppAccess property
            @allow_user_requests_for_app_access
            ## 
            ## Gets the allowUserRequestsForAppAccess property value. The allowUserRequestsForAppAccess property
            ## @return a boolean
            ## 
            def allow_user_requests_for_app_access
                return @allow_user_requests_for_app_access
            end
            ## 
            ## Sets the allowUserRequestsForAppAccess property value. The allowUserRequestsForAppAccess property
            ## @param value Value to set for the allowUserRequestsForAppAccess property.
            ## @return a void
            ## 
            def allow_user_requests_for_app_access=(value)
                @allow_user_requests_for_app_access = value
            end
            ## 
            ## Instantiates a new teamsAppSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAppSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowUserRequestsForAppAccess" => lambda {|n| @allow_user_requests_for_app_access = n.get_boolean_value() },
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
                writer.write_boolean_value("allowUserRequestsForAppAccess", @allow_user_requests_for_app_access) unless @allow_user_requests_for_app_access.nil?
            end
        end
    end
end
