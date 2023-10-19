require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../models/section_group'
require_relative '../../../../../../../../groups'
require_relative '../../../../../../../item'
require_relative '../../../../../../sites'
require_relative '../../../../../item'
require_relative '../../../../onenote'
require_relative '../../../notebooks'
require_relative '../../item'
require_relative '../section_groups'
require_relative './item'
require_relative './parent_notebook/parent_notebook_request_builder'
require_relative './parent_section_group/parent_section_group_request_builder'
require_relative './section_groups/section_groups_request_builder'
require_relative './sections/sections_request_builder'

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
                                        ## 
                                        # Provides operations to manage the sectionGroups property of the microsoft.graph.notebook entity.
                                        class SectionGroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            # Provides operations to manage the parentNotebook property of the microsoft.graph.sectionGroup entity.
                                            def parent_notebook()
                                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::ParentNotebook::ParentNotebookRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the parentSectionGroup property of the microsoft.graph.sectionGroup entity.
                                            def parent_section_group()
                                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::ParentSectionGroup::ParentSectionGroupRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the sectionGroups property of the microsoft.graph.sectionGroup entity.
                                            def section_groups()
                                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::SectionGroups::SectionGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the sections property of the microsoft.graph.sectionGroup entity.
                                            def sections()
                                                return MicrosoftGraph::Groups::Item::Sites::Item::Onenote::Notebooks::Item::SectionGroups::Item::Sections::SectionsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            ## Instantiates a new SectionGroupItemRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/onenote/notebooks/{notebook%2Did}/sectionGroups/{sectionGroup%2Did}{?%24select,%24expand}")
                                            end
                                            ## 
                                            ## Delete navigation property sectionGroups for groups
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
                                            ## The section groups in the notebook. Read-only. Nullable.
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of section_group
                                            ## 
                                            def get(request_configuration=nil)
                                                request_info = self.to_get_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SectionGroup.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Update the navigation property sectionGroups in groups
                                            ## @param body The request body
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of section_group
                                            ## 
                                            def patch(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = self.to_patch_request_information(
                                                    body, request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SectionGroup.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Delete navigation property sectionGroups for groups
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
                                            ## The section groups in the notebook. Read-only. Nullable.
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
                                            ## Update the navigation property sectionGroups in groups
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
                                            ## @return a section_group_item_request_builder
                                            ## 
                                            def with_url(raw_url)
                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                return SectionGroupItemRequestBuilder.new(raw_url, @request_adapter)
                                            end

                                            ## 
                                            # The section groups in the notebook. Read-only. Nullable.
                                            class SectionGroupItemRequestBuilderGetQueryParameters
                                                
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
