require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/managed_device'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../me'
require_relative '../managed_devices'
require_relative './bypass_activation_lock/bypass_activation_lock_request_builder'
require_relative './clean_windows_device/clean_windows_device_request_builder'
require_relative './delete_user_from_shared_apple_device/delete_user_from_shared_apple_device_request_builder'
require_relative './device_category/device_category_request_builder'
require_relative './device_compliance_policy_states/device_compliance_policy_states_request_builder'
require_relative './device_compliance_policy_states/item/device_compliance_policy_state_item_request_builder'
require_relative './device_configuration_states/device_configuration_states_request_builder'
require_relative './device_configuration_states/item/device_configuration_state_item_request_builder'
require_relative './disable_lost_mode/disable_lost_mode_request_builder'
require_relative './item'
require_relative './locate_device/locate_device_request_builder'
require_relative './logout_shared_apple_device_active_user/logout_shared_apple_device_active_user_request_builder'
require_relative './reboot_now/reboot_now_request_builder'
require_relative './recover_passcode/recover_passcode_request_builder'
require_relative './remote_lock/remote_lock_request_builder'
require_relative './request_remote_assistance/request_remote_assistance_request_builder'
require_relative './reset_passcode/reset_passcode_request_builder'
require_relative './retire/retire_request_builder'
require_relative './shut_down/shut_down_request_builder'
require_relative './sync_device/sync_device_request_builder'
require_relative './update_windows_device_account/update_windows_device_account_request_builder'
require_relative './users/users_request_builder'
require_relative './windows_defender_scan/windows_defender_scan_request_builder'
require_relative './windows_defender_update_signatures/windows_defender_update_signatures_request_builder'
require_relative './wipe/wipe_request_builder'

