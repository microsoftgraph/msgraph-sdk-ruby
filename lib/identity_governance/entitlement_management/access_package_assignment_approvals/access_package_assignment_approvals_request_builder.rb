require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/approval'
require_relative '../../../models/approval_collection_response'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../identity_governance'
require_relative '../entitlement_management'
require_relative './access_package_assignment_approvals'
require_relative './count/count_request_builder'
require_relative './filter_by_current_user_with_on/filter_by_current_user_with_on_request_builder'
require_relative './item/approval_item_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageAssignmentApprovals
                ## 
                # Provides operations to manage the accessPackageAssignmentApprovals property of the microsoft.graph.entitlementManagement entity.
                class AccessPackageAssignmentApprovalsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to count the resources in the collection.
                    def count()
                        return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentApprovals::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the accessPackageAssignmentApprovals property of the microsoft.graph.entitlementManagement entity.
                    ## @param approval_id The unique identifier of approval
                    ## @return a approval_item_request_builder
                    ## 
                    def by_approval_id(approval_id)
                        raise StandardError, 'approval_id cannot be null' if approval_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["approval%2Did"] = approval_id
                        return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentApprovals::Item::ApprovalItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new AccessPackageAssignmentApprovalsRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                    end
                    ## 
                    ## Provides operations to call the filterByCurrentUser method.
                    ## @param on Usage: on='{on}'
                    ## @return a filter_by_current_user_with_on_request_builder
                    ## 
                    def filter_by_current_user_with_on(on)
                        raise StandardError, 'on cannot be null' if on.nil?
                        return FilterByCurrentUserWithOnRequestBuilder.new(@path_parameters, @request_adapter, on)
                    end
                    ## 
                    ## Retrieve the properties of an approval object. This API request is made by an approver in the following scenarios: In Microsoft Entra entitlement management, providing the identifier of the access package assignment request.In PIM for groups, providing the identifier of the assignment schedule request.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of approval_collection_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ApprovalCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Create new navigation property to accessPackageAssignmentApprovals for identityGovernance
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of approval
                    ## 
                    def post(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_post_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Approval.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Retrieve the properties of an approval object. This API request is made by an approver in the following scenarios: In Microsoft Entra entitlement management, providing the identifier of the access package assignment request.In PIM for groups, providing the identifier of the assignment schedule request.
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
                    ## Create new navigation property to accessPackageAssignmentApprovals for identityGovernance
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
                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                        request_info.url_template = '{+baseurl}/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals'
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :POST
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a access_package_assignment_approvals_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return AccessPackageAssignmentApprovalsRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Retrieve the properties of an approval object. This API request is made by an approver in the following scenarios: In Microsoft Entra entitlement management, providing the identifier of the access package assignment request.In PIM for groups, providing the identifier of the assignment schedule request.
                    class AccessPackageAssignmentApprovalsRequestBuilderGetQueryParameters
                        
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
end
