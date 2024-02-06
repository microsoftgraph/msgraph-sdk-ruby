require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../../models/user_flow_api_connector_configuration'
require_relative '../../../identity'
require_relative '../../b2x_user_flows'
require_relative '../item'
require_relative './api_connector_configuration'
require_relative './post_attribute_collection/post_attribute_collection_request_builder'
require_relative './post_federation_signup/post_federation_signup_request_builder'

module MicrosoftGraph
    module Identity
        module B2xUserFlows
            module Item
                module ApiConnectorConfiguration
                    ## 
                    # Builds and executes requests for operations under \identity\b2xUserFlows\{b2xIdentityUserFlow-id}\apiConnectorConfiguration
                    class ApiConnectorConfigurationRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the postAttributeCollection property of the microsoft.graph.userFlowApiConnectorConfiguration entity.
                        def post_attribute_collection()
                            return MicrosoftGraph::Identity::B2xUserFlows::Item::ApiConnectorConfiguration::PostAttributeCollection::PostAttributeCollectionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the postFederationSignup property of the microsoft.graph.userFlowApiConnectorConfiguration entity.
                        def post_federation_signup()
                            return MicrosoftGraph::Identity::B2xUserFlows::Item::ApiConnectorConfiguration::PostFederationSignup::PostFederationSignupRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ApiConnectorConfigurationRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/identity/b2xUserFlows/{b2xIdentityUserFlow%2Did}/apiConnectorConfiguration{?%24expand,%24select}")
                        end
                        ## 
                        ## Configuration for enabling an API connector for use as part of the self-service sign-up user flow. You can only obtain the value of this object using Get userFlowApiConnectorConfiguration.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of user_flow_api_connector_configuration
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::UserFlowApiConnectorConfiguration.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Configuration for enabling an API connector for use as part of the self-service sign-up user flow. You can only obtain the value of this object using Get userFlowApiConnectorConfiguration.
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
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a api_connector_configuration_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ApiConnectorConfigurationRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Configuration for enabling an API connector for use as part of the self-service sign-up user flow. You can only obtain the value of this object using Get userFlowApiConnectorConfiguration.
                        class ApiConnectorConfigurationRequestBuilderGetQueryParameters
                            
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
