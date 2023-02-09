require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../models/term_store/term'
require_relative '../../../../../../../../sites'
require_relative '../../../../../../../item'
require_relative '../../../../../../term_store'
require_relative '../../../../../groups'
require_relative '../../../../item'
require_relative '../../../sets'
require_relative '../../item'
require_relative '../terms'
require_relative './children/children_request_builder'
require_relative './children/item/term_item_request_builder'
require_relative './item'
require_relative './relations/item/relation_item_request_builder'
require_relative './relations/relations_request_builder'
require_relative './set/set_request_builder'

module MicrosoftGraph
    module Sites
        module Item
            module TermStore
                module Groups
                    module Item
                        module Sets
                            module Item
                                module Terms
                                    module Item
                                        ## 
                                        # Provides operations to manage the terms property of the microsoft.graph.termStore.set entity.
                                        class TermItemRequestBuilder
                                            
                                            ## 
                                            # Provides operations to manage the children property of the microsoft.graph.termStore.term entity.
                                            def children()
                                                return MicrosoftGraph::Sites::Item::TermStore::Groups::Item::Sets::Item::Terms::Item::Children::ChildrenRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Path parameters for the request
                                            @path_parameters
                                            ## 
                                            # Provides operations to manage the relations property of the microsoft.graph.termStore.term entity.
                                            def relations()
                                                return MicrosoftGraph::Sites::Item::TermStore::Groups::Item::Sets::Item::Terms::Item::Relations::RelationsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # The request adapter to use to execute the requests.
                                            @request_adapter
                                            ## 
                                            # Provides operations to manage the set property of the microsoft.graph.termStore.term entity.
                                            def set()
                                                return MicrosoftGraph::Sites::Item::TermStore::Groups::Item::Sets::Item::Terms::Item::Set::SetRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Url template to use to build the URL for the current request builder
                                            @url_template
                                            ## 
                                            ## Provides operations to manage the children property of the microsoft.graph.termStore.term entity.
                                            ## @param id Unique identifier of the item
                                            ## @return a term_item_request_builder
                                            ## 
                                            def children_by_id(id)
                                                raise StandardError, 'id cannot be null' if id.nil?
                                                url_tpl_params = @path_parameters.clone
                                                url_tpl_params["term%2Did1"] = id
                                                return MicrosoftGraph::Sites::Item::TermStore::Groups::Item::Sets::Item::Terms::Item::Children::Item::TermItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                            end
                                            ## 
                                            ## Instantiates a new TermItemRequestBuilder and sets the default values.
                                            ## @param pathParameters Path parameters for the request
                                            ## @param requestAdapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                @url_template = "{+baseurl}/sites/{site%2Did}/termStore/groups/{group%2Did}/sets/{set%2Did}/terms/{term%2Did}{?%24select,%24expand}"
                                                @request_adapter = request_adapter
                                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                                            end
                                            ## 
                                            ## Delete navigation property terms for sites
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
                                            ## All the terms under the set.
                                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of term
                                            ## 
                                            def get(request_configuration=nil)
                                                request_info = self.to_get_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TermStore::Term.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Update the navigation property terms in sites
                                            ## @param body The request body
                                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of term
                                            ## 
                                            def patch(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = self.to_patch_request_information(
                                                    body, request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TermStore::Term.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Provides operations to manage the relations property of the microsoft.graph.termStore.term entity.
                                            ## @param id Unique identifier of the item
                                            ## @return a relation_item_request_builder
                                            ## 
                                            def relations_by_id(id)
                                                raise StandardError, 'id cannot be null' if id.nil?
                                                url_tpl_params = @path_parameters.clone
                                                url_tpl_params["relation%2Did"] = id
                                                return MicrosoftGraph::Sites::Item::TermStore::Groups::Item::Sets::Item::Terms::Item::Relations::Item::RelationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                            end
                                            ## 
                                            ## Delete navigation property terms for sites
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
                                            ## All the terms under the set.
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
                                            ## Update the navigation property terms in sites
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
                                            class TermItemRequestBuilderDeleteRequestConfiguration
                                                
                                                ## 
                                                # Request headers
                                                attr_accessor :headers
                                                ## 
                                                # Request options
                                                attr_accessor :options
                                            end

                                            ## 
                                            # All the terms under the set.
                                            class TermItemRequestBuilderGetQueryParameters
                                                
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
                                            class TermItemRequestBuilderGetRequestConfiguration
                                                
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
                                            class TermItemRequestBuilderPatchRequestConfiguration
                                                
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
end
