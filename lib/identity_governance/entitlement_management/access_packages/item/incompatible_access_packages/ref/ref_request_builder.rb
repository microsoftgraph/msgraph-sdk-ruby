require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../models/reference_create'
require_relative '../../../../../../models/string_collection_response'
require_relative '../../../../../identity_governance'
require_relative '../../../../entitlement_management'
require_relative '../../../access_packages'
require_relative '../../item'
require_relative '../incompatible_access_packages'
require_relative './ref'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackages
                module Item
                    module IncompatibleAccessPackages
                        module Ref
                            ## 
                            # Provides operations to manage the collection of identityGovernance entities.
                            class RefRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new RefRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackages/{accessPackage%2Did}/incompatibleAccessPackages/$ref{?%24top,%24skip,%24search,%24filter,%24count,%24orderby}")
                                end
                                ## 
                                ## Retrieve a list of the accessPackage objects that have been marked as incompatible on an accessPackage.  
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of string_collection_response
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::StringCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Create new navigation property ref to incompatibleAccessPackages for identityGovernance
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of void
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                end
                                ## 
                                ## Retrieve a list of the accessPackage objects that have been marked as incompatible on an accessPackage.  
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
                                ## Create new navigation property ref to incompatibleAccessPackages for identityGovernance
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
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    return request_info
                                end

                                ## 
                                # Retrieve a list of the accessPackage objects that have been marked as incompatible on an accessPackage.  
                                class RefRequestBuilderGetQueryParameters
                                    
                                    ## 
                                    # Include count of items
                                    attr_accessor :count
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
                                            when "filter"
                                                return "%24filter"
                                            when "orderby"
                                                return "%24orderby"
                                            when "search"
                                                return "%24search"
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
