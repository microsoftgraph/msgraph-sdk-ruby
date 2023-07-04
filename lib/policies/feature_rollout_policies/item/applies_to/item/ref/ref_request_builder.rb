require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../policies'
require_relative '../../../../feature_rollout_policies'
require_relative '../../../item'
require_relative '../../applies_to'
require_relative '../item'
require_relative './ref'

module MicrosoftGraph
    module Policies
        module FeatureRolloutPolicies
            module Item
                module AppliesTo
                    module Item
                        module Ref
                            ## 
                            # Provides operations to manage the collection of policyRoot entities.
                            class RefRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new RefRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/policies/featureRolloutPolicies/{featureRolloutPolicy%2Did}/appliesTo/{directoryObject%2Did}/$ref{?%40id*}")
                                end
                                ## 
                                ## Remove an appliesTo on a featureRolloutPolicy object to remove the directoryObject from feature rollout.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                                ## Remove an appliesTo on a featureRolloutPolicy object to remove the directoryObject from feature rollout.
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
                                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    return request_info
                                end

                                ## 
                                # Remove an appliesTo on a featureRolloutPolicy object to remove the directoryObject from feature rollout.
                                class RefRequestBuilderDeleteQueryParameters
                                    
                                    ## 
                                    # Delete Uri
                                    attr_accessor :id
                                    ## 
                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                    ## @param original_name The original query parameter name in the class.
                                    ## @return a string
                                    ## 
                                    def get_query_parameter(original_name)
                                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                                        case original_name
                                            when "id"
                                                return "%40id"
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
