require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../education'
require_relative '../../../classes'
require_relative '../../item'
require_relative '../teachers'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Education
        module Classes
            module Item
                module Teachers
                    module Item
                        ## 
                        # Builds and executes requests for operations under \education\classes\{educationClass-id}\teachers\{educationUser-id}
                        class EducationUserItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of educationRoot entities.
                            def ref()
                                return MicrosoftGraph::Education::Classes::Item::Teachers::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new EducationUserItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/education/classes/{educationClass%2Did}/teachers/{educationUser%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
