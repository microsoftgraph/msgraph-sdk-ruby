require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppConsentRequest < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the app for which consent is requested. Required. Supports $filter (eq only) and $orderby.
            @app_display_name
            ## 
            # The identifier of the application. Required. Supports $filter (eq only) and $orderby.
            @app_id
            ## 
            # A list of pending scopes waiting for approval. Required.
            @pending_scopes
            ## 
            # A list of pending user consent requests. Supports $filter (eq).
            @user_consent_requests
            ## 
            ## Gets the appDisplayName property value. The display name of the app for which consent is requested. Required. Supports $filter (eq only) and $orderby.
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. The display name of the app for which consent is requested. Required. Supports $filter (eq only) and $orderby.
            ## @param value Value to set for the app_display_name property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Gets the appId property value. The identifier of the application. Required. Supports $filter (eq only) and $orderby.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The identifier of the application. Required. Supports $filter (eq only) and $orderby.
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new appConsentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a app_consent_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppConsentRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "pendingScopes" => lambda {|n| @pending_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppConsentRequestScope.create_from_discriminator_value(pn) }) },
                    "userConsentRequests" => lambda {|n| @user_consent_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserConsentRequest.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the pendingScopes property value. A list of pending scopes waiting for approval. Required.
            ## @return a app_consent_request_scope
            ## 
            def pending_scopes
                return @pending_scopes
            end
            ## 
            ## Sets the pendingScopes property value. A list of pending scopes waiting for approval. Required.
            ## @param value Value to set for the pending_scopes property.
            ## @return a void
            ## 
            def pending_scopes=(value)
                @pending_scopes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appId", @app_id)
                writer.write_collection_of_object_values("pendingScopes", @pending_scopes)
                writer.write_collection_of_object_values("userConsentRequests", @user_consent_requests)
            end
            ## 
            ## Gets the userConsentRequests property value. A list of pending user consent requests. Supports $filter (eq).
            ## @return a user_consent_request
            ## 
            def user_consent_requests
                return @user_consent_requests
            end
            ## 
            ## Sets the userConsentRequests property value. A list of pending user consent requests. Supports $filter (eq).
            ## @param value Value to set for the user_consent_requests property.
            ## @return a void
            ## 
            def user_consent_requests=(value)
                @user_consent_requests = value
            end
        end
    end
end