module MicrosoftGraph
    module Me
        module ManagedDevices
            module Item
                ## 
                # Provides operations to manage the managedDevices property of the microsoft.graph.user entity.
                class ManagedDeviceItemRequestBuilder
                    
                    ## 
                    # Provides operations to call the bypassActivationLock method.
                    def bypass_activation_lock()
                        return MicrosoftGraph::Me::ManagedDevices::Item::BypassActivationLock::BypassActivationLockRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the cleanWindowsDevice method.
                    def clean_windows_device()
                        return MicrosoftGraph::Me::ManagedDevices::Item::CleanWindowsDevice::CleanWindowsDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the deleteUserFromSharedAppleDevice method.
                    def delete_user_from_shared_apple_device()
                        return MicrosoftGraph::Me::ManagedDevices::Item::DeleteUserFromSharedAppleDevice::DeleteUserFromSharedAppleDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceCategory property of the microsoft.graph.managedDevice entity.
                    def device_category()
                        return MicrosoftGraph::Me::ManagedDevices::Item::DeviceCategory::DeviceCategoryRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceCompliancePolicyStates property of the microsoft.graph.managedDevice entity.
                    def device_compliance_policy_states()
                        return MicrosoftGraph::Me::ManagedDevices::Item::DeviceCompliancePolicyStates::DeviceCompliancePolicyStatesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceConfigurationStates property of the microsoft.graph.managedDevice entity.
                    def device_configuration_states()
                        return MicrosoftGraph::Me::ManagedDevices::Item::DeviceConfigurationStates::DeviceConfigurationStatesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the disableLostMode method.
                    def disable_lost_mode()
                        return MicrosoftGraph::Me::ManagedDevices::Item::DisableLostMode::DisableLostModeRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the locateDevice method.
                    def locate_device()
                        return MicrosoftGraph::Me::ManagedDevices::Item::LocateDevice::LocateDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the logoutSharedAppleDeviceActiveUser method.
                    def logout_shared_apple_device_active_user()
                        return MicrosoftGraph::Me::ManagedDevices::Item::LogoutSharedAppleDeviceActiveUser::LogoutSharedAppleDeviceActiveUserRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # Provides operations to call the rebootNow method.
                    def reboot_now()
                        return MicrosoftGraph::Me::ManagedDevices::Item::RebootNow::RebootNowRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the recoverPasscode method.
                    def recover_passcode()
                        return MicrosoftGraph::Me::ManagedDevices::Item::RecoverPasscode::RecoverPasscodeRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the remoteLock method.
                    def remote_lock()
                        return MicrosoftGraph::Me::ManagedDevices::Item::RemoteLock::RemoteLockRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to call the requestRemoteAssistance method.
                    def request_remote_assistance()
                        return MicrosoftGraph::Me::ManagedDevices::Item::RequestRemoteAssistance::RequestRemoteAssistanceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the resetPasscode method.
                    def reset_passcode()
                        return MicrosoftGraph::Me::ManagedDevices::Item::ResetPasscode::ResetPasscodeRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the retire method.
                    def retire()
                        return MicrosoftGraph::Me::ManagedDevices::Item::Retire::RetireRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the shutDown method.
                    def shut_down()
                        return MicrosoftGraph::Me::ManagedDevices::Item::ShutDown::ShutDownRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the syncDevice method.
                    def sync_device()
                        return MicrosoftGraph::Me::ManagedDevices::Item::SyncDevice::SyncDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the updateWindowsDeviceAccount method.
                    def update_windows_device_account()
                        return MicrosoftGraph::Me::ManagedDevices::Item::UpdateWindowsDeviceAccount::UpdateWindowsDeviceAccountRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    # Provides operations to manage the users property of the microsoft.graph.managedDevice entity.
                    def users()
                        return MicrosoftGraph::Me::ManagedDevices::Item::Users::UsersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the windowsDefenderScan method.
                    def windows_defender_scan()
                        return MicrosoftGraph::Me::ManagedDevices::Item::WindowsDefenderScan::WindowsDefenderScanRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the windowsDefenderUpdateSignatures method.
                    def windows_defender_update_signatures()
                        return MicrosoftGraph::Me::ManagedDevices::Item::WindowsDefenderUpdateSignatures::WindowsDefenderUpdateSignaturesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the wipe method.
                    def wipe()
                        return MicrosoftGraph::Me::ManagedDevices::Item::Wipe::WipeRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new ManagedDeviceItemRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/me/managedDevices/{managedDevice%2Did}{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Delete navigation property managedDevices for me
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
                    ## Provides operations to manage the deviceCompliancePolicyStates property of the microsoft.graph.managedDevice entity.
                    ## @param id Unique identifier of the item
                    ## @return a device_compliance_policy_state_item_request_builder
                    ## 
                    def device_compliance_policy_states_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["deviceCompliancePolicyState%2Did"] = id
                        return MicrosoftGraph::Me::ManagedDevices::Item::DeviceCompliancePolicyStates::Item::DeviceCompliancePolicyStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the deviceConfigurationStates property of the microsoft.graph.managedDevice entity.
                    ## @param id Unique identifier of the item
                    ## @return a device_configuration_state_item_request_builder
                    ## 
                    def device_configuration_states_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["deviceConfigurationState%2Did"] = id
                        return MicrosoftGraph::Me::ManagedDevices::Item::DeviceConfigurationStates::Item::DeviceConfigurationStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## The managed devices associated with the user.
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of managed_device
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ManagedDevice.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property managedDevices in me
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of managed_device
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ManagedDevice.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property managedDevices for me
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
                    ## The managed devices associated with the user.
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
                    ## Update the navigation property managedDevices in me
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
                    class ManagedDeviceItemRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end

                    ## 
                    # The managed devices associated with the user.
                    class ManagedDeviceItemRequestBuilderGetQueryParameters
                        
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
                    class ManagedDeviceItemRequestBuilderGetRequestConfiguration
                        
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
                    class ManagedDeviceItemRequestBuilderPatchRequestConfiguration
                        
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
