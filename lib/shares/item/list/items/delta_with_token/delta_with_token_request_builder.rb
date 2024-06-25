require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../shares'
require_relative '../../../item'
require_relative '../../list'
require_relative '../items'
require_relative './delta_with_token'

module MicrosoftGraph
    module Shares
        module Item
            module List
                module Items
                    module DeltaWithToken
                        ## 
                        # Provides operations to call the delta method.
                        class DeltaWithTokenRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new DeltaWithTokenRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @param token Usage: token='{token}'
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter, token=nil)
                                super(path_parameters, request_adapter, "{+baseurl}/shares/{sharedDriveItem%2Did}/list/items/delta(token='{token}'){?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                            end
                            ## 
                            ## Invoke function delta
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of delta_with_token_get_response
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Shares::Item::List::Items::DeltaWithToken::DeltaWithTokenGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Invoke function delta
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
                            ## @return a delta_with_token_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return DeltaWithTokenRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # Invoke function delta
                            class DeltaWithTokenRequestBuilderGetQueryParameters
                                
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
