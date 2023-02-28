require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../models/onenote_operation'
require_relative '../../../../../../../users'
require_relative '../../../../../../item'
require_relative '../../../../../onenote'
require_relative '../../../../notebooks'
require_relative '../../../item'
require_relative '../../sections'
require_relative '../item'
require_relative './copy_to_section_group'

module MicrosoftGraph
    module Users
        module Item
            module Onenote
                module Notebooks
                    module Item
                        module Sections
                            module Item
                                module CopyToSectionGroup
                                    ## 
                                    # Provides operations to call the copyToSectionGroup method.
                                    class CopyToSectionGroupRequestBuilder
                                        
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
                                        ## Instantiates a new CopyToSectionGroupRequestBuilder and sets the default values.
                                        ## @param pathParameters Path parameters for the request
                                        ## @param requestAdapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                            @url_template = "{+baseurl}/users/{user%2Did}/onenote/notebooks/{notebook%2Did}/sections/{onenoteSection%2Did}/copyToSectionGroup"
                                            @request_adapter = request_adapter
                                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                                        end
                                        ## 
                                        ## For Copy operations, you follow an asynchronous calling pattern:  First call the Copy action, and then poll the operation endpoint for the result.
                                        ## @param body The request body
                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of onenote_operation
                                        ## 
                                        def post(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = self.to_post_request_information(
                                                body, request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OnenoteOperation.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## For Copy operations, you follow an asynchronous calling pattern:  First call the Copy action, and then poll the operation endpoint for the result.
                                        ## @param body The request body
                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a request_information
                                        ## 
                                        def to_post_request_information(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                            request_info.url_template = @url_template
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :POST
                                            request_info.headers.add('Accept', 'application/json')
                                            unless request_configuration.nil?
                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                request_info.add_request_options(request_configuration.options)
                                            end
                                            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                            return request_info
                                        end

                                        ## 
                                        # Configuration for the request such as headers, query parameters, and middleware options.
                                        class CopyToSectionGroupRequestBuilderPostRequestConfiguration
                                            
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
end
