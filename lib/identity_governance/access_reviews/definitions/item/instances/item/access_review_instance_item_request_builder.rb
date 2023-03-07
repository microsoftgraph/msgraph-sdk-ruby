require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/access_review_instance'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../identity_governance'
require_relative '../../../../access_reviews'
require_relative '../../../definitions'
require_relative '../../item'
require_relative '../instances'
require_relative './accept_recommendations/accept_recommendations_request_builder'
require_relative './apply_decisions/apply_decisions_request_builder'
require_relative './batch_record_decisions/batch_record_decisions_request_builder'
require_relative './contacted_reviewers/contacted_reviewers_request_builder'
require_relative './contacted_reviewers/item/access_review_reviewer_item_request_builder'
require_relative './decisions/decisions_request_builder'
require_relative './decisions/item/access_review_instance_decision_item_item_request_builder'
require_relative './item'
require_relative './reset_decisions/reset_decisions_request_builder'
require_relative './send_reminder/send_reminder_request_builder'
require_relative './stages/item/access_review_stage_item_request_builder'
require_relative './stages/stages_request_builder'
require_relative './stop/stop_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module AccessReviews
            module Definitions
                module Item
                    module Instances
                        module Item
                            ## 
                            # Provides operations to manage the instances property of the microsoft.graph.accessReviewScheduleDefinition entity.
                            class AccessReviewInstanceItemRequestBuilder
                                
                                ## 
                                # Provides operations to call the acceptRecommendations method.
                                def accept_recommendations()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::AcceptRecommendations::AcceptRecommendationsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the applyDecisions method.
                                def apply_decisions()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::ApplyDecisions::ApplyDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the batchRecordDecisions method.
                                def batch_record_decisions()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::BatchRecordDecisions::BatchRecordDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the contactedReviewers property of the microsoft.graph.accessReviewInstance entity.
                                def contacted_reviewers()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::ContactedReviewers::ContactedReviewersRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the decisions property of the microsoft.graph.accessReviewInstance entity.
                                def decisions()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Decisions::DecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Path parameters for the request
                                @path_parameters
                                ## 
                                # The request adapter to use to execute the requests.
                                @request_adapter
                                ## 
                                # Provides operations to call the resetDecisions method.
                                def reset_decisions()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::ResetDecisions::ResetDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sendReminder method.
                                def send_reminder()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::SendReminder::SendReminderRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the stages property of the microsoft.graph.accessReviewInstance entity.
                                def stages()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Stages::StagesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stop method.
                                def stop()
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Stop::StopRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Url template to use to build the URL for the current request builder
                                @url_template
                                ## 
                                ## Instantiates a new AccessReviewInstanceItemRequestBuilder and sets the default values.
                                ## @param pathParameters Path parameters for the request
                                ## @param requestAdapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                    @url_template = "{+baseurl}/identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinition%2Did}/instances/{accessReviewInstance%2Did}{?%24select,%24expand}"
                                    @request_adapter = request_adapter
                                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                                end
                                ## 
                                ## Provides operations to manage the contactedReviewers property of the microsoft.graph.accessReviewInstance entity.
                                ## @param id Unique identifier of the item
                                ## @return a access_review_reviewer_item_request_builder
                                ## 
                                def contacted_reviewers_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["accessReviewReviewer%2Did"] = id
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::ContactedReviewers::Item::AccessReviewReviewerItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Provides operations to manage the decisions property of the microsoft.graph.accessReviewInstance entity.
                                ## @param id Unique identifier of the item
                                ## @return a access_review_instance_decision_item_item_request_builder
                                ## 
                                def decisions_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["accessReviewInstanceDecisionItem%2Did"] = id
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Decisions::Item::AccessReviewInstanceDecisionItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Delete navigation property instances for identityGovernance
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
                                ## If the accessReviewScheduleDefinition is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique resource under review in the accessReviewScheduleDefinition. If a review has multiple resources and multiple instances, each resource will have a unique instance for each recurrence.
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of access_review_instance
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AccessReviewInstance.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the navigation property instances in identityGovernance
                                ## @param body The request body
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of access_review_instance
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AccessReviewInstance.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Provides operations to manage the stages property of the microsoft.graph.accessReviewInstance entity.
                                ## @param id Unique identifier of the item
                                ## @return a access_review_stage_item_request_builder
                                ## 
                                def stages_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["accessReviewStage%2Did"] = id
                                    return MicrosoftGraph::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Stages::Item::AccessReviewStageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Delete navigation property instances for identityGovernance
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
                                ## If the accessReviewScheduleDefinition is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique resource under review in the accessReviewScheduleDefinition. If a review has multiple resources and multiple instances, each resource will have a unique instance for each recurrence.
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
                                ## Update the navigation property instances in identityGovernance
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
                                class AccessReviewInstanceItemRequestBuilderDeleteRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                end

                                ## 
                                # If the accessReviewScheduleDefinition is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique resource under review in the accessReviewScheduleDefinition. If a review has multiple resources and multiple instances, each resource will have a unique instance for each recurrence.
                                class AccessReviewInstanceItemRequestBuilderGetQueryParameters
                                    
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
                                class AccessReviewInstanceItemRequestBuilderGetRequestConfiguration
                                    
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
                                class AccessReviewInstanceItemRequestBuilderPatchRequestConfiguration
                                    
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
            end
        end
    end
end
