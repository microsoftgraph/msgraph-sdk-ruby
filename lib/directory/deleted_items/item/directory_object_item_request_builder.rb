require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/directory_object'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../directory'
require_relative '../deleted_items'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './graph_administrative_unit/graph_administrative_unit_request_builder'
require_relative './graph_application/graph_application_request_builder'
require_relative './graph_device/graph_device_request_builder'
require_relative './graph_group/graph_group_request_builder'
require_relative './graph_service_principal/graph_service_principal_request_builder'
require_relative './graph_user/graph_user_request_builder'
require_relative './item'
require_relative './restore/restore_request_builder'

module MicrosoftGraph
    module Directory
        module DeletedItems
            module Item
                ## 
                # Provides operations to manage the deletedItems property of the microsoft.graph.directory entity.
                class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to call the checkMemberGroups method.
                    def check_member_groups()
                        return MicrosoftGraph::Directory::DeletedItems::Item::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the checkMemberObjects method.
                    def check_member_objects()
                        return MicrosoftGraph::Directory::DeletedItems::Item::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getMemberGroups method.
                    def get_member_groups()
                        return MicrosoftGraph::Directory::DeletedItems::Item::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getMemberObjects method.
                    def get_member_objects()
                        return MicrosoftGraph::Directory::DeletedItems::Item::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to administrativeUnit.
                    def graph_administrative_unit()
                        return MicrosoftGraph::Directory::DeletedItems::Item::GraphAdministrativeUnit::GraphAdministrativeUnitRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to application.
                    def graph_application()
                        return MicrosoftGraph::Directory::DeletedItems::Item::GraphApplication::GraphApplicationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to device.
                    def graph_device()
                        return MicrosoftGraph::Directory::DeletedItems::Item::GraphDevice::GraphDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to group.
                    def graph_group()
                        return MicrosoftGraph::Directory::DeletedItems::Item::GraphGroup::GraphGroupRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to servicePrincipal.
                    def graph_service_principal()
                        return MicrosoftGraph::Directory::DeletedItems::Item::GraphServicePrincipal::GraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to user.
                    def graph_user()
                        return MicrosoftGraph::Directory::DeletedItems::Item::GraphUser::GraphUserRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the restore method.
                    def restore()
                        return MicrosoftGraph::Directory::DeletedItems::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/directory/deletedItems/{directoryObject%2Did}{?%24select,%24expand}")
                    end
                    ## 
                    ## Permanently delete a recently deleted application, group, servicePrincipal, or user object from deleted items. After an item is permanently deleted, it cannot be restored. Administrative units cannot be permanently deleted by using the deletedItems API. Soft-deleted administrative units will be permanently deleted 30 days after initial deletion unless they are restored. This API is available in the following national cloud deployments.
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
                    ## Retrieve the properties of a recently deleted application, group, servicePrincipal, administrative unit, or user object from deleted items. This API is available in the following national cloud deployments.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of directory_object
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Permanently delete a recently deleted application, group, servicePrincipal, or user object from deleted items. After an item is permanently deleted, it cannot be restored. Administrative units cannot be permanently deleted by using the deletedItems API. Soft-deleted administrative units will be permanently deleted 30 days after initial deletion unless they are restored. This API is available in the following national cloud deployments.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        return request_info
                    end
                    ## 
                    ## Retrieve the properties of a recently deleted application, group, servicePrincipal, administrative unit, or user object from deleted items. This API is available in the following national cloud deployments.
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
                    ## @return a directory_object_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return DirectoryObjectItemRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Retrieve the properties of a recently deleted application, group, servicePrincipal, administrative unit, or user object from deleted items. This API is available in the following national cloud deployments.
                    class DirectoryObjectItemRequestBuilderGetQueryParameters
                        
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
