require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../role_management'
require_relative '../../../entitlement_management'
require_relative '../../role_assignment_schedule_requests'
require_relative '../item'
require_relative './cancel'

module MicrosoftGraph::RoleManagement::EntitlementManagement::RoleAssignmentScheduleRequests::Item::Cancel
    ## 
    # Provides operations to call the cancel method.
    class CancelRequestBuilder
        
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
        ## Instantiates a new CancelRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/roleManagement/entitlementManagement/roleAssignmentScheduleRequests/{unifiedRoleAssignmentScheduleRequest%2Did}/microsoft.graph.cancel"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Immediately cancel a unifiedRoleAssignmentScheduleRequest object that is in a `Granted` status, and have the system automatically delete the canceled request after 30 days. After calling this action, the **status** of the canceled **unifiedRoleAssignmentScheduleRequest** changes to `Canceled`.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_post_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :POST
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Immediately cancel a unifiedRoleAssignmentScheduleRequest object that is in a `Granted` status, and have the system automatically delete the canceled request after 30 days. After calling this action, the **status** of the canceled **unifiedRoleAssignmentScheduleRequest** changes to `Canceled`.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of void
        ## 
        def post(request_configuration=nil)
            request_info = self.create_post_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class CancelRequestBuilderPostRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end