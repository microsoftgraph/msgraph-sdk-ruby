require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/agreement_acceptance'
require_relative '../models/agreement_acceptance_collection_response'
require_relative '../models/o_data_errors/o_data_error'
require_relative './agreement_acceptances'
require_relative './item/agreement_acceptance_item_request_builder'

module MicrosoftGraph
    module AgreementAcceptances
        ## 
        # Provides operations to manage the collection of agreementAcceptance entities.
        class AgreementAcceptancesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            ## Provides operations to manage the collection of agreementAcceptance entities.
            ## @param agreement_acceptance_id Unique identifier of the item
            ## @return a agreement_acceptance_item_request_builder
            ## 
            def by_agreement_acceptance_id(agreement_acceptance_id)
                raise StandardError, 'agreement_acceptance_id cannot be null' if agreement_acceptance_id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["agreementAcceptance%2Did"] = agreement_acceptance_id
                return MicrosoftGraph::AgreementAcceptances::Item::AgreementAcceptanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new AgreementAcceptancesRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/agreementAcceptances{?%24search,%24select}")
            end
            ## 
            ## Get entities from agreementAcceptances
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of agreement_acceptance_collection_response
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AgreementAcceptanceCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Add new entity to agreementAcceptances
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of agreement_acceptance
            ## 
            def post(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_post_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AgreementAcceptance.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get entities from agreementAcceptances
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
            ## Add new entity to agreementAcceptances
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_post_request_information(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :POST
                request_info.headers.add('Accept', 'application/json')
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                return request_info
            end

            ## 
            # Get entities from agreementAcceptances
            class AgreementAcceptancesRequestBuilderGetQueryParameters
                
                ## 
                # Search items by search phrases
                attr_accessor :search
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
                        when "search"
                            return "%24search"
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
