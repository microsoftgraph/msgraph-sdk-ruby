require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/audit_log_root'
require_relative '../models/o_data_errors/o_data_error'
require_relative './audit_logs'
require_relative './directory_audits/directory_audits_request_builder'
require_relative './directory_audits/item/directory_audit_item_request_builder'
require_relative './provisioning/item/provisioning_object_summary_item_request_builder'
require_relative './provisioning/provisioning_request_builder'
require_relative './sign_ins/item/sign_in_item_request_builder'
require_relative './sign_ins/sign_ins_request_builder'

module MicrosoftGraph
    module AuditLogs
        ## 
        # Provides operations to manage the auditLogRoot singleton.
        class AuditLogsRequestBuilder
            
            ## 
            # Provides operations to manage the directoryAudits property of the microsoft.graph.auditLogRoot entity.
            def directory_audits()
                return MicrosoftGraph::AuditLogs::DirectoryAudits::DirectoryAuditsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # Provides operations to manage the provisioning property of the microsoft.graph.auditLogRoot entity.
            def provisioning()
                return MicrosoftGraph::AuditLogs::Provisioning::ProvisioningRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Provides operations to manage the signIns property of the microsoft.graph.auditLogRoot entity.
            def sign_ins()
                return MicrosoftGraph::AuditLogs::SignIns::SignInsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            ## Instantiates a new AuditLogsRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/auditLogs{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Provides operations to manage the directoryAudits property of the microsoft.graph.auditLogRoot entity.
            ## @param id Unique identifier of the item
            ## @return a directory_audit_item_request_builder
            ## 
            def directory_audits_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["directoryAudit%2Did"] = id
                return MicrosoftGraph::AuditLogs::DirectoryAudits::Item::DirectoryAuditItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get auditLogs
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of audit_log_root
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AuditLogRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update auditLogs
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of audit_log_root
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AuditLogRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the provisioning property of the microsoft.graph.auditLogRoot entity.
            ## @param id Unique identifier of the item
            ## @return a provisioning_object_summary_item_request_builder
            ## 
            def provisioning_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["provisioningObjectSummary%2Did"] = id
                return MicrosoftGraph::AuditLogs::Provisioning::Item::ProvisioningObjectSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the signIns property of the microsoft.graph.auditLogRoot entity.
            ## @param id Unique identifier of the item
            ## @return a sign_in_item_request_builder
            ## 
            def sign_ins_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["signIn%2Did"] = id
                return MicrosoftGraph::AuditLogs::SignIns::Item::SignInItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get auditLogs
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
            ## Update auditLogs
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
            # Get auditLogs
            class AuditLogsRequestBuilderGetQueryParameters
                
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
            class AuditLogsRequestBuilderGetRequestConfiguration
                
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
            class AuditLogsRequestBuilderPatchRequestConfiguration
                
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
