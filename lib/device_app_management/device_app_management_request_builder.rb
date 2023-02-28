require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/device_app_management'
require_relative '../models/o_data_errors/o_data_error'
require_relative './android_managed_app_protections/android_managed_app_protections_request_builder'
require_relative './android_managed_app_protections/item/android_managed_app_protection_item_request_builder'
require_relative './default_managed_app_protections/default_managed_app_protections_request_builder'
require_relative './default_managed_app_protections/item/default_managed_app_protection_item_request_builder'
require_relative './device_app_management'
require_relative './ios_managed_app_protections/ios_managed_app_protections_request_builder'
require_relative './ios_managed_app_protections/item/ios_managed_app_protection_item_request_builder'
require_relative './managed_app_policies/item/managed_app_policy_item_request_builder'
require_relative './managed_app_policies/managed_app_policies_request_builder'
require_relative './managed_app_registrations/item/managed_app_registration_item_request_builder'
require_relative './managed_app_registrations/managed_app_registrations_request_builder'
require_relative './managed_app_statuses/item/managed_app_status_item_request_builder'
require_relative './managed_app_statuses/managed_app_statuses_request_builder'
require_relative './managed_e_books/item/managed_e_book_item_request_builder'
require_relative './managed_e_books/managed_e_books_request_builder'
require_relative './mdm_windows_information_protection_policies/item/mdm_windows_information_protection_policy_item_request_builder'
require_relative './mdm_windows_information_protection_policies/mdm_windows_information_protection_policies_request_builder'
require_relative './mobile_app_categories/item/mobile_app_category_item_request_builder'
require_relative './mobile_app_categories/mobile_app_categories_request_builder'
require_relative './mobile_app_configurations/item/managed_device_mobile_app_configuration_item_request_builder'
require_relative './mobile_app_configurations/mobile_app_configurations_request_builder'
require_relative './mobile_apps/item/mobile_app_item_request_builder'
require_relative './mobile_apps/mobile_apps_request_builder'
require_relative './sync_microsoft_store_for_business_apps/sync_microsoft_store_for_business_apps_request_builder'
require_relative './targeted_managed_app_configurations/item/targeted_managed_app_configuration_item_request_builder'
require_relative './targeted_managed_app_configurations/targeted_managed_app_configurations_request_builder'
require_relative './vpp_tokens/item/vpp_token_item_request_builder'
require_relative './vpp_tokens/vpp_tokens_request_builder'
require_relative './windows_information_protection_policies/item/windows_information_protection_policy_item_request_builder'
require_relative './windows_information_protection_policies/windows_information_protection_policies_request_builder'

