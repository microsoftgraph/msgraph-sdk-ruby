require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/information_protection'
require_relative '../models/o_data_errors/o_data_error'
require_relative './bitlocker/bitlocker_request_builder'
require_relative './information_protection'
require_relative './threat_assessment_requests/item/threat_assessment_request_item_request_builder'
require_relative './threat_assessment_requests/threat_assessment_requests_request_builder'

module MicrosoftGraph
    module InformationProtection
        ## 
        # Provides operations to manage the informationProtection singleton.
        class InformationProtectionRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the bitlocker property of the microsoft.graph.informationProtection entity.
            def bitlocker()
                return MicrosoftGraph::InformationProtection::Bitlocker::BitlockerRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the threatAssessmentRequests property of the microsoft.graph.informationProtection entity.
            def threat_assessment_requests()
                return MicrosoftGraph::InformationProtection::ThreatAssessmentRequests::ThreatAssessmentRequestsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new InformationProtectionRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/informationProtection{?%24select,%24expand}")
            end
            ## 
            ## Get informationProtection
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of information_protection
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::InformationProtection.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update informationProtection
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of information_protection
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::InformationProtection.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the threatAssessmentRequests property of the microsoft.graph.informationProtection entity.
            ## @param id Unique identifier of the item
            ## @return a threat_assessment_request_item_request_builder
            ## 
            def threat_assessment_requests_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["threatAssessmentRequest%2Did"] = id
                return MicrosoftGraph::InformationProtection::ThreatAssessmentRequests::Item::ThreatAssessmentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get informationProtection
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
            ## Update informationProtection
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
            # Get informationProtection
            class InformationProtectionRequestBuilderGetQueryParameters
                
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
