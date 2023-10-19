require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/onenote_page'
require_relative '../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../groups'
require_relative '../../../../../item'
require_relative '../../../../onenote'
require_relative '../../../sections'
require_relative '../../item'
require_relative '../pages'
require_relative './content/content_request_builder'
require_relative './copy_to_section/copy_to_section_request_builder'
require_relative './item'
require_relative './onenote_patch_content/onenote_patch_content_request_builder'
require_relative './parent_notebook/parent_notebook_request_builder'
require_relative './parent_section/parent_section_request_builder'
require_relative './preview/preview_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Onenote
                module Sections
                    module Item
                        module Pages
                            module Item
                                ## 
                                # Provides operations to manage the pages property of the microsoft.graph.onenoteSection entity.
                                class OnenotePageItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to manage the media for the group entity.
                                    def content()
                                        return MicrosoftGraph::Groups::Item::Onenote::Sections::Item::Pages::Item::Content::ContentRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the copyToSection method.
                                    def copy_to_section()
                                        return MicrosoftGraph::Groups::Item::Onenote::Sections::Item::Pages::Item::CopyToSection::CopyToSectionRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the onenotePatchContent method.
                                    def onenote_patch_content()
                                        return MicrosoftGraph::Groups::Item::Onenote::Sections::Item::Pages::Item::OnenotePatchContent::OnenotePatchContentRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the parentNotebook property of the microsoft.graph.onenotePage entity.
                                    def parent_notebook()
                                        return MicrosoftGraph::Groups::Item::Onenote::Sections::Item::Pages::Item::ParentNotebook::ParentNotebookRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the parentSection property of the microsoft.graph.onenotePage entity.
                                    def parent_section()
                                        return MicrosoftGraph::Groups::Item::Onenote::Sections::Item::Pages::Item::ParentSection::ParentSectionRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the preview method.
                                    def preview()
                                        return MicrosoftGraph::Groups::Item::Onenote::Sections::Item::Pages::Item::Preview::PreviewRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new OnenotePageItemRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/onenote/sections/{onenoteSection%2Did}/pages/{onenotePage%2Did}{?%24select,%24expand}")
                                    end
                                    ## 
                                    ## Delete navigation property pages for groups
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of void
                                    ## 
                                    def delete(request_configuration=nil)
                                        request_info = self.to_delete_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, nil, error_mapping)
                                    end
                                    ## 
                                    ## The collection of pages in the section.  Read-only. Nullable.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of onenote_page
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OnenotePage.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Update the navigation property pages in groups
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of onenote_page
                                    ## 
                                    def patch(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_patch_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OnenotePage.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Delete navigation property pages for groups
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a request_information
                                    ## 
                                    def to_delete_request_information(request_configuration=nil)
                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                        unless request_configuration.nil?
                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                            request_info.add_request_options(request_configuration.options)
                                        end
                                        request_info.url_template = @url_template
                                        request_info.path_parameters = @path_parameters
                                        request_info.http_method = :DELETE
                                        return request_info
                                    end
                                    ## 
                                    ## The collection of pages in the section.  Read-only. Nullable.
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
                                    ## Update the navigation property pages in groups
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
                                        request_info.url_template = @url_template
                                        request_info.path_parameters = @path_parameters
                                        request_info.http_method = :PATCH
                                        request_info.headers.try_add('Accept', 'application/json')
                                        return request_info
                                    end
                                    ## 
                                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                    ## @param raw_url The raw URL to use for the request builder.
                                    ## @return a onenote_page_item_request_builder
                                    ## 
                                    def with_url(raw_url)
                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                        return OnenotePageItemRequestBuilder.new(raw_url, @request_adapter)
                                    end

                                    ## 
                                    # The collection of pages in the section.  Read-only. Nullable.
                                    class OnenotePageItemRequestBuilderGetQueryParameters
                                        
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
