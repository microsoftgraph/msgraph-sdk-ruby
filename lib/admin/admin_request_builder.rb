require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/admin'
require_relative '../models/o_data_errors_o_data_error'
require_relative './admin'
require_relative './edge/edge_request_builder'
require_relative './microsoft365_apps/microsoft365_apps_request_builder'
require_relative './people/people_request_builder'
require_relative './service_announcement/service_announcement_request_builder'
require_relative './sharepoint/sharepoint_request_builder'

module MicrosoftGraph
    module Admin
        ## 
        # Provides operations to manage the admin singleton.
        class AdminRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the edge property of the microsoft.graph.admin entity.
            def edge()
                return MicrosoftGraph::Admin::Edge::EdgeRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the microsoft365Apps property of the microsoft.graph.admin entity.
            def microsoft365_apps()
                return MicrosoftGraph::Admin::Microsoft365Apps::Microsoft365AppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the people property of the microsoft.graph.admin entity.
            def people()
                return MicrosoftGraph::Admin::People::PeopleRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the serviceAnnouncement property of the microsoft.graph.admin entity.
            def service_announcement()
                return MicrosoftGraph::Admin::ServiceAnnouncement::ServiceAnnouncementRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the sharepoint property of the microsoft.graph.admin entity.
            def sharepoint()
                return MicrosoftGraph::Admin::Sharepoint::SharepointRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new AdminRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/admin{?%24expand,%24select}")
            end
            ## 
            ## Get admin
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of admin
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Admin.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update admin
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of admin
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Admin.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get admin
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
            ## Update admin
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
                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                request_info.url_template = '{+baseurl}/admin'
                request_info.path_parameters = @path_parameters
                request_info.http_method = :PATCH
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
            ## @param raw_url The raw URL to use for the request builder.
            ## @return a admin_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return AdminRequestBuilder.new(raw_url, @request_adapter)
            end

            ## 
            # Get admin
            class AdminRequestBuilderGetQueryParameters
                
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
