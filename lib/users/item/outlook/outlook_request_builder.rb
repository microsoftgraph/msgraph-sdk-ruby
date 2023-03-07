require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../../models/outlook_user'
require_relative '../../users'
require_relative '../item'
require_relative './master_categories/item/outlook_category_item_request_builder'
require_relative './master_categories/master_categories_request_builder'
require_relative './outlook'
require_relative './supported_languages/supported_languages_request_builder'
require_relative './supported_time_zones/supported_time_zones_request_builder'
require_relative './supported_time_zones_with_time_zone_standard/supported_time_zones_with_time_zone_standard_request_builder'

module MicrosoftGraph
    module Users
        module Item
            module Outlook
                ## 
                # Provides operations to manage the outlook property of the microsoft.graph.user entity.
                class OutlookRequestBuilder
                    
                    ## 
                    # Provides operations to manage the masterCategories property of the microsoft.graph.outlookUser entity.
                    def master_categories()
                        return MicrosoftGraph::Users::Item::Outlook::MasterCategories::MasterCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to call the supportedLanguages method.
                    def supported_languages()
                        return MicrosoftGraph::Users::Item::Outlook::SupportedLanguages::SupportedLanguagesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the supportedTimeZones method.
                    def supported_time_zones()
                        return MicrosoftGraph::Users::Item::Outlook::SupportedTimeZones::SupportedTimeZonesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    ## Instantiates a new OutlookRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/users/{user%2Did}/outlook{?%24select}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Get outlook from users
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of outlook_user
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OutlookUser.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the masterCategories property of the microsoft.graph.outlookUser entity.
                    ## @param id Unique identifier of the item
                    ## @return a outlook_category_item_request_builder
                    ## 
                    def master_categories_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["outlookCategory%2Did"] = id
                        return MicrosoftGraph::Users::Item::Outlook::MasterCategories::Item::OutlookCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to call the supportedTimeZones method.
                    ## @param TimeZoneStandard Usage: TimeZoneStandard='{TimeZoneStandard}'
                    ## @return a supported_time_zones_with_time_zone_standard_request_builder
                    ## 
                    def supported_time_zones_with_time_zone_standard(time_zone_standard)
                        raise StandardError, 'time_zone_standard cannot be null' if time_zone_standard.nil?
                        return SupportedTimeZonesWithTimeZoneStandardRequestBuilder.new(@path_parameters, @request_adapter, TimeZoneStandard)
                    end
                    ## 
                    ## Get outlook from users
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.add('Accept', 'application/json')
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                            request_info.add_request_options(request_configuration.options)
                        end
                        return request_info
                    end

                    ## 
                    # Get outlook from users
                    class OutlookRequestBuilderGetQueryParameters
                        
                        ## 
                        # Select properties to be returned
                        attr_accessor :select
                        ## 
                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                        ## @param originalName The original query parameter name in the class.
                        ## @return a string
                        ## 
                        def get_query_parameter(original_name)
                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                            case original_name
                                when "select"
                                    return "%24select"
                                else
                                    return original_name
                            end
                        end
                    end

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class OutlookRequestBuilderGetRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                        ## 
                        # Request query parameters
                        attr_accessor :query_parameters
                    end
                end
            end
        end
    end
end
