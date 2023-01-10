require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/device'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../me'
require_relative '../../../authentication'
require_relative '../../windows_hello_for_business_methods'
require_relative '../item'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './device'
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './member_of/item/directory_object_item_request_builder'
require_relative './member_of/member_of_request_builder'
require_relative './registered_owners/item/directory_object_item_request_builder'
require_relative './registered_owners/registered_owners_request_builder'
require_relative './registered_users/item/directory_object_item_request_builder'
require_relative './registered_users/registered_users_request_builder'
require_relative './restore/restore_request_builder'
require_relative './transitive_member_of/item/directory_object_item_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'

module MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device
    ## 
    # Provides operations to manage the device property of the microsoft.graph.windowsHelloForBusinessAuthenticationMethod entity.
    class DeviceRequestBuilder
        
        ## 
        # Provides operations to call the checkMemberGroups method.
        def check_member_groups()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the checkMemberObjects method.
        def check_member_objects()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the extensions property of the microsoft.graph.device entity.
        def extensions()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberGroups method.
        def get_member_groups()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberObjects method.
        def get_member_objects()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the memberOf property of the microsoft.graph.device entity.
        def member_of()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::MemberOf::MemberOfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the registeredOwners property of the microsoft.graph.device entity.
        def registered_owners()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredOwners::RegisteredOwnersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the registeredUsers property of the microsoft.graph.device entity.
        def registered_users()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredUsers::RegisteredUsersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to call the restore method.
        def restore()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.device entity.
        def transitive_member_of()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::TransitiveMemberOf::TransitiveMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new DeviceRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/me/authentication/windowsHelloForBusinessMethods/{windowsHelloForBusinessAuthenticationMethod%2Did}/device{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property device for me
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
        ## Provides operations to manage the extensions property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a extension_item_request_builder
        ## 
        def extensions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["extension%2Did"] = id
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## The registered device on which this Windows Hello for Business key resides. Supports $expand. When you get a user's Windows Hello for Business registration information, this property is returned only on a single GET and when you specify ?$expand. For example, GET /users/admin@contoso.com/authentication/windowsHelloForBusinessMethods/_jpuR-TGZtk6aQCLF3BQjA2?$expand=device.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of device
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Device.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the memberOf property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def member_of_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::MemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the navigation property device in me
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of device
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Device.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Gets an item from the MicrosoftGraph.me.authentication.windowsHelloForBusinessMethods.item.device.registeredOwners.item collection
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def registered_owners_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredOwners::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the registeredUsers property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def registered_users_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredUsers::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property device for me
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
        ## The registered device on which this Windows Hello for Business key resides. Supports $expand. When you get a user's Windows Hello for Business registration information, this property is returned only on a single GET and when you specify ?$expand. For example, GET /users/admin@contoso.com/authentication/windowsHelloForBusinessMethods/_jpuR-TGZtk6aQCLF3BQjA2?$expand=device.
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
        ## Update the navigation property device in me
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
        ## Provides operations to manage the transitiveMemberOf property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def transitive_member_of_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::TransitiveMemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DeviceRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # The registered device on which this Windows Hello for Business key resides. Supports $expand. When you get a user's Windows Hello for Business registration information, this property is returned only on a single GET and when you specify ?$expand. For example, GET /users/admin@contoso.com/authentication/windowsHelloForBusinessMethods/_jpuR-TGZtk6aQCLF3BQjA2?$expand=device.
        class DeviceRequestBuilderGetQueryParameters
            
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
        class DeviceRequestBuilderGetRequestConfiguration
            
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
        class DeviceRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
