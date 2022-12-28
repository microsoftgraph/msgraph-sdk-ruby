require 'microsoft_kiota_abstractions'
require_relative '../../../../print'
require_relative '../../../shares'
require_relative '../../item'
require_relative '../allowed_users'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph::Print::Shares::Item::AllowedUsers::Item
    ## 
    # Builds and executes requests for operations under \print\shares\{printerShare-id}\allowedUsers\{user-id}
    class UserItemRequestBuilder
        
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of print entities.
        def ref()
            return MicrosoftGraph::Print::Shares::Item::AllowedUsers::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new UserItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/print/shares/{printerShare%2Did}/allowedUsers/{user%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
