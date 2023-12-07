require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/device_app_management'
require_relative '../models/o_data_errors_o_data_error'
require_relative './android_managed_app_protections/android_managed_app_protections_request_builder'
require_relative './default_managed_app_protections/default_managed_app_protections_request_builder'
require_relative './device_app_management'
require_relative './ios_managed_app_protections/ios_managed_app_protections_request_builder'
require_relative './managed_app_policies/managed_app_policies_request_builder'
require_relative './managed_app_registrations/managed_app_registrations_request_builder'
require_relative './managed_app_statuses/managed_app_statuses_request_builder'
require_relative './managed_e_books/managed_e_books_request_builder'
require_relative './mdm_windows_information_protection_policies/mdm_windows_information_protection_policies_request_builder'
require_relative './mobile_app_categories/mobile_app_categories_request_builder'
require_relative './mobile_app_configurations/mobile_app_configurations_request_builder'
require_relative './mobile_apps/mobile_apps_request_builder'
require_relative './sync_microsoft_store_for_business_apps/sync_microsoft_store_for_business_apps_request_builder'
require_relative './targeted_managed_app_configurations/targeted_managed_app_configurations_request_builder'
require_relative './vpp_tokens/vpp_tokens_request_builder'
require_relative './windows_information_protection_policies/windows_information_protection_policies_request_builder'

module MicrosoftGraph
    module DeviceAppManagement
        ## 
        # Provides operations to manage the deviceAppManagement singleton.
        class DeviceAppManagementRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
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
            ## Instantiates a new DeviceAppManagementRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/deviceAppManagement{?%24select,%24expand}")
            end
            ## 
            ## Read properties and relationships of the deviceAppManagement object.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_app_management
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceAppManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update the properties of a deviceAppManagement object.
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_app_management
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceAppManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Read properties and relationships of the deviceAppManagement object.
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
            ## Update the properties of a deviceAppManagement object.
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_patch_request_information(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :PATCH
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
            ## @param raw_url The raw URL to use for the request builder.
            ## @return a device_app_management_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return DeviceAppManagementRequestBuilder.new(raw_url, @request_adapter)
            end

            ## 
            # Read properties and relationships of the deviceAppManagement object.
            class DeviceAppManagementRequestBuilderGetQueryParameters
                
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
