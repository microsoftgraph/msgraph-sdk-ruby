require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../../models/security/ediscovery_case'
require_relative '../../../security'
require_relative '../../cases'
require_relative '../ediscovery_cases'
require_relative './custodians/custodians_request_builder'
require_relative './custodians/item/ediscovery_custodian_item_request_builder'
require_relative './item'
require_relative './noncustodial_data_sources/item/ediscovery_noncustodial_data_source_item_request_builder'
require_relative './noncustodial_data_sources/noncustodial_data_sources_request_builder'
require_relative './operations/item/case_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './review_sets/item/ediscovery_review_set_item_request_builder'
require_relative './review_sets/review_sets_request_builder'
require_relative './searches/item/ediscovery_search_item_request_builder'
require_relative './searches/searches_request_builder'
require_relative './security_close/security_close_request_builder'
require_relative './security_reopen/security_reopen_request_builder'
require_relative './settings/settings_request_builder'
require_relative './tags/item/ediscovery_review_tag_item_request_builder'
require_relative './tags/tags_request_builder'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    ## 
                    # Provides operations to manage the ediscoveryCases property of the microsoft.graph.security.casesRoot entity.
                    class EdiscoveryCaseItemRequestBuilder
                        
                        ## 
                        # Provides operations to manage the custodians property of the microsoft.graph.security.ediscoveryCase entity.
                        def custodians()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::CustodiansRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the noncustodialDataSources property of the microsoft.graph.security.ediscoveryCase entity.
                        def noncustodial_data_sources()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::NoncustodialDataSources::NoncustodialDataSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the operations property of the microsoft.graph.security.ediscoveryCase entity.
                        def operations()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Provides operations to manage the reviewSets property of the microsoft.graph.security.ediscoveryCase entity.
                        def review_sets()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::ReviewSets::ReviewSetsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the searches property of the microsoft.graph.security.ediscoveryCase entity.
                        def searches()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::SearchesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the close method.
                        def security_close()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::SecurityClose::SecurityCloseRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the reopen method.
                        def security_reopen()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::SecurityReopen::SecurityReopenRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the settings property of the microsoft.graph.security.ediscoveryCase entity.
                        def settings()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the tags property of the microsoft.graph.security.ediscoveryCase entity.
                        def tags()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Tags::TagsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Instantiates a new EdiscoveryCaseItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Provides operations to manage the custodians property of the microsoft.graph.security.ediscoveryCase entity.
                        ## @param id Unique identifier of the item
                        ## @return a ediscovery_custodian_item_request_builder
                        ## 
                        def custodians_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["ediscoveryCustodian%2Did"] = id
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::EdiscoveryCustodianItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property ediscoveryCases for security
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
                        ## Get ediscoveryCases from security
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of ediscovery_case
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryCase.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the noncustodialDataSources property of the microsoft.graph.security.ediscoveryCase entity.
                        ## @param id Unique identifier of the item
                        ## @return a ediscovery_noncustodial_data_source_item_request_builder
                        ## 
                        def noncustodial_data_sources_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["ediscoveryNoncustodialDataSource%2Did"] = id
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::NoncustodialDataSources::Item::EdiscoveryNoncustodialDataSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the operations property of the microsoft.graph.security.ediscoveryCase entity.
                        ## @param id Unique identifier of the item
                        ## @return a case_operation_item_request_builder
                        ## 
                        def operations_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["caseOperation%2Did"] = id
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Operations::Item::CaseOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Update the navigation property ediscoveryCases in security
                        ## @param body The request body
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of ediscovery_case
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryCase.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the reviewSets property of the microsoft.graph.security.ediscoveryCase entity.
                        ## @param id Unique identifier of the item
                        ## @return a ediscovery_review_set_item_request_builder
                        ## 
                        def review_sets_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["ediscoveryReviewSet%2Did"] = id
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::ReviewSets::Item::EdiscoveryReviewSetItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the searches property of the microsoft.graph.security.ediscoveryCase entity.
                        ## @param id Unique identifier of the item
                        ## @return a ediscovery_search_item_request_builder
                        ## 
                        def searches_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["ediscoverySearch%2Did"] = id
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Searches::Item::EdiscoverySearchItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the tags property of the microsoft.graph.security.ediscoveryCase entity.
                        ## @param id Unique identifier of the item
                        ## @return a ediscovery_review_tag_item_request_builder
                        ## 
                        def tags_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["ediscoveryReviewTag%2Did"] = id
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Tags::Item::EdiscoveryReviewTagItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property ediscoveryCases for security
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
                        ## Get ediscoveryCases from security
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
                        ## Update the navigation property ediscoveryCases in security
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
                        class EdiscoveryCaseItemRequestBuilderDeleteRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                        end

                        ## 
                        # Get ediscoveryCases from security
                        class EdiscoveryCaseItemRequestBuilderGetQueryParameters
                            
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
                        class EdiscoveryCaseItemRequestBuilderGetRequestConfiguration
                            
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
                        class EdiscoveryCaseItemRequestBuilderPatchRequestConfiguration
                            
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
