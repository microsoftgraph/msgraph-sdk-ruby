require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/authentication_condition_application'
require_relative '../../../../../../models/authentication_condition_application_collection_response'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../identity'
require_relative '../../../../authentication_events_flows'
require_relative '../../../item'
require_relative '../../conditions'
require_relative '../applications'
require_relative './count/count_request_builder'
require_relative './include_applications'
require_relative './item/authentication_condition_application_app_item_request_builder'

module MicrosoftGraph
    module Identity
        module AuthenticationEventsFlows
            module Item
                module Conditions
                    module Applications
                        module IncludeApplications
                            ## 
                            # Provides operations to manage the includeApplications property of the microsoft.graph.authenticationConditionsApplications entity.
                            class IncludeApplicationsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to count the resources in the collection.
                                def count()
                                    return MicrosoftGraph::Identity::AuthenticationEventsFlows::Item::Conditions::Applications::IncludeApplications::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Provides operations to manage the includeApplications property of the microsoft.graph.authenticationConditionsApplications entity.
                                ## @param authentication_condition_application_app_id The unique identifier of authenticationConditionApplication
                                ## @return a authentication_condition_application_app_item_request_builder
                                ## 
                                def by_authentication_condition_application_app_id(authentication_condition_application_app_id)
                                    raise StandardError, 'authentication_condition_application_app_id cannot be null' if authentication_condition_application_app_id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["authenticationConditionApplication%2DappId"] = authentication_condition_application_app_id
                                    return MicrosoftGraph::Identity::AuthenticationEventsFlows::Item::Conditions::Applications::IncludeApplications::Item::AuthenticationConditionApplicationAppItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new IncludeApplicationsRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identity/authenticationEventsFlows/{authenticationEventsFlow%2Did}/conditions/applications/includeApplications{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                                end
                                ## 
                                ## List the applications linked to an external identities self-service sign up user flow that's represented by an externalUsersSelfServiceSignupEventsFlow object. These are the applications for which the authentication experience that's defined by the user flow is enabled. To find the user flow that's linked to an application, see Example 4: List user flow associated with specific application ID.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of authentication_condition_application_collection_response
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AuthenticationConditionApplicationCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Add or link an application to a user flow, or authenticationEventsFlow. This enables the authentication experience defined by the user flow to be enabled for the application. An application can only be linked to one user flow. The app must have an associated service principal in the tenant.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of authentication_condition_application
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AuthenticationConditionApplication.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## List the applications linked to an external identities self-service sign up user flow that's represented by an externalUsersSelfServiceSignupEventsFlow object. These are the applications for which the authentication experience that's defined by the user flow is enabled. To find the user flow that's linked to an application, see Example 4: List user flow associated with specific application ID.
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
                                ## Add or link an application to a user flow, or authenticationEventsFlow. This enables the authentication experience defined by the user flow to be enabled for the application. An application can only be linked to one user flow. The app must have an associated service principal in the tenant.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_post_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :POST
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a include_applications_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return IncludeApplicationsRequestBuilder.new(raw_url, @request_adapter)
                                end

                                ## 
                                # List the applications linked to an external identities self-service sign up user flow that's represented by an externalUsersSelfServiceSignupEventsFlow object. These are the applications for which the authentication experience that's defined by the user flow is enabled. To find the user flow that's linked to an application, see Example 4: List user flow associated with specific application ID.
                                class IncludeApplicationsRequestBuilderGetQueryParameters
                                    
                                    ## 
                                    # Include count of items
                                    attr_accessor :count
                                    ## 
                                    # Expand related entities
                                    attr_accessor :expand
                                    ## 
                                    # Filter items by property values
                                    attr_accessor :filter
                                    ## 
                                    # Order items by property values
                                    attr_accessor :orderby
                                    ## 
                                    # Search items by search phrases
                                    attr_accessor :search
                                    ## 
                                    # Select properties to be returned
                                    attr_accessor :select
                                    ## 
                                    # Skip the first n items
                                    attr_accessor :skip
                                    ## 
                                    # Show only the first n items
                                    attr_accessor :top
                                    ## 
                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                    ## @param original_name The original query parameter name in the class.
                                    ## @return a string
                                    ## 
                                    def get_query_parameter(original_name)
                                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                                        case original_name
                                            when "count"
                                                return "%24count"
                                            when "expand"
                                                return "%24expand"
                                            when "filter"
                                                return "%24filter"
                                            when "orderby"
                                                return "%24orderby"
                                            when "search"
                                                return "%24search"
                                            when "select"
                                                return "%24select"
                                            when "skip"
                                                return "%24skip"
                                            when "top"
                                                return "%24top"
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
