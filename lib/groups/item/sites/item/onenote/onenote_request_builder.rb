require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../models/onenote'
require_relative '../../../../groups'
require_relative '../../../item'
require_relative '../../sites'
require_relative '../item'
require_relative './notebooks/item/notebook_item_request_builder'
require_relative './notebooks/notebooks_request_builder'
require_relative './onenote'
require_relative './operations/item/onenote_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './pages/item/onenote_page_item_request_builder'
require_relative './pages/pages_request_builder'
require_relative './resources/item/onenote_resource_item_request_builder'
require_relative './resources/resources_request_builder'
require_relative './section_groups/item/section_group_item_request_builder'
require_relative './section_groups/section_groups_request_builder'
require_relative './sections/item/onenote_section_item_request_builder'
require_relative './sections/sections_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Sites
                module Item
                    module Onenote
                        ## 
                        # Provides operations to manage the onenote property of the microsoft.graph.site entity.
                        class OnenoteRequestBuilder
                            
                            ## 
                            # Provides operations to manage the notebooks property of the microsoft.graph.onenote entity.
                            def notebooks()
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::NotebooksRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the operations property of the microsoft.graph.onenote entity.
                            def operations()
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the pages property of the microsoft.graph.onenote entity.
                            def pages()
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Pages::PagesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Path parameters for the request
                            @path_parameters
                            ## 
                            # The request adapter to use to execute the requests.
                            @request_adapter
                            ## 
                            # Provides operations to manage the resources property of the microsoft.graph.onenote entity.
                            def resources()
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Resources::ResourcesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the sectionGroups property of the microsoft.graph.onenote entity.
                            def section_groups()
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::SectionGroups::SectionGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the sections property of the microsoft.graph.onenote entity.
                            def sections()
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Sections::SectionsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Url template to use to build the URL for the current request builder
                            @url_template
                            ## 
                            ## Instantiates a new OnenoteRequestBuilder and sets the default values.
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/onenote{?%24select,%24expand}"
                                @request_adapter = request_adapter
                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                            end
                            ## 
                            ## Delete navigation property onenote for groups
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
                            ## Calls the OneNote service for notebook related operations.
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of onenote
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Onenote.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Provides operations to manage the notebooks property of the microsoft.graph.onenote entity.
                            ## @param id Unique identifier of the item
                            ## @return a notebook_item_request_builder
                            ## 
                            def notebooks_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["notebook%2Did"] = id
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::NotebookItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the operations property of the microsoft.graph.onenote entity.
                            ## @param id Unique identifier of the item
                            ## @return a onenote_operation_item_request_builder
                            ## 
                            def operations_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["onenoteOperation%2Did"] = id
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Operations::Item::OnenoteOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the pages property of the microsoft.graph.onenote entity.
                            ## @param id Unique identifier of the item
                            ## @return a onenote_page_item_request_builder
                            ## 
                            def pages_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["onenotePage%2Did"] = id
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Pages::Item::OnenotePageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Update the navigation property onenote in groups
                            ## @param body The request body
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of onenote
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Onenote.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Provides operations to manage the resources property of the microsoft.graph.onenote entity.
                            ## @param id Unique identifier of the item
                            ## @return a onenote_resource_item_request_builder
                            ## 
                            def resources_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["onenoteResource%2Did"] = id
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Resources::Item::OnenoteResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the sectionGroups property of the microsoft.graph.onenote entity.
                            ## @param id Unique identifier of the item
                            ## @return a section_group_item_request_builder
                            ## 
                            def section_groups_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["sectionGroup%2Did"] = id
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::SectionGroups::Item::SectionGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the sections property of the microsoft.graph.onenote entity.
                            ## @param id Unique identifier of the item
                            ## @return a onenote_section_item_request_builder
                            ## 
                            def sections_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["onenoteSection%2Did"] = id
                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Sections::Item::OnenoteSectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Delete navigation property onenote for groups
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
                            ## Calls the OneNote service for notebook related operations.
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
                            ## Update the navigation property onenote in groups
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
                            class OnenoteRequestBuilderDeleteRequestConfiguration
                                
                                ## 
                                # Request headers
                                attr_accessor :headers
                                ## 
                                # Request options
                                attr_accessor :options
                            end

                            ## 
                            # Calls the OneNote service for notebook related operations.
                            class OnenoteRequestBuilderGetQueryParameters
                                
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
                            class OnenoteRequestBuilderGetRequestConfiguration
                                
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
                            class OnenoteRequestBuilderPatchRequestConfiguration
                                
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
