require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/device_configuration'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../device_management'
require_relative '../device_configurations'
require_relative './assign/assign_request_builder'
require_relative './assignments/assignments_request_builder'
require_relative './device_setting_state_summaries/device_setting_state_summaries_request_builder'
require_relative './device_statuses/device_statuses_request_builder'
require_relative './device_status_overview/device_status_overview_request_builder'
require_relative './get_oma_setting_plain_text_value_with_secret_reference_value_id/get_oma_setting_plain_text_value_with_secret_reference_value_id_request_builder'
require_relative './item'
require_relative './user_statuses/user_statuses_request_builder'
require_relative './user_status_overview/user_status_overview_request_builder'

module MicrosoftGraph
    module DeviceManagement
        module DeviceConfigurations
            module Item
                ## 
                # Provides operations to manage the deviceConfigurations property of the microsoft.graph.deviceManagement entity.
                class DeviceConfigurationItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to call the assign method.
                    def assign()
                        return MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::Assign::AssignRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the assignments property of the microsoft.graph.deviceConfiguration entity.
                    def assignments()
                        return MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceSettingStateSummaries property of the microsoft.graph.deviceConfiguration entity.
                    def device_setting_state_summaries()
                        return MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::DeviceSettingStateSummaries::DeviceSettingStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceStatuses property of the microsoft.graph.deviceConfiguration entity.
                    def device_statuses()
                        return MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::DeviceStatuses::DeviceStatusesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceStatusOverview property of the microsoft.graph.deviceConfiguration entity.
                    def device_status_overview()
                        return MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::DeviceStatusOverview::DeviceStatusOverviewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the userStatuses property of the microsoft.graph.deviceConfiguration entity.
                    def user_statuses()
                        return MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::UserStatuses::UserStatusesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the userStatusOverview property of the microsoft.graph.deviceConfiguration entity.
                    def user_status_overview()
                        return MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::UserStatusOverview::UserStatusOverviewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new DeviceConfigurationItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/deviceConfigurations/{deviceConfiguration%2Did}{?%24expand,%24select}")
                    end
                    ## 
                    ## Deletes a androidCustomConfiguration.
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
                    ## Read properties and relationships of the windows10GeneralConfiguration object.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of device_configuration
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceConfiguration.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to call the getOmaSettingPlainTextValue method.
                    ## @param secret_reference_value_id Usage: secretReferenceValueId='{secretReferenceValueId}'
                    ## @return a get_oma_setting_plain_text_value_with_secret_reference_value_id_request_builder
                    ## 
                    def get_oma_setting_plain_text_value_with_secret_reference_value_id(secret_reference_value_id)
                        raise StandardError, 'secret_reference_value_id cannot be null' if secret_reference_value_id.nil?
                        return GetOmaSettingPlainTextValueWithSecretReferenceValueIdRequestBuilder.new(@path_parameters, @request_adapter, secretReferenceValueId)
                    end
                    ## 
                    ## Update the properties of a windowsPhone81GeneralConfiguration object.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of device_configuration
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceConfiguration.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Deletes a androidCustomConfiguration.
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
                    ## Read properties and relationships of the windows10GeneralConfiguration object.
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
                    ## Update the properties of a windowsPhone81GeneralConfiguration object.
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
                    ## @return a device_configuration_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return DeviceConfigurationItemRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Read properties and relationships of the windows10GeneralConfiguration object.
                    class DeviceConfigurationItemRequestBuilderGetQueryParameters
                        
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
