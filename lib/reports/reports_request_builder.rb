require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/o_data_errors/o_data_error'
require_relative '../models/report_root'
require_relative './daily_print_usage_by_printer/daily_print_usage_by_printer_request_builder'
require_relative './daily_print_usage_by_printer/item/print_usage_by_printer_item_request_builder'
require_relative './daily_print_usage_by_user/daily_print_usage_by_user_request_builder'
require_relative './daily_print_usage_by_user/item/print_usage_by_user_item_request_builder'
require_relative './device_configuration_device_activity/device_configuration_device_activity_request_builder'
require_relative './device_configuration_user_activity/device_configuration_user_activity_request_builder'
require_relative './get_email_activity_counts_with_period/get_email_activity_counts_with_period_request_builder'
require_relative './get_email_activity_user_counts_with_period/get_email_activity_user_counts_with_period_request_builder'
require_relative './get_email_activity_user_detail_with_date/get_email_activity_user_detail_with_date_request_builder'
require_relative './get_email_activity_user_detail_with_period/get_email_activity_user_detail_with_period_request_builder'
require_relative './get_email_app_usage_apps_user_counts_with_period/get_email_app_usage_apps_user_counts_with_period_request_builder'
require_relative './get_email_app_usage_user_counts_with_period/get_email_app_usage_user_counts_with_period_request_builder'
require_relative './get_email_app_usage_user_detail_with_date/get_email_app_usage_user_detail_with_date_request_builder'
require_relative './get_email_app_usage_user_detail_with_period/get_email_app_usage_user_detail_with_period_request_builder'
require_relative './get_email_app_usage_versions_user_counts_with_period/get_email_app_usage_versions_user_counts_with_period_request_builder'
require_relative './get_group_archived_print_jobs_with_group_id_with_start_date_time_with_end_date_time/76c9ca2dae85297e117160f659453977b81ab078406b5fbb965a1e6fa5420c9e'
require_relative './get_m365_app_platform_user_counts_with_period/get_m365_app_platform_user_counts_with_period_request_builder'
require_relative './get_m365_app_user_counts_with_period/get_m365_app_user_counts_with_period_request_builder'
require_relative './get_m365_app_user_detail_with_date/get_m365_app_user_detail_with_date_request_builder'
require_relative './get_m365_app_user_detail_with_period/get_m365_app_user_detail_with_period_request_builder'
require_relative './get_mailbox_usage_detail_with_period/get_mailbox_usage_detail_with_period_request_builder'
require_relative './get_mailbox_usage_mailbox_counts_with_period/get_mailbox_usage_mailbox_counts_with_period_request_builder'
require_relative './get_mailbox_usage_quota_status_mailbox_counts_with_period/get_mailbox_usage_quota_status_mailbox_counts_with_period_request_builder'
require_relative './get_mailbox_usage_storage_with_period/get_mailbox_usage_storage_with_period_request_builder'
require_relative './get_office365_activation_counts/get_office365_activation_counts_request_builder'
require_relative './get_office365_activations_user_counts/get_office365_activations_user_counts_request_builder'
require_relative './get_office365_activations_user_detail/get_office365_activations_user_detail_request_builder'
require_relative './get_office365_active_user_counts_with_period/get_office365_active_user_counts_with_period_request_builder'
require_relative './get_office365_active_user_detail_with_date/get_office365_active_user_detail_with_date_request_builder'
require_relative './get_office365_active_user_detail_with_period/get_office365_active_user_detail_with_period_request_builder'
require_relative './get_office365_groups_activity_counts_with_period/get_office365_groups_activity_counts_with_period_request_builder'
require_relative './get_office365_groups_activity_detail_with_date/get_office365_groups_activity_detail_with_date_request_builder'
require_relative './get_office365_groups_activity_detail_with_period/get_office365_groups_activity_detail_with_period_request_builder'
require_relative './get_office365_groups_activity_file_counts_with_period/get_office365_groups_activity_file_counts_with_period_request_builder'
require_relative './get_office365_groups_activity_group_counts_with_period/get_office365_groups_activity_group_counts_with_period_request_builder'
require_relative './get_office365_groups_activity_storage_with_period/get_office365_groups_activity_storage_with_period_request_builder'
require_relative './get_office365_services_user_counts_with_period/get_office365_services_user_counts_with_period_request_builder'
require_relative './get_one_drive_activity_file_counts_with_period/get_one_drive_activity_file_counts_with_period_request_builder'
require_relative './get_one_drive_activity_user_counts_with_period/get_one_drive_activity_user_counts_with_period_request_builder'
require_relative './get_one_drive_activity_user_detail_with_date/get_one_drive_activity_user_detail_with_date_request_builder'
require_relative './get_one_drive_activity_user_detail_with_period/get_one_drive_activity_user_detail_with_period_request_builder'
require_relative './get_one_drive_usage_account_counts_with_period/get_one_drive_usage_account_counts_with_period_request_builder'
require_relative './get_one_drive_usage_account_detail_with_date/get_one_drive_usage_account_detail_with_date_request_builder'
require_relative './get_one_drive_usage_account_detail_with_period/get_one_drive_usage_account_detail_with_period_request_builder'
require_relative './get_one_drive_usage_file_counts_with_period/get_one_drive_usage_file_counts_with_period_request_builder'
require_relative './get_one_drive_usage_storage_with_period/get_one_drive_usage_storage_with_period_request_builder'
require_relative './get_printer_archived_print_jobs_with_printer_id_with_start_date_time_with_end_date_time/6d9539f5873fb3fdd65d5d7371db08ed4d7ab3072dd5edea9896d64da7c61b1f'
require_relative './get_share_point_activity_file_counts_with_period/get_share_point_activity_file_counts_with_period_request_builder'
require_relative './get_share_point_activity_pages_with_period/get_share_point_activity_pages_with_period_request_builder'
require_relative './get_share_point_activity_user_counts_with_period/get_share_point_activity_user_counts_with_period_request_builder'
require_relative './get_share_point_activity_user_detail_with_date/get_share_point_activity_user_detail_with_date_request_builder'
require_relative './get_share_point_activity_user_detail_with_period/get_share_point_activity_user_detail_with_period_request_builder'
require_relative './get_share_point_site_usage_detail_with_date/get_share_point_site_usage_detail_with_date_request_builder'
require_relative './get_share_point_site_usage_detail_with_period/get_share_point_site_usage_detail_with_period_request_builder'
require_relative './get_share_point_site_usage_file_counts_with_period/get_share_point_site_usage_file_counts_with_period_request_builder'
require_relative './get_share_point_site_usage_pages_with_period/get_share_point_site_usage_pages_with_period_request_builder'
require_relative './get_share_point_site_usage_site_counts_with_period/get_share_point_site_usage_site_counts_with_period_request_builder'
require_relative './get_share_point_site_usage_storage_with_period/get_share_point_site_usage_storage_with_period_request_builder'
require_relative './get_skype_for_business_activity_counts_with_period/get_skype_for_business_activity_counts_with_period_request_builder'
require_relative './get_skype_for_business_activity_user_counts_with_period/get_skype_for_business_activity_user_counts_with_period_request_builder'
require_relative './get_skype_for_business_activity_user_detail_with_date/get_skype_for_business_activity_user_detail_with_date_request_builder'
require_relative './get_skype_for_business_activity_user_detail_with_period/get_skype_for_business_activity_user_detail_with_period_request_builder'
require_relative './get_skype_for_business_device_usage_distribution_user_counts_with_period/get_skype_for_business_device_usage_distribution_user_counts_with_period_request_builder'
require_relative './get_skype_for_business_device_usage_user_counts_with_period/get_skype_for_business_device_usage_user_counts_with_period_request_builder'
require_relative './get_skype_for_business_device_usage_user_detail_with_date/get_skype_for_business_device_usage_user_detail_with_date_request_builder'
require_relative './get_skype_for_business_device_usage_user_detail_with_period/get_skype_for_business_device_usage_user_detail_with_period_request_builder'
require_relative './get_skype_for_business_organizer_activity_counts_with_period/get_skype_for_business_organizer_activity_counts_with_period_request_builder'
require_relative './get_skype_for_business_organizer_activity_minute_counts_with_period/get_skype_for_business_organizer_activity_minute_counts_with_period_request_builder'
require_relative './get_skype_for_business_organizer_activity_user_counts_with_period/get_skype_for_business_organizer_activity_user_counts_with_period_request_builder'
require_relative './get_skype_for_business_participant_activity_counts_with_period/get_skype_for_business_participant_activity_counts_with_period_request_builder'
require_relative './get_skype_for_business_participant_activity_minute_counts_with_period/get_skype_for_business_participant_activity_minute_counts_with_period_request_builder'
require_relative './get_skype_for_business_participant_activity_user_counts_with_period/get_skype_for_business_participant_activity_user_counts_with_period_request_builder'
require_relative './get_skype_for_business_peer_to_peer_activity_counts_with_period/get_skype_for_business_peer_to_peer_activity_counts_with_period_request_builder'
require_relative './get_skype_for_business_peer_to_peer_activity_minute_counts_with_period/get_skype_for_business_peer_to_peer_activity_minute_counts_with_period_request_builder'
require_relative './get_skype_for_business_peer_to_peer_activity_user_counts_with_period/get_skype_for_business_peer_to_peer_activity_user_counts_with_period_request_builder'
require_relative './get_teams_device_usage_distribution_user_counts_with_period/get_teams_device_usage_distribution_user_counts_with_period_request_builder'
require_relative './get_teams_device_usage_user_counts_with_period/get_teams_device_usage_user_counts_with_period_request_builder'
require_relative './get_teams_device_usage_user_detail_with_date/get_teams_device_usage_user_detail_with_date_request_builder'
require_relative './get_teams_device_usage_user_detail_with_period/get_teams_device_usage_user_detail_with_period_request_builder'
require_relative './get_teams_user_activity_counts_with_period/get_teams_user_activity_counts_with_period_request_builder'
require_relative './get_teams_user_activity_user_counts_with_period/get_teams_user_activity_user_counts_with_period_request_builder'
require_relative './get_teams_user_activity_user_detail_with_date/get_teams_user_activity_user_detail_with_date_request_builder'
require_relative './get_teams_user_activity_user_detail_with_period/get_teams_user_activity_user_detail_with_period_request_builder'
require_relative './get_user_archived_print_jobs_with_user_id_with_start_date_time_with_end_date_time/get_user_archived_print_jobs_with_user_id_with_start_date_time_with_end_date_time_request_builder'
require_relative './get_yammer_activity_counts_with_period/get_yammer_activity_counts_with_period_request_builder'
require_relative './get_yammer_activity_user_counts_with_period/get_yammer_activity_user_counts_with_period_request_builder'
require_relative './get_yammer_activity_user_detail_with_date/get_yammer_activity_user_detail_with_date_request_builder'
require_relative './get_yammer_activity_user_detail_with_period/get_yammer_activity_user_detail_with_period_request_builder'
require_relative './get_yammer_device_usage_distribution_user_counts_with_period/get_yammer_device_usage_distribution_user_counts_with_period_request_builder'
require_relative './get_yammer_device_usage_user_counts_with_period/get_yammer_device_usage_user_counts_with_period_request_builder'
require_relative './get_yammer_device_usage_user_detail_with_date/get_yammer_device_usage_user_detail_with_date_request_builder'
require_relative './get_yammer_device_usage_user_detail_with_period/get_yammer_device_usage_user_detail_with_period_request_builder'
require_relative './get_yammer_groups_activity_counts_with_period/get_yammer_groups_activity_counts_with_period_request_builder'
require_relative './get_yammer_groups_activity_detail_with_date/get_yammer_groups_activity_detail_with_date_request_builder'
require_relative './get_yammer_groups_activity_detail_with_period/get_yammer_groups_activity_detail_with_period_request_builder'
require_relative './get_yammer_groups_activity_group_counts_with_period/get_yammer_groups_activity_group_counts_with_period_request_builder'
require_relative './managed_device_enrollment_failure_details/managed_device_enrollment_failure_details_request_builder'
require_relative './managed_device_enrollment_failure_details_with_skip_with_top_with_filter_with_skip_token/54eee1926ea81dba1a95277923eee079ffc56a067bd10f19cfc481c67bf020bd'
require_relative './managed_device_enrollment_top_failures/managed_device_enrollment_top_failures_request_builder'
require_relative './managed_device_enrollment_top_failures_with_period/managed_device_enrollment_top_failures_with_period_request_builder'
require_relative './monthly_print_usage_by_printer/item/print_usage_by_printer_item_request_builder'
require_relative './monthly_print_usage_by_printer/monthly_print_usage_by_printer_request_builder'
require_relative './monthly_print_usage_by_user/item/print_usage_by_user_item_request_builder'
require_relative './monthly_print_usage_by_user/monthly_print_usage_by_user_request_builder'
require_relative './reports'
require_relative './security/security_request_builder'

