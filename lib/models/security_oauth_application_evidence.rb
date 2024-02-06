require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityOauthApplicationEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique identifier of the application.
            @app_id
            ## 
            # Name of the application.
            @display_name
            ## 
            # The unique identifier of the application object in Azure AD.
            @object_id_escaped
            ## 
            # The name of the application publisher.
            @publisher
            ## 
            ## Gets the appId property value. Unique identifier of the application.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. Unique identifier of the application.
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new securityOauthApplicationEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.oauthApplicationEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_oauth_application_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityOauthApplicationEvidence.new
            end
            ## 
            ## Gets the displayName property value. Name of the application.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the application.
            ## @param value Value to set for the displayName property.
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
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "objectId" => lambda {|n| @object_id_escaped = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                })
            end
            ## 
            ## Gets the objectId property value. The unique identifier of the application object in Azure AD.
            ## @return a string
            ## 
            def object_id_escaped
                return @object_id_escaped
            end
            ## 
            ## Sets the objectId property value. The unique identifier of the application object in Azure AD.
            ## @param value Value to set for the objectId property.
            ## @return a void
            ## 
            def object_id_escaped=(value)
                @object_id_escaped = value
            end
            ## 
            ## Gets the publisher property value. The name of the application publisher.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The name of the application publisher.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appId", @app_id) unless @app_id.nil?
                writer.write_string_value("displayName", @display_name) unless @display_name.nil?
                writer.write_string_value("objectId", @object_id_escaped) unless @object_id_escaped.nil?
                writer.write_string_value("publisher", @publisher) unless @publisher.nil?
            end
        end
    end
end
