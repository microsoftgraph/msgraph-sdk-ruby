require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../storage'
require_relative '../../../../../../../../../file_storage'
require_relative '../../../../../../../../containers'
require_relative '../../../../../../../item'
require_relative '../../../../../../drive'
require_relative '../../../../../items'
require_relative '../../../../item'
require_relative '../../../workbook'
require_relative '../../tables'
require_relative '../item'
require_relative './reapply_filters'

module MicrosoftGraph
    module Storage
        module FileStorage
            module Containers
                module Item
                    module Drive
                        module Items
                            module Item
                                module Workbook
                                    module Tables
                                        module Item
                                            module ReapplyFilters
                                                ## 
                                                # Provides operations to call the reapplyFilters method.
                                                class ReapplyFiltersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                    
                                                    ## 
                                                    ## Instantiates a new ReapplyFiltersRequestBuilder and sets the default values.
                                                    ## @param path_parameters Path parameters for the request
                                                    ## @param request_adapter The request adapter to use to execute the requests.
                                                    ## @return a void
                                                    ## 
                                                    def initialize(path_parameters, request_adapter)
                                                        super(path_parameters, request_adapter, "{+baseurl}/storage/fileStorage/containers/{fileStorageContainer%2Did}/drive/items/{driveItem%2Did}/workbook/tables/{workbookTable%2Did}/reapplyFilters")
                                                    end
                                                    ## 
                                                    ## Reapplies all the filters currently on the table.
                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of void
                                                    ## 
                                                    def post(request_configuration=nil)
                                                        request_info = self.to_post_request_information(
                                                            request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, nil, error_mapping)
                                                    end
                                                    ## 
                                                    ## Reapplies all the filters currently on the table.
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
                                                    ## @return a reapply_filters_request_builder
                                                    ## 
                                                    def with_url(raw_url)
                                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                        return ReapplyFiltersRequestBuilder.new(raw_url, @request_adapter)
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
