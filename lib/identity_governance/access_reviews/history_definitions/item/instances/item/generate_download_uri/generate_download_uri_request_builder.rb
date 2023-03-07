require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/access_review_history_instance'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../identity_governance'
require_relative '../../../../../access_reviews'
require_relative '../../../../history_definitions'
require_relative '../../../item'
require_relative '../../instances'
require_relative '../item'
require_relative './generate_download_uri'

module MicrosoftGraph
    module IdentityGovernance
        module AccessReviews
            module HistoryDefinitions
                module Item
                    module Instances
                        module Item
                            module GenerateDownloadUri
                                ## 
                                # Provides operations to call the generateDownloadUri method.
                                class GenerateDownloadUriRequestBuilder
                                    
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
                                    ## Instantiates a new GenerateDownloadUriRequestBuilder and sets the default values.
                                    ## @param pathParameters Path parameters for the request
                                    ## @param requestAdapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                        @url_template = "{+baseurl}/identityGovernance/accessReviews/historyDefinitions/{accessReviewHistoryDefinition%2Did}/instances/{accessReviewHistoryInstance%2Did}/generateDownloadUri"
                                        @request_adapter = request_adapter
                                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                                    end
                                    ## 
                                    ## Generates a URI for an accessReviewHistoryInstance object the **status** for which is `done`. Each URI can be used to retrieve the instance's review history data. Each URI is valid for 24 hours and can be retrieved by fetching the **downloadUri** property from the accessReviewHistoryInstance object.
                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of access_review_history_instance
                                    ## 
                                    def post(request_configuration=nil)
                                        request_info = self.to_post_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AccessReviewHistoryInstance.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Generates a URI for an accessReviewHistoryInstance object the **status** for which is `done`. Each URI can be used to retrieve the instance's review history data. Each URI is valid for 24 hours and can be retrieved by fetching the **downloadUri** property from the accessReviewHistoryInstance object.
                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a request_information
                                    ## 
                                    def to_post_request_information(request_configuration=nil)
                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                        request_info.url_template = @url_template
                                        request_info.path_parameters = @path_parameters
                                        request_info.http_method = :POST
                                        request_info.headers.add('Accept', 'application/json')
                                        unless request_configuration.nil?
                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                            request_info.add_request_options(request_configuration.options)
                                        end
                                        return request_info
                                    end

                                    ## 
                                    # Configuration for the request such as headers, query parameters, and middleware options.
                                    class GenerateDownloadUriRequestBuilderPostRequestConfiguration
                                        
                                        ## 
                                        # Request headers
                                        attr_accessor :headers
                                        ## 
                                        # Request options
                                        attr_accessor :options
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
