require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../rejected_senders'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module RejectedSenders
                module Item
                    ## 
                    # Builds and executes requests for operations under \groups\{group-id}\rejectedSenders\{directoryObject-id}
                    class DirectoryObjectItemRequestBuilder
                        
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # Provides operations to manage the collection of group entities.
                        def ref()
                            return MicrosoftGraph::Groups::Item::RejectedSenders::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/groups/{group%2Did}/rejectedSenders/{directoryObject%2Did}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                    end
                end
            end
        end
    end
end
