require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../models/security/ediscovery_custodian'
require_relative '../../../../../security'
require_relative '../../../../cases'
require_relative '../../../ediscovery_cases'
require_relative '../../item'
require_relative '../custodians'
require_relative './item'
require_relative './last_index_operation/last_index_operation_request_builder'
require_relative './security_activate/security_activate_request_builder'
require_relative './security_apply_hold/security_apply_hold_request_builder'
require_relative './security_release/security_release_request_builder'
require_relative './security_remove_hold/security_remove_hold_request_builder'
require_relative './security_update_index/security_update_index_request_builder'
require_relative './site_sources/item/site_source_item_request_builder'
require_relative './site_sources/site_sources_request_builder'
require_relative './unified_group_sources/item/unified_group_source_item_request_builder'
require_relative './unified_group_sources/unified_group_sources_request_builder'
require_relative './user_sources/item/user_source_item_request_builder'
require_relative './user_sources/user_sources_request_builder'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module Custodians
                        module Item
                            ## 
                            # Provides operations to manage the custodians property of the microsoft.graph.security.ediscoveryCase entity.
                            class EdiscoveryCustodianItemRequestBuilder
                                
                                ## 
                                # Provides operations to manage the lastIndexOperation property of the microsoft.graph.security.ediscoveryCustodian entity.
                                def last_index_operation()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::LastIndexOperation::LastIndexOperationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Path parameters for the request
                                @path_parameters
                                ## 
                                # The request adapter to use to execute the requests.
                                @request_adapter
                                ## 
                                # Provides operations to call the activate method.
                                def security_activate()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::SecurityActivate::SecurityActivateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the applyHold method.
                                def security_apply_hold()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::SecurityApplyHold::SecurityApplyHoldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the release method.
                                def security_release()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::SecurityRelease::SecurityReleaseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the removeHold method.
                                def security_remove_hold()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::SecurityRemoveHold::SecurityRemoveHoldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the updateIndex method.
                                def security_update_index()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::SecurityUpdateIndex::SecurityUpdateIndexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the siteSources property of the microsoft.graph.security.ediscoveryCustodian entity.
                                def site_sources()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::SiteSources::SiteSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the unifiedGroupSources property of the microsoft.graph.security.ediscoveryCustodian entity.
                                def unified_group_sources()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::UnifiedGroupSources::UnifiedGroupSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Url template to use to build the URL for the current request builder
                                @url_template
                                ## 
                                # Provides operations to manage the userSources property of the microsoft.graph.security.ediscoveryCustodian entity.
                                def user_sources()
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::UserSources::UserSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new EdiscoveryCustodianItemRequestBuilder and sets the default values.
                                ## @param pathParameters Path parameters for the request
                                ## @param requestAdapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                    @url_template = "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/custodians/{ediscoveryCustodian%2Did}{?%24select,%24expand}"
                                    @request_adapter = request_adapter
                                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                                end
                                ## 
                                ## Delete navigation property custodians for security
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
                                ## Returns a list of case ediscoveryCustodian objects for this case.
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of ediscovery_custodian
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryCustodian.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the navigation property custodians in security
                                ## @param body The request body
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of ediscovery_custodian
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryCustodian.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Provides operations to manage the siteSources property of the microsoft.graph.security.ediscoveryCustodian entity.
                                ## @param id Unique identifier of the item
                                ## @return a site_source_item_request_builder
                                ## 
                                def site_sources_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["siteSource%2Did"] = id
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::SiteSources::Item::SiteSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Delete navigation property custodians for security
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
                                ## Returns a list of case ediscoveryCustodian objects for this case.
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
                                ## Update the navigation property custodians in security
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
                                ## Provides operations to manage the unifiedGroupSources property of the microsoft.graph.security.ediscoveryCustodian entity.
                                ## @param id Unique identifier of the item
                                ## @return a unified_group_source_item_request_builder
                                ## 
                                def unified_group_sources_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["unifiedGroupSource%2Did"] = id
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::UnifiedGroupSources::Item::UnifiedGroupSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Provides operations to manage the userSources property of the microsoft.graph.security.ediscoveryCustodian entity.
                                ## @param id Unique identifier of the item
                                ## @return a user_source_item_request_builder
                                ## 
                                def user_sources_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["userSource%2Did"] = id
                                    return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::Item::UserSources::Item::UserSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class EdiscoveryCustodianItemRequestBuilderDeleteRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                end

                                ## 
                                # Returns a list of case ediscoveryCustodian objects for this case.
                                class EdiscoveryCustodianItemRequestBuilderGetQueryParameters
                                    
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
                                class EdiscoveryCustodianItemRequestBuilderGetRequestConfiguration
                                    
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
                                class EdiscoveryCustodianItemRequestBuilderPatchRequestConfiguration
                                    
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
