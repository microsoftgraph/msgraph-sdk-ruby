require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/identity_governance/workflow'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../identity_governance'
require_relative '../../../lifecycle_workflows'
require_relative '../../workflows'
require_relative '../item'
require_relative './microsoft_graph_identity_governance_restore'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Workflows
                module Item
                    module MicrosoftGraphIdentityGovernanceRestore
                        ## 
                        # Provides operations to call the restore method.
                        class MicrosoftGraphIdentityGovernanceRestoreRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new MicrosoftGraphIdentityGovernanceRestoreRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/workflows/{workflow%2Did}/microsoft.graph.identityGovernance.restore")
                            end
                            ## 
                            ## Restore a workflow that has been deleted. You can only restore a workflow that was deleted within the last 30 days before Azure AD automatically permanently deletes it.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of workflow
                            ## 
                            def post(request_configuration=nil)
                                request_info = self.to_post_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::Workflow.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Restore a workflow that has been deleted. You can only restore a workflow that was deleted within the last 30 days before Azure AD automatically permanently deletes it.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_post_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :POST
                                request_info.headers.add('Accept', 'application/json')
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                return request_info
                            end
                        end
                    end
                end
            end
        end
    end
end
