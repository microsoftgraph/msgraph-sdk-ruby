require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './count/count_request_builder'
require_relative './graph_room/graph_room_request_builder'
require_relative './places'

module MicrosoftGraph
    module Places
        ## 
        # Builds and executes requests for operations under \places
        class PlacesRequestBuilder
            
            ## 
            # Provides operations to count the resources in the collection.
            def count()
                return MicrosoftGraph::Places::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Casts the previous resource to room.
            def graph_room()
                return MicrosoftGraph::Places::GraphRoom::GraphRoomRequestBuilder.new(@path_parameters, @request_adapter)
            end
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
            ## Instantiates a new PlacesRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/places"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
        end
    end
end
