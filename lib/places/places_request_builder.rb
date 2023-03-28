require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './count/count_request_builder'
require_relative './graph_room/graph_room_request_builder'
require_relative './places'

module MicrosoftGraph
    module Places
        ## 
        # Builds and executes requests for operations under \places
        class PlacesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
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
            ## Instantiates a new PlacesRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/places")
            end
        end
    end
end
