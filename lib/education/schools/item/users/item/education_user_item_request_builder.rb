require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../education'
require_relative '../../../schools'
require_relative '../../item'
require_relative '../users'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Education
        module Schools
            module Item
                module Users
                    module Item
                        ## 
                        # Builds and executes requests for operations under \education\schools\{educationSchool-id}\users\{educationUser-id}
                        class EducationUserItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of educationRoot entities.
                            def ref()
                                return MicrosoftGraph::Education::Schools::Item::Users::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new EducationUserItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/education/schools/{educationSchool%2Did}/users/{educationUser%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
