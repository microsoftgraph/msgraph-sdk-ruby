require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../models/security_file_plan_descriptor'
require_relative '../../../../security'
require_relative '../../../labels'
require_relative '../../retention_labels'
require_relative '../item'
require_relative './authority_template/authority_template_request_builder'
require_relative './category_template/category_template_request_builder'
require_relative './citation_template/citation_template_request_builder'
require_relative './department_template/department_template_request_builder'
require_relative './descriptors'
require_relative './file_plan_reference_template/file_plan_reference_template_request_builder'

module MicrosoftGraph
    module Security
        module Labels
            module RetentionLabels
                module Item
                    module Descriptors
                        ## 
                        # Provides operations to manage the descriptors property of the microsoft.graph.security.retentionLabel entity.
                        class DescriptorsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the authorityTemplate property of the microsoft.graph.security.filePlanDescriptor entity.
                            def authority_template()
                                return MicrosoftGraph::Security::Labels::RetentionLabels::Item::Descriptors::AuthorityTemplate::AuthorityTemplateRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the categoryTemplate property of the microsoft.graph.security.filePlanDescriptor entity.
                            def category_template()
                                return MicrosoftGraph::Security::Labels::RetentionLabels::Item::Descriptors::CategoryTemplate::CategoryTemplateRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the citationTemplate property of the microsoft.graph.security.filePlanDescriptor entity.
                            def citation_template()
                                return MicrosoftGraph::Security::Labels::RetentionLabels::Item::Descriptors::CitationTemplate::CitationTemplateRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the departmentTemplate property of the microsoft.graph.security.filePlanDescriptor entity.
                            def department_template()
                                return MicrosoftGraph::Security::Labels::RetentionLabels::Item::Descriptors::DepartmentTemplate::DepartmentTemplateRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the filePlanReferenceTemplate property of the microsoft.graph.security.filePlanDescriptor entity.
                            def file_plan_reference_template()
                                return MicrosoftGraph::Security::Labels::RetentionLabels::Item::Descriptors::FilePlanReferenceTemplate::FilePlanReferenceTemplateRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new DescriptorsRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/security/labels/retentionLabels/{retentionLabel%2Did}/descriptors{?%24expand,%24select}")
                            end
                            ## 
                            ## Delete navigation property descriptors for security
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
                            ## Get descriptors from security
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of security_file_plan_descriptor
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanDescriptor.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Update the navigation property descriptors in security
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of security_file_plan_descriptor
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanDescriptor.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Delete navigation property descriptors for security
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_delete_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.url_template = '{+baseurl}/security/labels/retentionLabels/{retentionLabel%2Did}/descriptors'
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :DELETE
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Get descriptors from security
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
                            ## Update the navigation property descriptors in security
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
                                request_info.url_template = '{+baseurl}/security/labels/retentionLabels/{retentionLabel%2Did}/descriptors'
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :PATCH
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a descriptors_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return DescriptorsRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # Get descriptors from security
                            class DescriptorsRequestBuilderGetQueryParameters
                                
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
