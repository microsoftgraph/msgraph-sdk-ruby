require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../groups'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../sites'
require_relative '../../../../../../../item'
require_relative '../../../../../../lists'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../versions'
require_relative '../item'
require_relative './restore_version'

module MicrosoftGraph
    module Groups
        module Item
            module Sites
                module Item
                    module Lists
                        module Item
                            module Items
                                module Item
                                    module Versions
                                        module Item
                                            module RestoreVersion
                                                ## 
                                                # Provides operations to call the restoreVersion method.
                                                class RestoreVersionRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                    
                                                    ## 
                                                    ## Instantiates a new RestoreVersionRequestBuilder and sets the default values.
                                                    ## @param path_parameters Path parameters for the request
                                                    ## @param request_adapter The request adapter to use to execute the requests.
                                                    ## @return a void
                                                    ## 
                                                    def initialize(path_parameters, request_adapter)
                                                        super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/lists/{list%2Did}/items/{listItem%2Did}/versions/{listItemVersion%2Did}/restoreVersion")
                                                    end
                                                    ## 
                                                    ## Restore a previous version of a ListItem to be the current version. This will create a new version with the contents of the previous version, but preserves all existing versions of the item. This API is available in the following national cloud deployments.
                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of void
                                                    ## 
                                                    def post(request_configuration=nil)
                                                        request_info = self.to_post_request_information(
                                                            request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, nil, error_mapping)
                                                    end
                                                    ## 
                                                    ## Restore a previous version of a ListItem to be the current version. This will create a new version with the contents of the previous version, but preserves all existing versions of the item. This API is available in the following national cloud deployments.
                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a request_information
                                                    ## 
                                                    def to_post_request_information(request_configuration=nil)
                                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                        unless request_configuration.nil?
                                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                                            request_info.add_request_options(request_configuration.options)
                                                        end
                                                        request_info.url_template = @url_template
                                                        request_info.path_parameters = @path_parameters
                                                        request_info.http_method = :POST
                                                        request_info.headers.try_add('Accept', 'application/json')
                                                        return request_info
                                                    end
                                                    ## 
                                                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                    ## @param raw_url The raw URL to use for the request builder.
                                                    ## @return a restore_version_request_builder
                                                    ## 
                                                    def with_url(raw_url)
                                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                        return RestoreVersionRequestBuilder.new(raw_url, @request_adapter)
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
        end
    end
end
