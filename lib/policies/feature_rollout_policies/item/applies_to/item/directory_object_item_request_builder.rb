require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../policies'
require_relative '../../../feature_rollout_policies'
require_relative '../../item'
require_relative '../applies_to'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Policies
        module FeatureRolloutPolicies
            module Item
                module AppliesTo
                    module Item
                        ## 
                        # Builds and executes requests for operations under \policies\featureRolloutPolicies\{featureRolloutPolicy-id}\appliesTo\{directoryObject-id}
                        class DirectoryObjectItemRequestBuilder
                            
                            ## 
                            # Path parameters for the request
                            @path_parameters
                            ## 
                            # Provides operations to manage the collection of policyRoot entities.
                            def ref()
                                return MicrosoftGraph::Policies::FeatureRolloutPolicies::Item::AppliesTo::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The request adapter to use to execute the requests.
                            @request_adapter
                            ## 
                            # Url template to use to build the URL for the current request builder
                            @url_template
                            ## 
                            ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/policies/featureRolloutPolicies/{featureRolloutPolicy%2Did}/appliesTo/{directoryObject%2Did}"
                                @request_adapter = request_adapter
                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                            end
                        end
                    end
                end
            end
        end
    end
end
