require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../../../../models/term_store_term'
require_relative '../../../../../../../../../../../../../groups'
require_relative '../../../../../../../../../../../../item'
require_relative '../../../../../../../../../../../sites'
require_relative '../../../../../../../../../../item'
require_relative '../../../../../../../../../term_store'
require_relative '../../../../../../../../sets'
require_relative '../../../../../../../item'
require_relative '../../../../../../parent_group'
require_relative '../../../../../sets'
require_relative '../../../../item'
require_relative '../../../children'
require_relative '../../item'
require_relative '../children'
require_relative './item'
require_relative './relations/relations_request_builder'
require_relative './set/set_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Sites
                module Item
                    module TermStore
                        module Sets
                            module Item
                                module ParentGroup
                                    module Sets
                                        module Item
                                            module Children
                                                module Item
                                                    module Children
                                                        module Item
                                                            ## 
                                                            # Provides operations to manage the children property of the microsoft.graph.termStore.term entity.
                                                            class TermItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                                
                                                                ## 
                                                                # Provides operations to manage the relations property of the microsoft.graph.termStore.term entity.
                                                                def relations()
                                                                    return MicrosoftGraph::Groups::Item::Sites::Item::TermStore::Sets::Item::ParentGroup::Sets::Item::Children::Item::Children::Item::Relations::RelationsRequestBuilder.new(@path_parameters, @request_adapter)
                                                                end
                                                                ## 
                                                                # Provides operations to manage the set property of the microsoft.graph.termStore.term entity.
                                                                def set()
                                                                    return MicrosoftGraph::Groups::Item::Sites::Item::TermStore::Sets::Item::ParentGroup::Sets::Item::Children::Item::Children::Item::Set::SetRequestBuilder.new(@path_parameters, @request_adapter)
                                                                end
                                                                ## 
                                                                ## Instantiates a new TermItemRequestBuilder and sets the default values.
                                                                ## @param path_parameters Path parameters for the request
                                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                                ## @return a void
                                                                ## 
                                                                def initialize(path_parameters, request_adapter)
                                                                    super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/termStore/sets/{set%2Did}/parentGroup/sets/{set%2Did1}/children/{term%2Did}/children/{term%2Did1}{?%24expand,%24select}")
                                                                end
                                                                ## 
                                                                ## Delete navigation property children for groups
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a Fiber of void
                                                                ## 
                                                                def delete(request_configuration=nil)
                                                                    request_info = self.to_delete_request_information(
                                                                        request_configuration
                                                                    )
                                                                    error_mapping = Hash.new
                                                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                                                end
                                                                ## 
                                                                ## Children of current term.
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a Fiber of term_store_term
                                                                ## 
                                                                def get(request_configuration=nil)
                                                                    request_info = self.to_get_request_information(
                                                                        request_configuration
                                                                    )
                                                                    error_mapping = Hash.new
                                                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TermStoreTerm.create_from_discriminator_value(pn) }, error_mapping)
                                                                end
                                                                ## 
                                                                ## Update the navigation property children in groups
                                                                ## @param body The request body
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a Fiber of term_store_term
                                                                ## 
                                                                def patch(body, request_configuration=nil)
                                                                    raise StandardError, 'body cannot be null' if body.nil?
                                                                    request_info = self.to_patch_request_information(
                                                                        body, request_configuration
                                                                    )
                                                                    error_mapping = Hash.new
                                                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TermStoreTerm.create_from_discriminator_value(pn) }, error_mapping)
                                                                end
                                                                ## 
                                                                ## Delete navigation property children for groups
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a request_information
                                                                ## 
                                                                def to_delete_request_information(request_configuration=nil)
                                                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                    unless request_configuration.nil?
                                                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                        request_info.add_request_options(request_configuration.options)
                                                                    end
                                                                    request_info.url_template = '{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/termStore/sets/{set%2Did}/parentGroup/sets/{set%2Did1}/children/{term%2Did}/children/{term%2Did1}'
                                                                    request_info.path_parameters = @path_parameters
                                                                    request_info.http_method = :DELETE
                                                                    request_info.headers.try_add('Accept', 'application/json')
                                                                    return request_info
                                                                end
                                                                ## 
                                                                ## Children of current term.
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a request_information
                                                                ## 
                                                                def to_get_request_information(request_configuration=nil)
                                                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                    unless request_configuration.nil?
                                                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                                                        request_info.add_request_options(request_configuration.options)
                                                                    end
                                                                    request_info.url_template = @url_template
                                                                    request_info.path_parameters = @path_parameters
                                                                    request_info.http_method = :GET
                                                                    request_info.headers.try_add('Accept', 'application/json')
                                                                    return request_info
                                                                end
                                                                ## 
                                                                ## Update the navigation property children in groups
                                                                ## @param body The request body
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a request_information
                                                                ## 
                                                                def to_patch_request_information(body, request_configuration=nil)
                                                                    raise StandardError, 'body cannot be null' if body.nil?
                                                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                    unless request_configuration.nil?
                                                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                        request_info.add_request_options(request_configuration.options)
                                                                    end
                                                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                                    request_info.url_template = '{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/termStore/sets/{set%2Did}/parentGroup/sets/{set%2Did1}/children/{term%2Did}/children/{term%2Did1}'
                                                                    request_info.path_parameters = @path_parameters
                                                                    request_info.http_method = :PATCH
                                                                    request_info.headers.try_add('Accept', 'application/json')
                                                                    return request_info
                                                                end
                                                                ## 
                                                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                                ## @param raw_url The raw URL to use for the request builder.
                                                                ## @return a term_item_request_builder
                                                                ## 
                                                                def with_url(raw_url)
                                                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                                    return TermItemRequestBuilder.new(raw_url, @request_adapter)
                                                                end

                                                                ## 
                                                                # Children of current term.
                                                                class TermItemRequestBuilderGetQueryParameters
                                                                    
                                                                    ## 
                                                                    # Expand related entities
                                                                    attr_accessor :expand
                                                                    ## 
                                                                    # Select properties to be returned
                                                                    attr_accessor :select
                                                                    ## 
                                                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                                    ## @param original_name The original query parameter name in the class.
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
    end
end
