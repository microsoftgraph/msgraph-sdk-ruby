require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../models/security/ediscovery_search'
require_relative '../../../../../security'
require_relative '../../../../cases'
require_relative '../../../ediscovery_cases'
require_relative '../../item'
require_relative '../searches'
require_relative './additional_sources/additional_sources_request_builder'
require_relative './additional_sources/item/data_source_item_request_builder'
require_relative './add_to_review_set_operation/add_to_review_set_operation_request_builder'
require_relative './custodian_sources/custodian_sources_request_builder'
require_relative './custodian_sources/item/data_source_item_request_builder'
require_relative './estimate_statistics/estimate_statistics_request_builder'
require_relative './item'
require_relative './last_estimate_statistics_operation/last_estimate_statistics_operation_request_builder'
require_relative './noncustodial_sources/item/ediscovery_noncustodial_data_source_item_request_builder'
require_relative './noncustodial_sources/noncustodial_sources_request_builder'
require_relative './purge_data/purge_data_request_builder'

module MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item
    ## 
    # Provides operations to manage the searches property of the microsoft.graph.security.ediscoveryCase entity.
    class EdiscoverySearchItemRequestBuilder
        
        ## 
        # Provides operations to manage the additionalSources property of the microsoft.graph.security.ediscoverySearch entity.
        def additional_sources()
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::AdditionalSources::AdditionalSourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the addToReviewSetOperation property of the microsoft.graph.security.ediscoverySearch entity.
        def add_to_review_set_operation()
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::AddToReviewSetOperation::AddToReviewSetOperationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the custodianSources property of the microsoft.graph.security.ediscoverySearch entity.
        def custodian_sources()
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::CustodianSources::CustodianSourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the estimateStatistics method.
        def estimate_statistics()
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::EstimateStatistics::EstimateStatisticsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the lastEstimateStatisticsOperation property of the microsoft.graph.security.ediscoverySearch entity.
        def last_estimate_statistics_operation()
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::LastEstimateStatisticsOperation::LastEstimateStatisticsOperationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the noncustodialSources property of the microsoft.graph.security.ediscoverySearch entity.
        def noncustodial_sources()
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::NoncustodialSources::NoncustodialSourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to call the purgeData method.
        def purge_data()
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::PurgeData::PurgeDataRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the additionalSources property of the microsoft.graph.security.ediscoverySearch entity.
        ## @param id Unique identifier of the item
        ## @return a data_source_item_request_builder
        ## 
        def additional_sources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["dataSource%2Did"] = id
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::AdditionalSources::Item::DataSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new EdiscoverySearchItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/searches/{ediscoverySearch%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Provides operations to manage the custodianSources property of the microsoft.graph.security.ediscoverySearch entity.
        ## @param id Unique identifier of the item
        ## @return a data_source_item_request_builder
        ## 
        def custodian_sources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["dataSource%2Did"] = id
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::CustodianSources::Item::DataSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property searches for security
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.to_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Returns a list of eDiscoverySearch objects associated with this case.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of ediscovery_search
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Security::EdiscoverySearch.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the noncustodialSources property of the microsoft.graph.security.ediscoverySearch entity.
        ## @param id Unique identifier of the item
        ## @return a ediscovery_noncustodial_data_source_item_request_builder
        ## 
        def noncustodial_sources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["ediscoveryNoncustodialDataSource%2Did"] = id
            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::NoncustodialSources::Item::EdiscoveryNoncustodialDataSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the navigation property searches in security
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of ediscovery_search
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Security::EdiscoverySearch.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Delete navigation property searches for security
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_delete_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :DELETE
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Returns a list of eDiscoverySearch objects associated with this case.
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
        ## Update the navigation property searches in security
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :PATCH
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
        class EdiscoverySearchItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Returns a list of eDiscoverySearch objects associated with this case.
        class EdiscoverySearchItemRequestBuilderGetQueryParameters
            
            ## 
            # Expand related entities
            attr_accessor :expand
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
                    when "expand"
                        return "%24expand"
                    when "select"
                        return "%24select"
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class EdiscoverySearchItemRequestBuilderGetRequestConfiguration
            
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class EdiscoverySearchItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
