require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/authentication_strength_policy'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../policies'
require_relative '../authentication_strength_policies'
require_relative './combination_configurations/combination_configurations_request_builder'
require_relative './item'
require_relative './update_allowed_combinations/update_allowed_combinations_request_builder'
require_relative './usage/usage_request_builder'

module MicrosoftGraph
    module Policies
        module AuthenticationStrengthPolicies
            module Item
                ## 
                # Provides operations to manage the authenticationStrengthPolicies property of the microsoft.graph.policyRoot entity.
                class AuthenticationStrengthPolicyItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the combinationConfigurations property of the microsoft.graph.authenticationStrengthPolicy entity.
                    def combination_configurations()
                        return MicrosoftGraph::Policies::AuthenticationStrengthPolicies::Item::CombinationConfigurations::CombinationConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the updateAllowedCombinations method.
                    def update_allowed_combinations()
                        return MicrosoftGraph::Policies::AuthenticationStrengthPolicies::Item::UpdateAllowedCombinations::UpdateAllowedCombinationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the usage method.
                    def usage()
                        return MicrosoftGraph::Policies::AuthenticationStrengthPolicies::Item::Usage::UsageRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new AuthenticationStrengthPolicyItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/policies/authenticationStrengthPolicies/{authenticationStrengthPolicy%2Did}{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete a custom authenticationStrengthPolicy object.
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
                    ## Read the properties and relationships of an authenticationStrengthPolicy object.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of authentication_strength_policy
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AuthenticationStrengthPolicy.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the properties of an authenticationStrengthPolicy object. You cannot update the allowed auth method combinations using this request. To do so, use the Update allowed combinations action.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of authentication_strength_policy
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AuthenticationStrengthPolicy.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete a custom authenticationStrengthPolicy object.
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
                    ## Read the properties and relationships of an authenticationStrengthPolicy object.
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
                    ## Update the properties of an authenticationStrengthPolicy object. You cannot update the allowed auth method combinations using this request. To do so, use the Update allowed combinations action.
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
                    # Read the properties and relationships of an authenticationStrengthPolicy object.
                    class AuthenticationStrengthPolicyItemRequestBuilderGetQueryParameters
                        
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
