require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ApiApplication
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # When true, allows an application to use claims mapping without specifying a custom signing key.
            @accept_mapped_claims
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Used for bundling consent if you have a solution that contains two parts: a client app and a custom web API app. If you set the appID of the client app to this value, the user only consents once to the client app. Azure AD knows that consenting to the client means implicitly consenting to the web API and automatically provisions service principals for both APIs at the same time. Both the client and the web API app must be registered in the same tenant.
            @known_client_applications
            ## 
            # The definition of the delegated permissions exposed by the web API represented by this application registration. These delegated permissions may be requested by a client application, and may be granted by users or administrators during consent. Delegated permissions are sometimes referred to as OAuth 2.0 scopes.
            @oauth2_permission_scopes
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Lists the client applications that are pre-authorized with the specified delegated permissions to access this application's APIs. Users are not required to consent to any pre-authorized application (for the permissions specified). However, any additional permissions not listed in preAuthorizedApplications (requested through incremental consent for example) will require user consent.
            @pre_authorized_applications
            ## 
            # Specifies the access token version expected by this resource. This changes the version and format of the JWT produced independent of the endpoint or client used to request the access token.  The endpoint used, v1.0 or v2.0, is chosen by the client and only impacts the version of id_tokens. Resources need to explicitly configure requestedAccessTokenVersion to indicate the supported access token format.  Possible values for requestedAccessTokenVersion are 1, 2, or null. If the value is null, this defaults to 1, which corresponds to the v1.0 endpoint.  If signInAudience on the application is configured as AzureADandPersonalMicrosoftAccount, the value for this property must be 2
            @requested_access_token_version
            ## 
            ## Gets the acceptMappedClaims property value. When true, allows an application to use claims mapping without specifying a custom signing key.
            ## @return a boolean
            ## 
            def accept_mapped_claims
                return @accept_mapped_claims
            end
            ## 
            ## Sets the acceptMappedClaims property value. When true, allows an application to use claims mapping without specifying a custom signing key.
            ## @param value Value to set for the accept_mapped_claims property.
            ## @return a void
            ## 
            def accept_mapped_claims=(value)
                @accept_mapped_claims = value
            end
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new apiApplication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a api_application
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApiApplication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "acceptMappedClaims" => lambda {|n| @accept_mapped_claims = n.get_boolean_value() },
                    "knownClientApplications" => lambda {|n| @known_client_applications = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                    "oauth2PermissionScopes" => lambda {|n| @oauth2_permission_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PermissionScope.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "preAuthorizedApplications" => lambda {|n| @pre_authorized_applications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PreAuthorizedApplication.create_from_discriminator_value(pn) }) },
                    "requestedAccessTokenVersion" => lambda {|n| @requested_access_token_version = n.get_number_value() },
                }
            end
            ## 
            ## Gets the knownClientApplications property value. Used for bundling consent if you have a solution that contains two parts: a client app and a custom web API app. If you set the appID of the client app to this value, the user only consents once to the client app. Azure AD knows that consenting to the client means implicitly consenting to the web API and automatically provisions service principals for both APIs at the same time. Both the client and the web API app must be registered in the same tenant.
            ## @return a guid
            ## 
            def known_client_applications
                return @known_client_applications
            end
            ## 
            ## Sets the knownClientApplications property value. Used for bundling consent if you have a solution that contains two parts: a client app and a custom web API app. If you set the appID of the client app to this value, the user only consents once to the client app. Azure AD knows that consenting to the client means implicitly consenting to the web API and automatically provisions service principals for both APIs at the same time. Both the client and the web API app must be registered in the same tenant.
            ## @param value Value to set for the known_client_applications property.
            ## @return a void
            ## 
            def known_client_applications=(value)
                @known_client_applications = value
            end
            ## 
            ## Gets the oauth2PermissionScopes property value. The definition of the delegated permissions exposed by the web API represented by this application registration. These delegated permissions may be requested by a client application, and may be granted by users or administrators during consent. Delegated permissions are sometimes referred to as OAuth 2.0 scopes.
            ## @return a permission_scope
            ## 
            def oauth2_permission_scopes
                return @oauth2_permission_scopes
            end
            ## 
            ## Sets the oauth2PermissionScopes property value. The definition of the delegated permissions exposed by the web API represented by this application registration. These delegated permissions may be requested by a client application, and may be granted by users or administrators during consent. Delegated permissions are sometimes referred to as OAuth 2.0 scopes.
            ## @param value Value to set for the oauth2_permission_scopes property.
            ## @return a void
            ## 
            def oauth2_permission_scopes=(value)
                @oauth2_permission_scopes = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the preAuthorizedApplications property value. Lists the client applications that are pre-authorized with the specified delegated permissions to access this application's APIs. Users are not required to consent to any pre-authorized application (for the permissions specified). However, any additional permissions not listed in preAuthorizedApplications (requested through incremental consent for example) will require user consent.
            ## @return a pre_authorized_application
            ## 
            def pre_authorized_applications
                return @pre_authorized_applications
            end
            ## 
            ## Sets the preAuthorizedApplications property value. Lists the client applications that are pre-authorized with the specified delegated permissions to access this application's APIs. Users are not required to consent to any pre-authorized application (for the permissions specified). However, any additional permissions not listed in preAuthorizedApplications (requested through incremental consent for example) will require user consent.
            ## @param value Value to set for the pre_authorized_applications property.
            ## @return a void
            ## 
            def pre_authorized_applications=(value)
                @pre_authorized_applications = value
            end
            ## 
            ## Gets the requestedAccessTokenVersion property value. Specifies the access token version expected by this resource. This changes the version and format of the JWT produced independent of the endpoint or client used to request the access token.  The endpoint used, v1.0 or v2.0, is chosen by the client and only impacts the version of id_tokens. Resources need to explicitly configure requestedAccessTokenVersion to indicate the supported access token format.  Possible values for requestedAccessTokenVersion are 1, 2, or null. If the value is null, this defaults to 1, which corresponds to the v1.0 endpoint.  If signInAudience on the application is configured as AzureADandPersonalMicrosoftAccount, the value for this property must be 2
            ## @return a integer
            ## 
            def requested_access_token_version
                return @requested_access_token_version
            end
            ## 
            ## Sets the requestedAccessTokenVersion property value. Specifies the access token version expected by this resource. This changes the version and format of the JWT produced independent of the endpoint or client used to request the access token.  The endpoint used, v1.0 or v2.0, is chosen by the client and only impacts the version of id_tokens. Resources need to explicitly configure requestedAccessTokenVersion to indicate the supported access token format.  Possible values for requestedAccessTokenVersion are 1, 2, or null. If the value is null, this defaults to 1, which corresponds to the v1.0 endpoint.  If signInAudience on the application is configured as AzureADandPersonalMicrosoftAccount, the value for this property must be 2
            ## @param value Value to set for the requested_access_token_version property.
            ## @return a void
            ## 
            def requested_access_token_version=(value)
                @requested_access_token_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("acceptMappedClaims", @accept_mapped_claims)
                writer.write_collection_of_primitive_values("knownClientApplications", @known_client_applications)
                writer.write_collection_of_object_values("oauth2PermissionScopes", @oauth2_permission_scopes)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("preAuthorizedApplications", @pre_authorized_applications)
                writer.write_number_value("requestedAccessTokenVersion", @requested_access_token_version)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
