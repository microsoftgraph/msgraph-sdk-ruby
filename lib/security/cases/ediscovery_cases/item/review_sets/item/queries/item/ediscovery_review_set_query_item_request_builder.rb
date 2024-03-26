require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../models/security_ediscovery_review_set_query'
require_relative '../../../../../../../security'
require_relative '../../../../../../cases'
require_relative '../../../../../ediscovery_cases'
require_relative '../../../../item'
require_relative '../../../review_sets'
require_relative '../../item'
require_relative '../queries'
require_relative './item'
require_relative './microsoft_graph_security_apply_tags/microsoft_graph_security_apply_tags_request_builder'
require_relative './microsoft_graph_security_export/microsoft_graph_security_export_request_builder'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module ReviewSets
                        module Item
                            module Queries
                                module Item
                                    ## 
                                    # Provides operations to manage the queries property of the microsoft.graph.security.ediscoveryReviewSet entity.
                                    class EdiscoveryReviewSetQueryItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to call the applyTags method.
                                        def microsoft_graph_security_apply_tags()
                                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::ReviewSets::Item::Queries::Item::MicrosoftGraphSecurityApplyTags::MicrosoftGraphSecurityApplyTagsRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the export method.
                                        def microsoft_graph_security_export()
                                            return MicrosoftGraph::Security::Cases::EdiscoveryCases::Item::ReviewSets::Item::Queries::Item::MicrosoftGraphSecurityExport::MicrosoftGraphSecurityExportRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new EdiscoveryReviewSetQueryItemRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/reviewSets/{ediscoveryReviewSet%2Did}/queries/{ediscoveryReviewSetQuery%2Did}{?%24expand,%24select}")
                                        end
                                        ## 
                                        ## Delete an ediscoveryReviewSetQuery object.
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
                                        ## Read the properties and relationships of an ediscoveryReviewSetQuery object.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of security_ediscovery_review_set_query
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoveryReviewSetQuery.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Update the properties of an ediscoveryReviewSetQuery object.
                                        ## @param body The request body
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of security_ediscovery_review_set_query
                                        ## 
                                        def patch(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = self.to_patch_request_information(
                                                body, request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoveryReviewSetQuery.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Delete an ediscoveryReviewSetQuery object.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a request_information
                                        ## 
                                        def to_delete_request_information(request_configuration=nil)
                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                            unless request_configuration.nil?
                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                request_info.add_request_options(request_configuration.options)
                                            end
                                            request_info.url_template = '{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/reviewSets/{ediscoveryReviewSet%2Did}/queries/{ediscoveryReviewSetQuery%2Did}'
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :DELETE
                                            request_info.headers.try_add('Accept', 'application/json')
                                            return request_info
                                        end
                                        ## 
                                        ## Read the properties and relationships of an ediscoveryReviewSetQuery object.
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
                                        ## Update the properties of an ediscoveryReviewSetQuery object.
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
                                            request_info.url_template = '{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/reviewSets/{ediscoveryReviewSet%2Did}/queries/{ediscoveryReviewSetQuery%2Did}'
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :PATCH
                                            request_info.headers.try_add('Accept', 'application/json')
                                            return request_info
                                        end
                                        ## 
                                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                        ## @param raw_url The raw URL to use for the request builder.
                                        ## @return a ediscovery_review_set_query_item_request_builder
                                        ## 
                                        def with_url(raw_url)
                                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                            return EdiscoveryReviewSetQueryItemRequestBuilder.new(raw_url, @request_adapter)
                                        end

                                        ## 
                                        # Read the properties and relationships of an ediscoveryReviewSetQuery object.
                                        class EdiscoveryReviewSetQueryItemRequestBuilderGetQueryParameters
                                            
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