module MicrosoftGraph
    module DeviceAppManagement
        ## 
        # Provides operations to manage the deviceAppManagement singleton.
        class DeviceAppManagementRequestBuilder
            
            ## 
            # Provides operations to manage the androidManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            def android_managed_app_protections()
                return MicrosoftGraph::DeviceAppManagement::AndroidManagedAppProtections::AndroidManagedAppProtectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the defaultManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            def default_managed_app_protections()
                return MicrosoftGraph::DeviceAppManagement::DefaultManagedAppProtections::DefaultManagedAppProtectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the iosManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            def ios_managed_app_protections()
                return MicrosoftGraph::DeviceAppManagement::IosManagedAppProtections::IosManagedAppProtectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedAppPolicies property of the microsoft.graph.deviceAppManagement entity.
            def managed_app_policies()
                return MicrosoftGraph::DeviceAppManagement::ManagedAppPolicies::ManagedAppPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedAppRegistrations property of the microsoft.graph.deviceAppManagement entity.
            def managed_app_registrations()
                return MicrosoftGraph::DeviceAppManagement::ManagedAppRegistrations::ManagedAppRegistrationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedAppStatuses property of the microsoft.graph.deviceAppManagement entity.
            def managed_app_statuses()
                return MicrosoftGraph::DeviceAppManagement::ManagedAppStatuses::ManagedAppStatusesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedEBooks property of the microsoft.graph.deviceAppManagement entity.
            def managed_e_books()
                return MicrosoftGraph::DeviceAppManagement::ManagedEBooks::ManagedEBooksRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mdmWindowsInformationProtectionPolicies property of the microsoft.graph.deviceAppManagement entity.
            def mdm_windows_information_protection_policies()
                return MicrosoftGraph::DeviceAppManagement::MdmWindowsInformationProtectionPolicies::MdmWindowsInformationProtectionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileAppCategories property of the microsoft.graph.deviceAppManagement entity.
            def mobile_app_categories()
                return MicrosoftGraph::DeviceAppManagement::MobileAppCategories::MobileAppCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileAppConfigurations property of the microsoft.graph.deviceAppManagement entity.
            def mobile_app_configurations()
                return MicrosoftGraph::DeviceAppManagement::MobileAppConfigurations::MobileAppConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileApps property of the microsoft.graph.deviceAppManagement entity.
            def mobile_apps()
                return MicrosoftGraph::DeviceAppManagement::MobileApps::MobileAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Provides operations to call the syncMicrosoftStoreForBusinessApps method.
            def sync_microsoft_store_for_business_apps()
                return MicrosoftGraph::DeviceAppManagement::SyncMicrosoftStoreForBusinessApps::SyncMicrosoftStoreForBusinessAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the targetedManagedAppConfigurations property of the microsoft.graph.deviceAppManagement entity.
            def targeted_managed_app_configurations()
                return MicrosoftGraph::DeviceAppManagement::TargetedManagedAppConfigurations::TargetedManagedAppConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            # Provides operations to manage the vppTokens property of the microsoft.graph.deviceAppManagement entity.
            def vpp_tokens()
                return MicrosoftGraph::DeviceAppManagement::VppTokens::VppTokensRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionPolicies property of the microsoft.graph.deviceAppManagement entity.
            def windows_information_protection_policies()
                return MicrosoftGraph::DeviceAppManagement::WindowsInformationProtectionPolicies::WindowsInformationProtectionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Provides operations to manage the androidManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a android_managed_app_protection_item_request_builder
            ## 
            def android_managed_app_protections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["androidManagedAppProtection%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::AndroidManagedAppProtections::Item::AndroidManagedAppProtectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new DeviceAppManagementRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/deviceAppManagement{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Provides operations to manage the defaultManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a default_managed_app_protection_item_request_builder
            ## 
            def default_managed_app_protections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["defaultManagedAppProtection%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::DefaultManagedAppProtections::Item::DefaultManagedAppProtectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get deviceAppManagement
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_app_management
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceAppManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the iosManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a ios_managed_app_protection_item_request_builder
            ## 
            def ios_managed_app_protections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["iosManagedAppProtection%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::IosManagedAppProtections::Item::IosManagedAppProtectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedAppPolicies property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_app_policy_item_request_builder
            ## 
            def managed_app_policies_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedAppPolicy%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::ManagedAppPolicies::Item::ManagedAppPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedAppRegistrations property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_app_registration_item_request_builder
            ## 
            def managed_app_registrations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedAppRegistration%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::ManagedAppRegistrations::Item::ManagedAppRegistrationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedAppStatuses property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_app_status_item_request_builder
            ## 
            def managed_app_statuses_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedAppStatus%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::ManagedAppStatuses::Item::ManagedAppStatusItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedEBooks property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_e_book_item_request_builder
            ## 
            def managed_e_books_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedEBook%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::ManagedEBooks::Item::ManagedEBookItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mdmWindowsInformationProtectionPolicies property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a mdm_windows_information_protection_policy_item_request_builder
            ## 
            def mdm_windows_information_protection_policies_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["mdmWindowsInformationProtectionPolicy%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::MdmWindowsInformationProtectionPolicies::Item::MdmWindowsInformationProtectionPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mobileAppCategories property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a mobile_app_category_item_request_builder
            ## 
            def mobile_app_categories_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["mobileAppCategory%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::MobileAppCategories::Item::MobileAppCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mobileAppConfigurations property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_device_mobile_app_configuration_item_request_builder
            ## 
            def mobile_app_configurations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedDeviceMobileAppConfiguration%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::MobileAppConfigurations::Item::ManagedDeviceMobileAppConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mobileApps property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a mobile_app_item_request_builder
            ## 
            def mobile_apps_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["mobileApp%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::MobileAppItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update deviceAppManagement
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_app_management
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceAppManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the targetedManagedAppConfigurations property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a targeted_managed_app_configuration_item_request_builder
            ## 
            def targeted_managed_app_configurations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["targetedManagedAppConfiguration%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::TargetedManagedAppConfigurations::Item::TargetedManagedAppConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get deviceAppManagement
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
            ## Update deviceAppManagement
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
            ## Provides operations to manage the vppTokens property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a vpp_token_item_request_builder
            ## 
            def vpp_tokens_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["vppToken%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::VppTokens::Item::VppTokenItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the windowsInformationProtectionPolicies property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_information_protection_policy_item_request_builder
            ## 
            def windows_information_protection_policies_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsInformationProtectionPolicy%2Did"] = id
                return MicrosoftGraph::DeviceAppManagement::WindowsInformationProtectionPolicies::Item::WindowsInformationProtectionPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end

            ## 
            # Get deviceAppManagement
            class DeviceAppManagementRequestBuilderGetQueryParameters
                
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
            class DeviceAppManagementRequestBuilderGetRequestConfiguration
                
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
            class DeviceAppManagementRequestBuilderPatchRequestConfiguration
                
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
