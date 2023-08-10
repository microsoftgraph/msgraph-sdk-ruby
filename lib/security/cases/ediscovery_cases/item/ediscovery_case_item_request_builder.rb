require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../../models/security_ediscovery_case'
require_relative '../../../security'
require_relative '../../cases'
require_relative '../ediscovery_cases'
require_relative './custodians/custodians_request_builder'
require_relative './item'
require_relative './microsoft_graph_security_close/microsoft_graph_security_close_request_builder'
require_relative './microsoft_graph_security_reopen/microsoft_graph_security_reopen_request_builder'
require_relative './noncustodial_data_sources/noncustodial_data_sources_request_builder'
require_relative './operations/operations_request_builder'
require_relative './review_sets/review_sets_request_builder'
require_relative './searches/searches_request_builder'
require_relative './settings/settings_request_builder'
require_relative './tags/tags_request_builder'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    ## 
                    # Provides operations to manage the ediscoveryCases property of the microsoft.graph.security.casesRoot entity.
                    class EdiscoveryCaseItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the custodians property of the microsoft.graph.security.ediscoveryCase entity.
                        def custodians()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::Custodians::CustodiansRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the close method.
                        def microsoft_graph_security_close()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::MicrosoftGraphSecurityClose::MicrosoftGraphSecurityCloseRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the reopen method.
                        def microsoft_graph_security_reopen()
                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::MicrosoftGraphSecurityReopen::MicrosoftGraphSecurityReopenRequestBuilder.new(@path_parameters, @request_adapter)
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
                        ## Instantiates a new EdiscoveryCaseItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete an ediscoveryCase object.
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
                        ## Read the properties and relationships of an ediscoveryCase object.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of security_ediscovery_case
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoveryCase.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the properties of an ediscoveryCase object.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of security_ediscovery_case
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoveryCase.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete an ediscoveryCase object.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## Read the properties and relationships of an ediscoveryCase object.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## Update the properties of an ediscoveryCase object.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                            return request_info
                        end

                        ## 
                        # Read the properties and relationships of an ediscoveryCase object.
                        class EdiscoveryCaseItemRequestBuilderGetQueryParameters
                            
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
