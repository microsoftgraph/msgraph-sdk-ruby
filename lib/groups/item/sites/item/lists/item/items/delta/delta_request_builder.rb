require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../groups'
require_relative '../../../../../../item'
require_relative '../../../../../sites'
require_relative '../../../../item'
require_relative '../../../lists'
require_relative '../../item'
require_relative '../items'
require_relative './delta'

module MicrosoftGraph
    module Groups
        module Item
            module Sites
                module Item
                    module Lists
                        module Item
                            module Items
                                module Delta
                                    ## 
                                    # Provides operations to call the delta method.
                                    class DeltaRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        ## Instantiates a new DeltaRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/lists/{list%2Did}/items/delta(){?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                                        end
                                        ## 
                                        ## Get newly created, updated, or deleted list items without having to perform a full read of the entire items collection. Your app begins by calling delta without any parameters.The service starts enumerating the hierarchy of the list, returning pages of items, and either an @odata.nextLink or an @odata.deltaLink.Your app should continue calling with the @odata.nextLink until you see an @odata.deltaLink returned. After you received all the changes, you can apply them to your local state.To check for changes in the future, call delta again with the @odata.deltaLink from the previous response. The delta feed shows the latest state for each item, not each change. If an item was renamed twice, it only shows up once, with its latest name.The same item might appear more than once in a delta feed, for various reasons. You should use the last occurrence you see. Items with this property should be removed from your local state.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of deltaget_response
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::Items::Delta::DeltagetResponse.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Get newly created, updated, or deleted list items without having to perform a full read of the entire items collection. Your app begins by calling delta without any parameters.The service starts enumerating the hierarchy of the list, returning pages of items, and either an @odata.nextLink or an @odata.deltaLink.Your app should continue calling with the @odata.nextLink until you see an @odata.deltaLink returned. After you received all the changes, you can apply them to your local state.To check for changes in the future, call delta again with the @odata.deltaLink from the previous response. The delta feed shows the latest state for each item, not each change. If an item was renamed twice, it only shows up once, with its latest name.The same item might appear more than once in a delta feed, for various reasons. You should use the last occurrence you see. Items with this property should be removed from your local state.
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
                                        ## @return a delta_request_builder
                                        ## 
                                        def with_url(raw_url)
                                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                            return DeltaRequestBuilder.new(raw_url, @request_adapter)
                                        end

                                        ## 
                                        # Get newly created, updated, or deleted list items without having to perform a full read of the entire items collection. Your app begins by calling delta without any parameters.The service starts enumerating the hierarchy of the list, returning pages of items, and either an @odata.nextLink or an @odata.deltaLink.Your app should continue calling with the @odata.nextLink until you see an @odata.deltaLink returned. After you received all the changes, you can apply them to your local state.To check for changes in the future, call delta again with the @odata.deltaLink from the previous response. The delta feed shows the latest state for each item, not each change. If an item was renamed twice, it only shows up once, with its latest name.The same item might appear more than once in a delta feed, for various reasons. You should use the last occurrence you see. Items with this property should be removed from your local state.
                                        class DeltaRequestBuilderGetQueryParameters
                                            
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
    end
end
