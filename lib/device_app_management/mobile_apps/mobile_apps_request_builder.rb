require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/mobile_app'
require_relative '../../models/mobile_app_collection_response'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../device_app_management'
require_relative './count/count_request_builder'
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
require_relative './item/mobile_app_item_request_builder'
require_relative './mobile_apps'

module MicrosoftGraph
    module DeviceAppManagement
        module MobileApps
            ## 
            # Provides operations to manage the mobileApps property of the microsoft.graph.deviceAppManagement entity.
            class MobileAppsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to count the resources in the collection.
                def count()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to androidLobApp.
                def graph_android_lob_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphAndroidLobApp::GraphAndroidLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to androidStoreApp.
                def graph_android_store_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphAndroidStoreApp::GraphAndroidStoreAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to iosLobApp.
                def graph_ios_lob_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphIosLobApp::GraphIosLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to iosStoreApp.
                def graph_ios_store_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphIosStoreApp::GraphIosStoreAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to iosVppApp.
                def graph_ios_vpp_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphIosVppApp::GraphIosVppAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to macOSDmgApp.
                def graph_mac_o_s_dmg_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphMacOSDmgApp::GraphMacOSDmgAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to macOSLobApp.
                def graph_mac_o_s_lob_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphMacOSLobApp::GraphMacOSLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to managedAndroidLobApp.
                def graph_managed_android_lob_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphManagedAndroidLobApp::GraphManagedAndroidLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to managedIOSLobApp.
                def graph_managed_i_o_s_lob_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphManagedIOSLobApp::GraphManagedIOSLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to managedMobileLobApp.
                def graph_managed_mobile_lob_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphManagedMobileLobApp::GraphManagedMobileLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to microsoftStoreForBusinessApp.
                def graph_microsoft_store_for_business_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphMicrosoftStoreForBusinessApp::GraphMicrosoftStoreForBusinessAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to win32LobApp.
                def graph_win32_lob_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphWin32LobApp::GraphWin32LobAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to windowsAppX.
                def graph_windows_app_x()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphWindowsAppX::GraphWindowsAppXRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to windowsMobileMSI.
                def graph_windows_mobile_m_s_i()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphWindowsMobileMSI::GraphWindowsMobileMSIRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to windowsUniversalAppX.
                def graph_windows_universal_app_x()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphWindowsUniversalAppX::GraphWindowsUniversalAppXRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to windowsWebApp.
                def graph_windows_web_app()
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::GraphWindowsWebApp::GraphWindowsWebAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to manage the mobileApps property of the microsoft.graph.deviceAppManagement entity.
                ## @param mobile_app_id The unique identifier of mobileApp
                ## @return a mobile_app_item_request_builder
                ## 
                def by_mobile_app_id(mobile_app_id)
                    raise StandardError, 'mobile_app_id cannot be null' if mobile_app_id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["mobileApp%2Did"] = mobile_app_id
                    return MicrosoftGraph::DeviceAppManagement::MobileApps::Item::MobileAppItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new MobileAppsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/deviceAppManagement/mobileApps{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                end
                ## 
                ## List properties and relationships of the managedAndroidLobApp objects.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of mobile_app_collection_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MobileAppCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Create a new managedAndroidLobApp object.
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of mobile_app
                ## 
                def post(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_post_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MobileApp.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## List properties and relationships of the managedAndroidLobApp objects.
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
                ## Create a new managedAndroidLobApp object.
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
                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                    request_info.url_template = '{+baseurl}/deviceAppManagement/mobileApps'
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :POST
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a mobile_apps_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return MobileAppsRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # List properties and relationships of the managedAndroidLobApp objects.
                class MobileAppsRequestBuilderGetQueryParameters
                    
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
