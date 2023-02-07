require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../groups'
require_relative '../../../item'
require_relative '../../team'
require_relative '../primary_channel'
require_relative './i36f5b8477c6e0b8381f1fe57d51b36baa914f57f3b0c51db1cfca75bc34f6227'

module MicrosoftGraph::Groups::Item::Team::PrimaryChannel::I36f5b8477c6e0b8381f1fe57d51b36baa914f57f3b0c51db1cfca75bc34f6227
    ## 
    # Provides operations to call the doesUserHaveAccess method.
    class MicrosoftGraphDoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilder
        
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new MicrosoftGraphDoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/groups/{group%2Did}/team/primaryChannel/microsoft.graph.doesUserHaveAccess(userId='@userId',tenantId='@tenantId',userPrincipalName='@userPrincipalName'){?userId*,tenantId*,userPrincipalName*}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Invoke function doesUserHaveAccess
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of does_user_have_accessuser_id_user_id_tenant_id_tenant_id_user_principal_name_user_principal_name_response
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Groups::Item::Team::PrimaryChannel::I36f5b8477c6e0b8381f1fe57d51b36baa914f57f3b0c51db1cfca75bc34f6227::DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameResponse.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Invoke function doesUserHaveAccess
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_get_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :GET
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end

        ## 
        # Invoke function doesUserHaveAccess
        class MicrosoftGraphDoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilderGetQueryParameters
            
            ## 
            # Usage: tenantId='@tenantId'
            attr_accessor :tenant_id
            ## 
            # Usage: userId='@userId'
            attr_accessor :user_id
            ## 
            # Usage: userPrincipalName='@userPrincipalName'
            attr_accessor :user_principal_name
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class MicrosoftGraphDoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end
    end
end
