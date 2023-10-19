require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/linked_resource'
require_relative '../../../../../../../../models/linked_resource_collection_response'
require_relative '../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../users'
require_relative '../../../../../../item'
require_relative '../../../../../todo'
require_relative '../../../../lists'
require_relative '../../../item'
require_relative '../../tasks'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/linked_resource_item_request_builder'
require_relative './linked_resources'

module MicrosoftGraph
    module Users
        module Item
            module Todo
                module Lists
                    module Item
                        module Tasks
                            module Item
                                module LinkedResources
                                    ## 
                                    # Provides operations to manage the linkedResources property of the microsoft.graph.todoTask entity.
                                    class LinkedResourcesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to count the resources in the collection.
                                        def count()
                                            return MicrosoftGraph::Users::Item::Todo::Lists::Item::Tasks::Item::LinkedResources::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Provides operations to manage the linkedResources property of the microsoft.graph.todoTask entity.
                                        ## @param linked_resource_id The unique identifier of linkedResource
                                        ## @return a linked_resource_item_request_builder
                                        ## 
                                        def by_linked_resource_id(linked_resource_id)
                                            raise StandardError, 'linked_resource_id cannot be null' if linked_resource_id.nil?
                                            url_tpl_params = @path_parameters.clone
                                            url_tpl_params["linkedResource%2Did"] = linked_resource_id
                                            return MicrosoftGraph::Users::Item::Todo::Lists::Item::Tasks::Item::LinkedResources::Item::LinkedResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new LinkedResourcesRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/todo/lists/{todoTaskList%2Did}/tasks/{todoTask%2Did}/linkedResources{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                        end
                                        ## 
                                        ## Get information of one or more items in a partner application, based on which a specified task was created. The information is represented in a linkedResource object for each item. It includes an external ID for the item in the partner application, and if applicable, a deep link to that item in the application. This API is available in the following national cloud deployments.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of linked_resource_collection_response
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::LinkedResourceCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Create a linkedResource object to associate a specified task with an item in a partner application. For example, you can associate a task with an email item in Outlook that spurred the task, and you can create a linkedResource object to track its association. You can also create a linkedResource object while creating a task. This API is available in the following national cloud deployments.
                                        ## @param body The request body
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of linked_resource
                                        ## 
                                        def post(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = self.to_post_request_information(
                                                body, request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::LinkedResource.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Get information of one or more items in a partner application, based on which a specified task was created. The information is represented in a linkedResource object for each item. It includes an external ID for the item in the partner application, and if applicable, a deep link to that item in the application. This API is available in the following national cloud deployments.
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
                                        ## Create a linkedResource object to associate a specified task with an item in a partner application. For example, you can associate a task with an email item in Outlook that spurred the task, and you can create a linkedResource object to track its association. You can also create a linkedResource object while creating a task. This API is available in the following national cloud deployments.
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
                                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                            request_info.url_template = @url_template
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :POST
                                            request_info.headers.try_add('Accept', 'application/json')
                                            return request_info
                                        end
                                        ## 
                                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                        ## @param raw_url The raw URL to use for the request builder.
                                        ## @return a linked_resources_request_builder
                                        ## 
                                        def with_url(raw_url)
                                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                            return LinkedResourcesRequestBuilder.new(raw_url, @request_adapter)
                                        end

                                        ## 
                                        # Get information of one or more items in a partner application, based on which a specified task was created. The information is represented in a linkedResource object for each item. It includes an external ID for the item in the partner application, and if applicable, a deep link to that item in the application. This API is available in the following national cloud deployments.
                                        class LinkedResourcesRequestBuilderGetQueryParameters
                                            
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
