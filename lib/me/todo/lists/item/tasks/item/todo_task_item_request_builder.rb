require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../models/todo_task'
require_relative '../../../../../me'
require_relative '../../../../todo'
require_relative '../../../lists'
require_relative '../../item'
require_relative '../tasks'
require_relative './attachments/attachments_request_builder'
require_relative './attachments/item/attachment_base_item_request_builder'
require_relative './attachment_sessions/attachment_sessions_request_builder'
require_relative './attachment_sessions/item/attachment_session_item_request_builder'
require_relative './checklist_items/checklist_items_request_builder'
require_relative './checklist_items/item/checklist_item_item_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './item'
require_relative './linked_resources/item/linked_resource_item_request_builder'
require_relative './linked_resources/linked_resources_request_builder'

module MicrosoftGraph
    module Me
        module Todo
            module Lists
                module Item
                    module Tasks
                        module Item
                            ## 
                            # Provides operations to manage the tasks property of the microsoft.graph.todoTaskList entity.
                            class TodoTaskItemRequestBuilder
                                
                                ## 
                                # Provides operations to manage the attachments property of the microsoft.graph.todoTask entity.
                                def attachments()
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::Attachments::AttachmentsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the attachmentSessions property of the microsoft.graph.todoTask entity.
                                def attachment_sessions()
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::AttachmentSessions::AttachmentSessionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the checklistItems property of the microsoft.graph.todoTask entity.
                                def checklist_items()
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::ChecklistItems::ChecklistItemsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the extensions property of the microsoft.graph.todoTask entity.
                                def extensions()
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the linkedResources property of the microsoft.graph.todoTask entity.
                                def linked_resources()
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::LinkedResources::LinkedResourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Path parameters for the request
                                @path_parameters
                                ## 
                                # The request adapter to use to execute the requests.
                                @request_adapter
                                ## 
                                # Url template to use to build the URL for the current request builder
                                @url_template
                                ## 
                                ## Provides operations to manage the attachments property of the microsoft.graph.todoTask entity.
                                ## @param id Unique identifier of the item
                                ## @return a attachment_base_item_request_builder
                                ## 
                                def attachments_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["attachmentBase%2Did"] = id
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::Attachments::Item::AttachmentBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Provides operations to manage the attachmentSessions property of the microsoft.graph.todoTask entity.
                                ## @param id Unique identifier of the item
                                ## @return a attachment_session_item_request_builder
                                ## 
                                def attachment_sessions_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["attachmentSession%2Did"] = id
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::AttachmentSessions::Item::AttachmentSessionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Provides operations to manage the checklistItems property of the microsoft.graph.todoTask entity.
                                ## @param id Unique identifier of the item
                                ## @return a checklist_item_item_request_builder
                                ## 
                                def checklist_items_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["checklistItem%2Did"] = id
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::ChecklistItems::Item::ChecklistItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new TodoTaskItemRequestBuilder and sets the default values.
                                ## @param pathParameters Path parameters for the request
                                ## @param requestAdapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                    @url_template = "{+baseurl}/me/todo/lists/{todoTaskList%2Did}/tasks/{todoTask%2Did}{?%24select,%24expand}"
                                    @request_adapter = request_adapter
                                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                                end
                                ## 
                                ## Delete navigation property tasks for me
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                ## Provides operations to manage the extensions property of the microsoft.graph.todoTask entity.
                                ## @param id Unique identifier of the item
                                ## @return a extension_item_request_builder
                                ## 
                                def extensions_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["extension%2Did"] = id
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## The tasks in this task list. Read-only. Nullable.
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of todo_task
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TodoTask.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Provides operations to manage the linkedResources property of the microsoft.graph.todoTask entity.
                                ## @param id Unique identifier of the item
                                ## @return a linked_resource_item_request_builder
                                ## 
                                def linked_resources_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["linkedResource%2Did"] = id
                                    return MicrosoftGraph::Me::Todo::Lists::Item::Tasks::Item::LinkedResources::Item::LinkedResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Update the navigation property tasks in me
                                ## @param body The request body
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of todo_task
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TodoTask.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property tasks for me
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                ## The tasks in this task list. Read-only. Nullable.
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                ## Update the navigation property tasks in me
                                ## @param body The request body
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                    request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                    return request_info
                                end

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class TodoTaskItemRequestBuilderDeleteRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                end

                                ## 
                                # The tasks in this task list. Read-only. Nullable.
                                class TodoTaskItemRequestBuilderGetQueryParameters
                                    
                                    ## 
                                    # Expand related entities
                                    attr_accessor :expand
                                    ## 
                                    # Select properties to be returned
                                    attr_accessor :select
                                    ## 
                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                    ## @param originalName The original query parameter name in the class.
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

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class TodoTaskItemRequestBuilderGetRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                    ## 
                                    # Request query parameters
                                    attr_accessor :query_parameters
                                end

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class TodoTaskItemRequestBuilderPatchRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