module MicrosoftGraph
    module Reports
        ## 
        # Provides operations to manage the reportRoot singleton.
        class ReportsRequestBuilder
            
            ## 
            # Provides operations to manage the dailyPrintUsageByPrinter property of the microsoft.graph.reportRoot entity.
            def daily_print_usage_by_printer()
                return MicrosoftGraph::Reports::DailyPrintUsageByPrinter::DailyPrintUsageByPrinterRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the dailyPrintUsageByUser property of the microsoft.graph.reportRoot entity.
            def daily_print_usage_by_user()
                return MicrosoftGraph::Reports::DailyPrintUsageByUser::DailyPrintUsageByUserRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the deviceConfigurationDeviceActivity method.
            def device_configuration_device_activity()
                return MicrosoftGraph::Reports::DeviceConfigurationDeviceActivity::DeviceConfigurationDeviceActivityRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the deviceConfigurationUserActivity method.
            def device_configuration_user_activity()
                return MicrosoftGraph::Reports::DeviceConfigurationUserActivity::DeviceConfigurationUserActivityRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getOffice365ActivationCounts method.
            def get_office365_activation_counts()
                return MicrosoftGraph::Reports::GetOffice365ActivationCounts::GetOffice365ActivationCountsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getOffice365ActivationsUserCounts method.
            def get_office365_activations_user_counts()
                return MicrosoftGraph::Reports::GetOffice365ActivationsUserCounts::GetOffice365ActivationsUserCountsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getOffice365ActivationsUserDetail method.
            def get_office365_activations_user_detail()
                return MicrosoftGraph::Reports::GetOffice365ActivationsUserDetail::GetOffice365ActivationsUserDetailRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the managedDeviceEnrollmentFailureDetails method.
            def managed_device_enrollment_failure_details()
                return MicrosoftGraph::Reports::ManagedDeviceEnrollmentFailureDetails::ManagedDeviceEnrollmentFailureDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the managedDeviceEnrollmentTopFailures method.
            def managed_device_enrollment_top_failures()
                return MicrosoftGraph::Reports::ManagedDeviceEnrollmentTopFailures::ManagedDeviceEnrollmentTopFailuresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the monthlyPrintUsageByPrinter property of the microsoft.graph.reportRoot entity.
            def monthly_print_usage_by_printer()
                return MicrosoftGraph::Reports::MonthlyPrintUsageByPrinter::MonthlyPrintUsageByPrinterRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the monthlyPrintUsageByUser property of the microsoft.graph.reportRoot entity.
            def monthly_print_usage_by_user()
                return MicrosoftGraph::Reports::MonthlyPrintUsageByUser::MonthlyPrintUsageByUserRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Provides operations to manage the security property of the microsoft.graph.reportRoot entity.
            def security()
                return MicrosoftGraph::Reports::Security::SecurityRequestBuilder.new(@path_parameters, @request_adapter)
            end
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
                @url_template = "{+baseurl}/reports{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Provides operations to manage the dailyPrintUsageByPrinter property of the microsoft.graph.reportRoot entity.
            ## @param id Unique identifier of the item
            ## @return a print_usage_by_printer_item_request_builder
            ## 
            def daily_print_usage_by_printer_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["printUsageByPrinter%2Did"] = id
                return MicrosoftGraph::Reports::DailyPrintUsageByPrinter::Item::PrintUsageByPrinterItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the dailyPrintUsageByUser property of the microsoft.graph.reportRoot entity.
            ## @param id Unique identifier of the item
            ## @return a print_usage_by_user_item_request_builder
            ## 
            def daily_print_usage_by_user_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["printUsageByUser%2Did"] = id
                return MicrosoftGraph::Reports::DailyPrintUsageByUser::Item::PrintUsageByUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get reports
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of report_root
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ReportRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to call the getEmailActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_email_activity_counts_with_period_request_builder
            ## 
            def get_email_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetEmailActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getEmailActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_email_activity_user_counts_with_period_request_builder
            ## 
            def get_email_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetEmailActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getEmailActivityUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_email_activity_user_detail_with_date_request_builder
            ## 
            def get_email_activity_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetEmailActivityUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getEmailActivityUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_email_activity_user_detail_with_period_request_builder
            ## 
            def get_email_activity_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetEmailActivityUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getEmailAppUsageAppsUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_email_app_usage_apps_user_counts_with_period_request_builder
            ## 
            def get_email_app_usage_apps_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetEmailAppUsageAppsUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getEmailAppUsageUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_email_app_usage_user_counts_with_period_request_builder
            ## 
            def get_email_app_usage_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetEmailAppUsageUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getEmailAppUsageUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_email_app_usage_user_detail_with_date_request_builder
            ## 
            def get_email_app_usage_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetEmailAppUsageUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getEmailAppUsageUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_email_app_usage_user_detail_with_period_request_builder
            ## 
            def get_email_app_usage_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetEmailAppUsageUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getEmailAppUsageVersionsUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_email_app_usage_versions_user_counts_with_period_request_builder
            ## 
            def get_email_app_usage_versions_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetEmailAppUsageVersionsUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getGroupArchivedPrintJobs method.
            ## @param endDateTime Usage: endDateTime={endDateTime}
            ## @param groupId Usage: groupId='{groupId}'
            ## @param startDateTime Usage: startDateTime={startDateTime}
            ## @return a get_group_archived_print_jobs_with_group_id_with_start_date_time_with_end_date_time_request_builder
            ## 
            def get_group_archived_print_jobs_with_group_id_with_start_date_time_with_end_date_time(end_date_time, group_id, start_date_time)
                raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                raise StandardError, 'group_id cannot be null' if group_id.nil?
                raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                return GetGroupArchivedPrintJobsWithGroupIdWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, groupId, startDateTime)
            end
            ## 
            ## Provides operations to call the getM365AppPlatformUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_m365_app_platform_user_counts_with_period_request_builder
            ## 
            def get_m365_app_platform_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetM365AppPlatformUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getM365AppUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_m365_app_user_counts_with_period_request_builder
            ## 
            def get_m365_app_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetM365AppUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getM365AppUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_m365_app_user_detail_with_date_request_builder
            ## 
            def get_m365_app_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetM365AppUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getM365AppUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_m365_app_user_detail_with_period_request_builder
            ## 
            def get_m365_app_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetM365AppUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getMailboxUsageDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_mailbox_usage_detail_with_period_request_builder
            ## 
            def get_mailbox_usage_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetMailboxUsageDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getMailboxUsageMailboxCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_mailbox_usage_mailbox_counts_with_period_request_builder
            ## 
            def get_mailbox_usage_mailbox_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetMailboxUsageMailboxCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getMailboxUsageQuotaStatusMailboxCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_mailbox_usage_quota_status_mailbox_counts_with_period_request_builder
            ## 
            def get_mailbox_usage_quota_status_mailbox_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetMailboxUsageQuotaStatusMailboxCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getMailboxUsageStorage method.
            ## @param period Usage: period='{period}'
            ## @return a get_mailbox_usage_storage_with_period_request_builder
            ## 
            def get_mailbox_usage_storage_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetMailboxUsageStorageWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOffice365ActiveUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_office365_active_user_counts_with_period_request_builder
            ## 
            def get_office365_active_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOffice365ActiveUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOffice365ActiveUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_office365_active_user_detail_with_date_request_builder
            ## 
            def get_office365_active_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetOffice365ActiveUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getOffice365ActiveUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_office365_active_user_detail_with_period_request_builder
            ## 
            def get_office365_active_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOffice365ActiveUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOffice365GroupsActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_office365_groups_activity_counts_with_period_request_builder
            ## 
            def get_office365_groups_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOffice365GroupsActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOffice365GroupsActivityDetail method.
            ## @param date Usage: date={date}
            ## @return a get_office365_groups_activity_detail_with_date_request_builder
            ## 
            def get_office365_groups_activity_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetOffice365GroupsActivityDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getOffice365GroupsActivityDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_office365_groups_activity_detail_with_period_request_builder
            ## 
            def get_office365_groups_activity_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOffice365GroupsActivityDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOffice365GroupsActivityFileCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_office365_groups_activity_file_counts_with_period_request_builder
            ## 
            def get_office365_groups_activity_file_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOffice365GroupsActivityFileCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOffice365GroupsActivityGroupCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_office365_groups_activity_group_counts_with_period_request_builder
            ## 
            def get_office365_groups_activity_group_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOffice365GroupsActivityGroupCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOffice365GroupsActivityStorage method.
            ## @param period Usage: period='{period}'
            ## @return a get_office365_groups_activity_storage_with_period_request_builder
            ## 
            def get_office365_groups_activity_storage_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOffice365GroupsActivityStorageWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOffice365ServicesUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_office365_services_user_counts_with_period_request_builder
            ## 
            def get_office365_services_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOffice365ServicesUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOneDriveActivityFileCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_one_drive_activity_file_counts_with_period_request_builder
            ## 
            def get_one_drive_activity_file_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOneDriveActivityFileCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOneDriveActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_one_drive_activity_user_counts_with_period_request_builder
            ## 
            def get_one_drive_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOneDriveActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOneDriveActivityUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_one_drive_activity_user_detail_with_date_request_builder
            ## 
            def get_one_drive_activity_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetOneDriveActivityUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getOneDriveActivityUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_one_drive_activity_user_detail_with_period_request_builder
            ## 
            def get_one_drive_activity_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOneDriveActivityUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOneDriveUsageAccountCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_one_drive_usage_account_counts_with_period_request_builder
            ## 
            def get_one_drive_usage_account_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOneDriveUsageAccountCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOneDriveUsageAccountDetail method.
            ## @param date Usage: date={date}
            ## @return a get_one_drive_usage_account_detail_with_date_request_builder
            ## 
            def get_one_drive_usage_account_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetOneDriveUsageAccountDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getOneDriveUsageAccountDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_one_drive_usage_account_detail_with_period_request_builder
            ## 
            def get_one_drive_usage_account_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOneDriveUsageAccountDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOneDriveUsageFileCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_one_drive_usage_file_counts_with_period_request_builder
            ## 
            def get_one_drive_usage_file_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOneDriveUsageFileCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getOneDriveUsageStorage method.
            ## @param period Usage: period='{period}'
            ## @return a get_one_drive_usage_storage_with_period_request_builder
            ## 
            def get_one_drive_usage_storage_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetOneDriveUsageStorageWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getPrinterArchivedPrintJobs method.
            ## @param endDateTime Usage: endDateTime={endDateTime}
            ## @param printerId Usage: printerId='{printerId}'
            ## @param startDateTime Usage: startDateTime={startDateTime}
            ## @return a get_printer_archived_print_jobs_with_printer_id_with_start_date_time_with_end_date_time_request_builder
            ## 
            def get_printer_archived_print_jobs_with_printer_id_with_start_date_time_with_end_date_time(end_date_time, printer_id, start_date_time)
                raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                raise StandardError, 'printer_id cannot be null' if printer_id.nil?
                raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                return GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, printerId, startDateTime)
            end
            ## 
            ## Provides operations to call the getSharePointActivityFileCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_activity_file_counts_with_period_request_builder
            ## 
            def get_share_point_activity_file_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointActivityFileCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSharePointActivityPages method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_activity_pages_with_period_request_builder
            ## 
            def get_share_point_activity_pages_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointActivityPagesWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSharePointActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_activity_user_counts_with_period_request_builder
            ## 
            def get_share_point_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSharePointActivityUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_share_point_activity_user_detail_with_date_request_builder
            ## 
            def get_share_point_activity_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetSharePointActivityUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getSharePointActivityUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_activity_user_detail_with_period_request_builder
            ## 
            def get_share_point_activity_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointActivityUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSharePointSiteUsageDetail method.
            ## @param date Usage: date={date}
            ## @return a get_share_point_site_usage_detail_with_date_request_builder
            ## 
            def get_share_point_site_usage_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetSharePointSiteUsageDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getSharePointSiteUsageDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_site_usage_detail_with_period_request_builder
            ## 
            def get_share_point_site_usage_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointSiteUsageDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSharePointSiteUsageFileCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_site_usage_file_counts_with_period_request_builder
            ## 
            def get_share_point_site_usage_file_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointSiteUsageFileCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSharePointSiteUsagePages method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_site_usage_pages_with_period_request_builder
            ## 
            def get_share_point_site_usage_pages_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointSiteUsagePagesWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSharePointSiteUsageSiteCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_site_usage_site_counts_with_period_request_builder
            ## 
            def get_share_point_site_usage_site_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointSiteUsageSiteCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSharePointSiteUsageStorage method.
            ## @param period Usage: period='{period}'
            ## @return a get_share_point_site_usage_storage_with_period_request_builder
            ## 
            def get_share_point_site_usage_storage_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSharePointSiteUsageStorageWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_activity_counts_with_period_request_builder
            ## 
            def get_skype_for_business_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_activity_user_counts_with_period_request_builder
            ## 
            def get_skype_for_business_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessActivityUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_skype_for_business_activity_user_detail_with_date_request_builder
            ## 
            def get_skype_for_business_activity_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetSkypeForBusinessActivityUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessActivityUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_activity_user_detail_with_period_request_builder
            ## 
            def get_skype_for_business_activity_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessActivityUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessDeviceUsageDistributionUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_device_usage_distribution_user_counts_with_period_request_builder
            ## 
            def get_skype_for_business_device_usage_distribution_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessDeviceUsageDistributionUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessDeviceUsageUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_device_usage_user_counts_with_period_request_builder
            ## 
            def get_skype_for_business_device_usage_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessDeviceUsageUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessDeviceUsageUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_skype_for_business_device_usage_user_detail_with_date_request_builder
            ## 
            def get_skype_for_business_device_usage_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetSkypeForBusinessDeviceUsageUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessDeviceUsageUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_device_usage_user_detail_with_period_request_builder
            ## 
            def get_skype_for_business_device_usage_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessDeviceUsageUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessOrganizerActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_organizer_activity_counts_with_period_request_builder
            ## 
            def get_skype_for_business_organizer_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessOrganizerActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessOrganizerActivityMinuteCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_organizer_activity_minute_counts_with_period_request_builder
            ## 
            def get_skype_for_business_organizer_activity_minute_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessOrganizerActivityMinuteCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessOrganizerActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_organizer_activity_user_counts_with_period_request_builder
            ## 
            def get_skype_for_business_organizer_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessOrganizerActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessParticipantActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_participant_activity_counts_with_period_request_builder
            ## 
            def get_skype_for_business_participant_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessParticipantActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessParticipantActivityMinuteCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_participant_activity_minute_counts_with_period_request_builder
            ## 
            def get_skype_for_business_participant_activity_minute_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessParticipantActivityMinuteCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessParticipantActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_participant_activity_user_counts_with_period_request_builder
            ## 
            def get_skype_for_business_participant_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessParticipantActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessPeerToPeerActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_peer_to_peer_activity_counts_with_period_request_builder
            ## 
            def get_skype_for_business_peer_to_peer_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessPeerToPeerActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessPeerToPeerActivityMinuteCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_peer_to_peer_activity_minute_counts_with_period_request_builder
            ## 
            def get_skype_for_business_peer_to_peer_activity_minute_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessPeerToPeerActivityMinuteCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getSkypeForBusinessPeerToPeerActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_skype_for_business_peer_to_peer_activity_user_counts_with_period_request_builder
            ## 
            def get_skype_for_business_peer_to_peer_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetSkypeForBusinessPeerToPeerActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getTeamsDeviceUsageDistributionUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_teams_device_usage_distribution_user_counts_with_period_request_builder
            ## 
            def get_teams_device_usage_distribution_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetTeamsDeviceUsageDistributionUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getTeamsDeviceUsageUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_teams_device_usage_user_counts_with_period_request_builder
            ## 
            def get_teams_device_usage_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetTeamsDeviceUsageUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getTeamsDeviceUsageUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_teams_device_usage_user_detail_with_date_request_builder
            ## 
            def get_teams_device_usage_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetTeamsDeviceUsageUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getTeamsDeviceUsageUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_teams_device_usage_user_detail_with_period_request_builder
            ## 
            def get_teams_device_usage_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetTeamsDeviceUsageUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getTeamsUserActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_teams_user_activity_counts_with_period_request_builder
            ## 
            def get_teams_user_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetTeamsUserActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getTeamsUserActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_teams_user_activity_user_counts_with_period_request_builder
            ## 
            def get_teams_user_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetTeamsUserActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getTeamsUserActivityUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_teams_user_activity_user_detail_with_date_request_builder
            ## 
            def get_teams_user_activity_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetTeamsUserActivityUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getTeamsUserActivityUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_teams_user_activity_user_detail_with_period_request_builder
            ## 
            def get_teams_user_activity_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetTeamsUserActivityUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getUserArchivedPrintJobs method.
            ## @param endDateTime Usage: endDateTime={endDateTime}
            ## @param startDateTime Usage: startDateTime={startDateTime}
            ## @param userId Usage: userId='{userId}'
            ## @return a get_user_archived_print_jobs_with_user_id_with_start_date_time_with_end_date_time_request_builder
            ## 
            def get_user_archived_print_jobs_with_user_id_with_start_date_time_with_end_date_time(end_date_time, start_date_time, user_id)
                raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                raise StandardError, 'user_id cannot be null' if user_id.nil?
                return GetUserArchivedPrintJobsWithUserIdWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime, userId)
            end
            ## 
            ## Provides operations to call the getYammerActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_activity_counts_with_period_request_builder
            ## 
            def get_yammer_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getYammerActivityUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_activity_user_counts_with_period_request_builder
            ## 
            def get_yammer_activity_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerActivityUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getYammerActivityUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_yammer_activity_user_detail_with_date_request_builder
            ## 
            def get_yammer_activity_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetYammerActivityUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getYammerActivityUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_activity_user_detail_with_period_request_builder
            ## 
            def get_yammer_activity_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerActivityUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getYammerDeviceUsageDistributionUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_device_usage_distribution_user_counts_with_period_request_builder
            ## 
            def get_yammer_device_usage_distribution_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerDeviceUsageDistributionUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getYammerDeviceUsageUserCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_device_usage_user_counts_with_period_request_builder
            ## 
            def get_yammer_device_usage_user_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerDeviceUsageUserCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getYammerDeviceUsageUserDetail method.
            ## @param date Usage: date={date}
            ## @return a get_yammer_device_usage_user_detail_with_date_request_builder
            ## 
            def get_yammer_device_usage_user_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetYammerDeviceUsageUserDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getYammerDeviceUsageUserDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_device_usage_user_detail_with_period_request_builder
            ## 
            def get_yammer_device_usage_user_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerDeviceUsageUserDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getYammerGroupsActivityCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_groups_activity_counts_with_period_request_builder
            ## 
            def get_yammer_groups_activity_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerGroupsActivityCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getYammerGroupsActivityDetail method.
            ## @param date Usage: date={date}
            ## @return a get_yammer_groups_activity_detail_with_date_request_builder
            ## 
            def get_yammer_groups_activity_detail_with_date(date)
                raise StandardError, 'date cannot be null' if date.nil?
                return GetYammerGroupsActivityDetailWithDateRequestBuilder.new(@path_parameters, @request_adapter, date)
            end
            ## 
            ## Provides operations to call the getYammerGroupsActivityDetail method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_groups_activity_detail_with_period_request_builder
            ## 
            def get_yammer_groups_activity_detail_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerGroupsActivityDetailWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the getYammerGroupsActivityGroupCounts method.
            ## @param period Usage: period='{period}'
            ## @return a get_yammer_groups_activity_group_counts_with_period_request_builder
            ## 
            def get_yammer_groups_activity_group_counts_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return GetYammerGroupsActivityGroupCountsWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to call the managedDeviceEnrollmentFailureDetails method.
            ## @param filter Usage: filter='{filter}'
            ## @param skip Usage: skip={skip}
            ## @param skipToken Usage: skipToken='{skipToken}'
            ## @param top Usage: top={top}
            ## @return a managed_device_enrollment_failure_details_with_skip_with_top_with_filter_with_skip_token_request_builder
            ## 
            def managed_device_enrollment_failure_details_with_skip_with_top_with_filter_with_skip_token(filter, skip, skip_token, top)
                raise StandardError, 'filter cannot be null' if filter.nil?
                raise StandardError, 'skip cannot be null' if skip.nil?
                raise StandardError, 'skip_token cannot be null' if skip_token.nil?
                raise StandardError, 'top cannot be null' if top.nil?
                return ManagedDeviceEnrollmentFailureDetailsWithSkipWithTopWithFilterWithSkipTokenRequestBuilder.new(@path_parameters, @request_adapter, filter, skip, skipToken, top)
            end
            ## 
            ## Provides operations to call the managedDeviceEnrollmentTopFailures method.
            ## @param period Usage: period='{period}'
            ## @return a managed_device_enrollment_top_failures_with_period_request_builder
            ## 
            def managed_device_enrollment_top_failures_with_period(period)
                raise StandardError, 'period cannot be null' if period.nil?
                return ManagedDeviceEnrollmentTopFailuresWithPeriodRequestBuilder.new(@path_parameters, @request_adapter, period)
            end
            ## 
            ## Provides operations to manage the monthlyPrintUsageByPrinter property of the microsoft.graph.reportRoot entity.
            ## @param id Unique identifier of the item
            ## @return a print_usage_by_printer_item_request_builder
            ## 
            def monthly_print_usage_by_printer_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["printUsageByPrinter%2Did"] = id
                return MicrosoftGraph::Reports::MonthlyPrintUsageByPrinter::Item::PrintUsageByPrinterItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the monthlyPrintUsageByUser property of the microsoft.graph.reportRoot entity.
            ## @param id Unique identifier of the item
            ## @return a print_usage_by_user_item_request_builder
            ## 
            def monthly_print_usage_by_user_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["printUsageByUser%2Did"] = id
                return MicrosoftGraph::Reports::MonthlyPrintUsageByUser::Item::PrintUsageByUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update reports
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of report_root
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ReportRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get reports
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
            ## Update reports
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
            # Get reports
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
