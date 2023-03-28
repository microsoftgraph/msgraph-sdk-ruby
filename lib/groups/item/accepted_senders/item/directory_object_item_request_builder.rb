require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../accepted_senders'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module AcceptedSenders
                module Item
                    ## 
                    # Builds and executes requests for operations under \groups\{group-id}\acceptedSenders\{directoryObject-id}
                    class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the collection of group entities.
                        def ref()
                            return MicrosoftGraph::Groups::Item::AcceptedSenders::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/acceptedSenders/{directoryObject%2Did}")
                        end
                    end
                end
            end
        end
    end
end
