require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../models/onenote_section'
require_relative '../../../../../../../../../../groups'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../sites'
require_relative '../../../../../../../item'
require_relative '../../../../../../onenote'
require_relative '../../../../../notebooks'
require_relative '../../../../item'
require_relative '../../../section_groups'
require_relative '../../item'
require_relative '../sections'
require_relative './copy_to_notebook/copy_to_notebook_request_builder'
require_relative './copy_to_section_group/copy_to_section_group_request_builder'
require_relative './item'
require_relative './pages/item/onenote_page_item_request_builder'
require_relative './pages/pages_request_builder'
require_relative './parent_notebook/parent_notebook_request_builder'
require_relative './parent_section_group/parent_section_group_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Sites
                module Item
                    module Onenote
                        module Notebooks
                            module Item
                                module SectionGroups
                                    module Item
                                        module Sections
                                            module Item
                                                ## 
                                                # Provides operations to manage the sections property of the microsoft.graph.sectionGroup entity.
                                                class OnenoteSectionItemRequestBuilder
                                                    
                                                    ## 
                                                    # Provides operations to call the copyToNotebook method.
                                                    def copy_to_notebook()
                                                        return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::Sections::Item::CopyToNotebook::CopyToNotebookRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # Provides operations to call the copyToSectionGroup method.
                                                    def copy_to_section_group()
                                                        return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::Sections::Item::CopyToSectionGroup::CopyToSectionGroupRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # Provides operations to manage the pages property of the microsoft.graph.onenoteSection entity.
                                                    def pages()
                                                        return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::Sections::Item::Pages::PagesRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # Provides operations to manage the parentNotebook property of the microsoft.graph.onenoteSection entity.
                                                    def parent_notebook()
                                                        return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::Sections::Item::ParentNotebook::ParentNotebookRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # Provides operations to manage the parentSectionGroup property of the microsoft.graph.onenoteSection entity.
                                                    def parent_section_group()
                                                        return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::Sections::Item::ParentSectionGroup::ParentSectionGroupRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
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
                                                    ## Instantiates a new OnenoteSectionItemRequestBuilder and sets the default values.
                                                    ## @param pathParameters Path parameters for the request
                                                    ## @param requestAdapter The request adapter to use to execute the requests.
                                                    ## @return a void
                                                    ## 
                                                    def initialize(path_parameters, request_adapter)
                                                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                        @url_template = "{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/onenote/notebooks/{notebook%2Did}/sectionGroups/{sectionGroup%2Did}/sections/{onenoteSection%2Did}{?%24select,%24expand}"
                                                        @request_adapter = request_adapter
                                                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                                                    end
                                                    ## 
                                                    ## Delete navigation property sections for groups
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
                                                    ## The sections in the section group. Read-only. Nullable.
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of onenote_section
                                                    ## 
                                                    def get(request_configuration=nil)
                                                        request_info = self.to_get_request_information(
                                                            request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OnenoteSection.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Provides operations to manage the pages property of the microsoft.graph.onenoteSection entity.
                                                    ## @param id Unique identifier of the item
                                                    ## @return a onenote_page_item_request_builder
                                                    ## 
                                                    def pages_by_id(id)
                                                        raise StandardError, 'id cannot be null' if id.nil?
                                                        url_tpl_params = @path_parameters.clone
                                                        url_tpl_params["onenotePage%2Did"] = id
                                                        return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::Sections::Item::Pages::Item::OnenotePageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                                    end
                                                    ## 
                                                    ## Update the navigation property sections in groups
                                                    ## @param body The request body
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of onenote_section
                                                    ## 
                                                    def patch(body, request_configuration=nil)
                                                        raise StandardError, 'body cannot be null' if body.nil?
                                                        request_info = self.to_patch_request_information(
                                                            body, request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OnenoteSection.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Delete navigation property sections for groups
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
                                                    ## The sections in the section group. Read-only. Nullable.
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
                                                    ## Update the navigation property sections in groups
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
                                                    class OnenoteSectionItemRequestBuilderDeleteRequestConfiguration
                                                        
                                                        ## 
                                                        # Request headers
                                                        attr_accessor :headers
                                                        ## 
                                                        # Request options
                                                        attr_accessor :options
                                                    end

                                                    ## 
                                                    # The sections in the section group. Read-only. Nullable.
                                                    class OnenoteSectionItemRequestBuilderGetQueryParameters
                                                        
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
                                                    class OnenoteSectionItemRequestBuilderGetRequestConfiguration
                                                        
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
                                                    class OnenoteSectionItemRequestBuilderPatchRequestConfiguration
                                                        
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
    end
end
