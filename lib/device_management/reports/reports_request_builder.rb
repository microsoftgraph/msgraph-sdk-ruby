require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/device_management_reports'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../device_management'
require_relative './export_jobs/export_jobs_request_builder'
require_relative './export_jobs/item/device_management_export_job_item_request_builder'
require_relative './get_cached_report/get_cached_report_request_builder'
require_relative './get_compliance_policy_non_compliance_report/get_compliance_policy_non_compliance_report_request_builder'
require_relative './get_compliance_policy_non_compliance_summary_report/get_compliance_policy_non_compliance_summary_report_request_builder'
require_relative './get_compliance_setting_non_compliance_report/get_compliance_setting_non_compliance_report_request_builder'
require_relative './get_configuration_policy_non_compliance_report/get_configuration_policy_non_compliance_report_request_builder'
require_relative './get_configuration_policy_non_compliance_summary_report/get_configuration_policy_non_compliance_summary_report_request_builder'
require_relative './get_configuration_setting_non_compliance_report/get_configuration_setting_non_compliance_report_request_builder'
require_relative './get_device_management_intent_per_setting_contributing_profiles/get_device_management_intent_per_setting_contributing_profiles_request_builder'
require_relative './get_device_management_intent_settings_report/get_device_management_intent_settings_report_request_builder'
require_relative './get_device_non_compliance_report/get_device_non_compliance_report_request_builder'
require_relative './get_devices_without_compliance_policy_report/get_devices_without_compliance_policy_report_request_builder'
require_relative './get_historical_report/get_historical_report_request_builder'
require_relative './get_noncompliant_devices_and_settings_report/get_noncompliant_devices_and_settings_report_request_builder'
require_relative './get_policy_non_compliance_metadata/get_policy_non_compliance_metadata_request_builder'
require_relative './get_policy_non_compliance_report/get_policy_non_compliance_report_request_builder'
require_relative './get_policy_non_compliance_summary_report/get_policy_non_compliance_summary_report_request_builder'
require_relative './get_report_filters/get_report_filters_request_builder'
require_relative './get_setting_non_compliance_report/get_setting_non_compliance_report_request_builder'
require_relative './reports'

module MicrosoftGraph
    module DeviceManagement
        module Reports
            ## 
            # Provides operations to manage the reports property of the microsoft.graph.deviceManagement entity.
            class ReportsRequestBuilder
                
                ## 
                # Provides operations to manage the exportJobs property of the microsoft.graph.deviceManagementReports entity.
                def export_jobs()
                    return MicrosoftGraph::DeviceManagement::Reports::ExportJobs::ExportJobsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getCachedReport method.
                def get_cached_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetCachedReport::GetCachedReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getCompliancePolicyNonComplianceReport method.
                def get_compliance_policy_non_compliance_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetCompliancePolicyNonComplianceReport::GetCompliancePolicyNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getCompliancePolicyNonComplianceSummaryReport method.
                def get_compliance_policy_non_compliance_summary_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetCompliancePolicyNonComplianceSummaryReport::GetCompliancePolicyNonComplianceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getComplianceSettingNonComplianceReport method.
                def get_compliance_setting_non_compliance_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetComplianceSettingNonComplianceReport::GetComplianceSettingNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getConfigurationPolicyNonComplianceReport method.
                def get_configuration_policy_non_compliance_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetConfigurationPolicyNonComplianceReport::GetConfigurationPolicyNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getConfigurationPolicyNonComplianceSummaryReport method.
                def get_configuration_policy_non_compliance_summary_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetConfigurationPolicyNonComplianceSummaryReport::GetConfigurationPolicyNonComplianceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getConfigurationSettingNonComplianceReport method.
                def get_configuration_setting_non_compliance_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetConfigurationSettingNonComplianceReport::GetConfigurationSettingNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getDeviceManagementIntentPerSettingContributingProfiles method.
                def get_device_management_intent_per_setting_contributing_profiles()
                    return MicrosoftGraph::DeviceManagement::Reports::GetDeviceManagementIntentPerSettingContributingProfiles::GetDeviceManagementIntentPerSettingContributingProfilesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getDeviceManagementIntentSettingsReport method.
                def get_device_management_intent_settings_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetDeviceManagementIntentSettingsReport::GetDeviceManagementIntentSettingsReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getDeviceNonComplianceReport method.
                def get_device_non_compliance_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetDeviceNonComplianceReport::GetDeviceNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getDevicesWithoutCompliancePolicyReport method.
                def get_devices_without_compliance_policy_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetDevicesWithoutCompliancePolicyReport::GetDevicesWithoutCompliancePolicyReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getHistoricalReport method.
                def get_historical_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetHistoricalReport::GetHistoricalReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getNoncompliantDevicesAndSettingsReport method.
                def get_noncompliant_devices_and_settings_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetNoncompliantDevicesAndSettingsReport::GetNoncompliantDevicesAndSettingsReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getPolicyNonComplianceMetadata method.
                def get_policy_non_compliance_metadata()
                    return MicrosoftGraph::DeviceManagement::Reports::GetPolicyNonComplianceMetadata::GetPolicyNonComplianceMetadataRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getPolicyNonComplianceReport method.
                def get_policy_non_compliance_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetPolicyNonComplianceReport::GetPolicyNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getPolicyNonComplianceSummaryReport method.
                def get_policy_non_compliance_summary_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetPolicyNonComplianceSummaryReport::GetPolicyNonComplianceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getReportFilters method.
                def get_report_filters()
                    return MicrosoftGraph::DeviceManagement::Reports::GetReportFilters::GetReportFiltersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getSettingNonComplianceReport method.
                def get_setting_non_compliance_report()
                    return MicrosoftGraph::DeviceManagement::Reports::GetSettingNonComplianceReport::GetSettingNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
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
                ## Instantiates a new ReportsRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/deviceManagement/reports{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Delete navigation property reports for deviceManagement
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
                ## Provides operations to manage the exportJobs property of the microsoft.graph.deviceManagementReports entity.
                ## @param id Unique identifier of the item
                ## @return a device_management_export_job_item_request_builder
                ## 
                def export_jobs_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["deviceManagementExportJob%2Did"] = id
                    return MicrosoftGraph::DeviceManagement::Reports::ExportJobs::Item::DeviceManagementExportJobItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Reports singleton
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of device_management_reports
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceManagementReports.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property reports in deviceManagement
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of device_management_reports
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceManagementReports.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property reports for deviceManagement
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
                ## Reports singleton
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
                ## Update the navigation property reports in deviceManagement
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
                class ReportsRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # Reports singleton
                class ReportsRequestBuilderGetQueryParameters
                    
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
                class ReportsRequestBuilderGetRequestConfiguration
                    
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
                class ReportsRequestBuilderPatchRequestConfiguration
                    
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
