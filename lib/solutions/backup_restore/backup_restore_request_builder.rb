require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/backup_restore_root'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../solutions'
require_relative './backup_restore'
require_relative './drive_inclusion_rules/drive_inclusion_rules_request_builder'
require_relative './drive_protection_units/drive_protection_units_request_builder'
require_relative './enable/enable_request_builder'
require_relative './exchange_protection_policies/exchange_protection_policies_request_builder'
require_relative './exchange_restore_sessions/exchange_restore_sessions_request_builder'
require_relative './mailbox_inclusion_rules/mailbox_inclusion_rules_request_builder'
require_relative './mailbox_protection_units/mailbox_protection_units_request_builder'
require_relative './one_drive_for_business_protection_policies/one_drive_for_business_protection_policies_request_builder'
require_relative './one_drive_for_business_restore_sessions/one_drive_for_business_restore_sessions_request_builder'
require_relative './protection_policies/protection_policies_request_builder'
require_relative './protection_units/protection_units_request_builder'
require_relative './restore_points/restore_points_request_builder'
require_relative './restore_sessions/restore_sessions_request_builder'
require_relative './service_apps/service_apps_request_builder'
require_relative './share_point_protection_policies/share_point_protection_policies_request_builder'
require_relative './share_point_restore_sessions/share_point_restore_sessions_request_builder'
require_relative './site_inclusion_rules/site_inclusion_rules_request_builder'
require_relative './site_protection_units/site_protection_units_request_builder'

module MicrosoftGraph
    module Solutions
        module BackupRestore
            ## 
            # Provides operations to manage the backupRestore property of the microsoft.graph.solutionsRoot entity.
            class BackupRestoreRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the driveInclusionRules property of the microsoft.graph.backupRestoreRoot entity.
                def drive_inclusion_rules()
                    return MicrosoftGraph::Solutions::BackupRestore::DriveInclusionRules::DriveInclusionRulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the driveProtectionUnits property of the microsoft.graph.backupRestoreRoot entity.
                def drive_protection_units()
                    return MicrosoftGraph::Solutions::BackupRestore::DriveProtectionUnits::DriveProtectionUnitsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the enable method.
                def enable()
                    return MicrosoftGraph::Solutions::BackupRestore::Enable::EnableRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the exchangeProtectionPolicies property of the microsoft.graph.backupRestoreRoot entity.
                def exchange_protection_policies()
                    return MicrosoftGraph::Solutions::BackupRestore::ExchangeProtectionPolicies::ExchangeProtectionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the exchangeRestoreSessions property of the microsoft.graph.backupRestoreRoot entity.
                def exchange_restore_sessions()
                    return MicrosoftGraph::Solutions::BackupRestore::ExchangeRestoreSessions::ExchangeRestoreSessionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the mailboxInclusionRules property of the microsoft.graph.backupRestoreRoot entity.
                def mailbox_inclusion_rules()
                    return MicrosoftGraph::Solutions::BackupRestore::MailboxInclusionRules::MailboxInclusionRulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the mailboxProtectionUnits property of the microsoft.graph.backupRestoreRoot entity.
                def mailbox_protection_units()
                    return MicrosoftGraph::Solutions::BackupRestore::MailboxProtectionUnits::MailboxProtectionUnitsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the oneDriveForBusinessProtectionPolicies property of the microsoft.graph.backupRestoreRoot entity.
                def one_drive_for_business_protection_policies()
                    return MicrosoftGraph::Solutions::BackupRestore::OneDriveForBusinessProtectionPolicies::OneDriveForBusinessProtectionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the oneDriveForBusinessRestoreSessions property of the microsoft.graph.backupRestoreRoot entity.
                def one_drive_for_business_restore_sessions()
                    return MicrosoftGraph::Solutions::BackupRestore::OneDriveForBusinessRestoreSessions::OneDriveForBusinessRestoreSessionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the protectionPolicies property of the microsoft.graph.backupRestoreRoot entity.
                def protection_policies()
                    return MicrosoftGraph::Solutions::BackupRestore::ProtectionPolicies::ProtectionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the protectionUnits property of the microsoft.graph.backupRestoreRoot entity.
                def protection_units()
                    return MicrosoftGraph::Solutions::BackupRestore::ProtectionUnits::ProtectionUnitsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the restorePoints property of the microsoft.graph.backupRestoreRoot entity.
                def restore_points()
                    return MicrosoftGraph::Solutions::BackupRestore::RestorePoints::RestorePointsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the restoreSessions property of the microsoft.graph.backupRestoreRoot entity.
                def restore_sessions()
                    return MicrosoftGraph::Solutions::BackupRestore::RestoreSessions::RestoreSessionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the serviceApps property of the microsoft.graph.backupRestoreRoot entity.
                def service_apps()
                    return MicrosoftGraph::Solutions::BackupRestore::ServiceApps::ServiceAppsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sharePointProtectionPolicies property of the microsoft.graph.backupRestoreRoot entity.
                def share_point_protection_policies()
                    return MicrosoftGraph::Solutions::BackupRestore::SharePointProtectionPolicies::SharePointProtectionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sharePointRestoreSessions property of the microsoft.graph.backupRestoreRoot entity.
                def share_point_restore_sessions()
                    return MicrosoftGraph::Solutions::BackupRestore::SharePointRestoreSessions::SharePointRestoreSessionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the siteInclusionRules property of the microsoft.graph.backupRestoreRoot entity.
                def site_inclusion_rules()
                    return MicrosoftGraph::Solutions::BackupRestore::SiteInclusionRules::SiteInclusionRulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the siteProtectionUnits property of the microsoft.graph.backupRestoreRoot entity.
                def site_protection_units()
                    return MicrosoftGraph::Solutions::BackupRestore::SiteProtectionUnits::SiteProtectionUnitsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new BackupRestoreRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/solutions/backupRestore{?%24expand,%24select}")
                end
                ## 
                ## Delete navigation property backupRestore for solutions
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
                ## Get the serviceStatus of the Microsoft 365 Backup Storage service in a tenant.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of backup_restore_root
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::BackupRestoreRoot.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property backupRestore in solutions
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of backup_restore_root
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::BackupRestoreRoot.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property backupRestore for solutions
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
                ## Get the serviceStatus of the Microsoft 365 Backup Storage service in a tenant.
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
                ## Update the navigation property backupRestore in solutions
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
                ## @return a backup_restore_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return BackupRestoreRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Get the serviceStatus of the Microsoft 365 Backup Storage service in a tenant.
                class BackupRestoreRequestBuilderGetQueryParameters
                    
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
