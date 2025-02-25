require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/mobile_app'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../device_app_management'
require_relative '../mobile_apps'
require_relative './assign/assign_request_builder'
require_relative './assignments/assignments_request_builder'
require_relative './categories/categories_request_builder'
require_relative './graph_android_lob_app/graph_android_lob_app_request_builder'
require_relative './graph_android_store_app/graph_android_store_app_request_builder'
require_relative './graph_ios_lob_app/graph_ios_lob_app_request_builder'
require_relative './graph_ios_store_app/graph_ios_store_app_request_builder'
require_relative './graph_ios_vpp_app/graph_ios_vpp_app_request_builder'
require_relative './graph_mac_o_s_dmg_app/graph_mac_o_s_dmg_app_request_builder'
require_relative './graph_mac_o_s_lob_app/graph_mac_o_s_lob_app_request_builder'
require_relative './graph_managed_android_lob_app/graph_managed_android_lob_app_request_builder'
require_relative './graph_managed_i_o_s_lob_app/graph_managed_i_o_s_lob_app_request_builder'
require_relative './graph_managed_mobile_lob_app/graph_managed_mobile_lob_app_request_builder'
require_relative './graph_microsoft_store_for_business_app/graph_microsoft_store_for_business_app_request_builder'
require_relative './graph_win32_lob_app/graph_win32_lob_app_request_builder'
require_relative './graph_windows_app_x/graph_windows_app_x_request_builder'
require_relative './graph_windows_mobile_m_s_i/graph_windows_mobile_m_s_i_request_builder'
require_relative './graph_windows_universal_app_x/graph_windows_universal_app_x_request_builder'
require_relative './graph_windows_web_app/graph_windows_web_app_request_builder'
require_relative './item'

module MicrosoftGraph
    module DeviceAppManagement
        module MobileApps
            module Item
                ## 
                # Provides operations to manage the mobileApps property of the microsoft.graph.deviceAppManagement entity.
                class MobileAppItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to call the assign method.
                    def assign()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::Assign::AssignRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the assignments property of the microsoft.graph.mobileApp entity.
                    def assignments()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the categories property of the microsoft.graph.mobileApp entity.
                    def categories()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::Categories::CategoriesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to androidLobApp.
                    def graph_android_lob_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphAndroidLobApp::GraphAndroidLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to androidStoreApp.
                    def graph_android_store_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphAndroidStoreApp::GraphAndroidStoreAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to iosLobApp.
                    def graph_ios_lob_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphIosLobApp::GraphIosLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to iosStoreApp.
                    def graph_ios_store_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphIosStoreApp::GraphIosStoreAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to iosVppApp.
                    def graph_ios_vpp_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphIosVppApp::GraphIosVppAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to macOSDmgApp.
                    def graph_mac_o_s_dmg_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphMacOSDmgApp::GraphMacOSDmgAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to macOSLobApp.
                    def graph_mac_o_s_lob_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphMacOSLobApp::GraphMacOSLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to managedAndroidLobApp.
                    def graph_managed_android_lob_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphManagedAndroidLobApp::GraphManagedAndroidLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to managedIOSLobApp.
                    def graph_managed_i_o_s_lob_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphManagedIOSLobApp::GraphManagedIOSLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to managedMobileLobApp.
                    def graph_managed_mobile_lob_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphManagedMobileLobApp::GraphManagedMobileLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to microsoftStoreForBusinessApp.
                    def graph_microsoft_store_for_business_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphMicrosoftStoreForBusinessApp::GraphMicrosoftStoreForBusinessAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to win32LobApp.
                    def graph_win32_lob_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphWin32LobApp::GraphWin32LobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to windowsAppX.
                    def graph_windows_app_x()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphWindowsAppX::GraphWindowsAppXRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to windowsMobileMSI.
                    def graph_windows_mobile_m_s_i()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphWindowsMobileMSI::GraphWindowsMobileMSIRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to windowsUniversalAppX.
                    def graph_windows_universal_app_x()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphWindowsUniversalAppX::GraphWindowsUniversalAppXRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to windowsWebApp.
                    def graph_windows_web_app()
                        return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::GraphWindowsWebApp::GraphWindowsWebAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new MobileAppItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceAppManagement/mobileApps/{mobileApp%2Did}{?%24expand,%24select}")
                    end
                    ## 
                    ## Deletes a windowsAppX.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Read properties and relationships of the managedIOSLobApp object.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of mobile_app
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MobileApp.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the properties of a managedIOSLobApp object.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of mobile_app
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MobileApp.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Deletes a windowsAppX.
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
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Read properties and relationships of the managedIOSLobApp object.
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
                    ## Update the properties of a managedIOSLobApp object.
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
                        request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a mobile_app_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return MobileAppItemRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Read properties and relationships of the managedIOSLobApp object.
                    class MobileAppItemRequestBuilderGetQueryParameters
                        
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
