require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/education_submission'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../education'
require_relative '../../../../../classes'
require_relative '../../../../item'
require_relative '../../../assignments'
require_relative '../../item'
require_relative '../submissions'
require_relative './item'
require_relative './outcomes/item/education_outcome_item_request_builder'
require_relative './outcomes/outcomes_request_builder'
require_relative './reassign/reassign_request_builder'
require_relative './resources/item/education_submission_resource_item_request_builder'
require_relative './resources/resources_request_builder'
require_relative './return_escaped/return_request_builder'
require_relative './set_up_resources_folder/set_up_resources_folder_request_builder'
require_relative './submit/submit_request_builder'
require_relative './submitted_resources/item/education_submission_resource_item_request_builder'
require_relative './submitted_resources/submitted_resources_request_builder'
require_relative './unsubmit/unsubmit_request_builder'

module MicrosoftGraph
    module Education
        module Classes
            module Item
                module Assignments
                    module Item
                        module Submissions
                            module Item
                                ## 
                                # Provides operations to manage the submissions property of the microsoft.graph.educationAssignment entity.
                                class EducationSubmissionItemRequestBuilder
                                    
                                    ## 
                                    # Provides operations to manage the outcomes property of the microsoft.graph.educationSubmission entity.
                                    def outcomes()
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::Outcomes::OutcomesRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Path parameters for the request
                                    @path_parameters
                                    ## 
                                    # Provides operations to call the reassign method.
                                    def reassign()
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::Reassign::ReassignRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # The request adapter to use to execute the requests.
                                    @request_adapter
                                    ## 
                                    # Provides operations to manage the resources property of the microsoft.graph.educationSubmission entity.
                                    def resources()
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::Resources::ResourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the return method.
                                    def return_escaped()
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::Return_escaped::ReturnRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the setUpResourcesFolder method.
                                    def set_up_resources_folder()
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::SetUpResourcesFolder::SetUpResourcesFolderRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the submit method.
                                    def submit()
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::Submit::SubmitRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the submittedResources property of the microsoft.graph.educationSubmission entity.
                                    def submitted_resources()
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::SubmittedResources::SubmittedResourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the unsubmit method.
                                    def unsubmit()
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::Unsubmit::UnsubmitRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Url template to use to build the URL for the current request builder
                                    @url_template
                                    ## 
                                    ## Instantiates a new EducationSubmissionItemRequestBuilder and sets the default values.
                                    ## @param pathParameters Path parameters for the request
                                    ## @param requestAdapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                        @url_template = "{+baseurl}/education/classes/{educationClass%2Did}/assignments/{educationAssignment%2Did}/submissions/{educationSubmission%2Did}{?%24select,%24expand}"
                                        @request_adapter = request_adapter
                                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                                    end
                                    ## 
                                    ## Delete navigation property submissions for education
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
                                    ## Once published, there is a submission object for each student representing their work and grade.  Read-only. Nullable.
                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of education_submission
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationSubmission.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Provides operations to manage the outcomes property of the microsoft.graph.educationSubmission entity.
                                    ## @param id Unique identifier of the item
                                    ## @return a education_outcome_item_request_builder
                                    ## 
                                    def outcomes_by_id(id)
                                        raise StandardError, 'id cannot be null' if id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["educationOutcome%2Did"] = id
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::Outcomes::Item::EducationOutcomeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Update the navigation property submissions in education
                                    ## @param body The request body
                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of education_submission
                                    ## 
                                    def patch(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_patch_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationSubmission.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Provides operations to manage the resources property of the microsoft.graph.educationSubmission entity.
                                    ## @param id Unique identifier of the item
                                    ## @return a education_submission_resource_item_request_builder
                                    ## 
                                    def resources_by_id(id)
                                        raise StandardError, 'id cannot be null' if id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["educationSubmissionResource%2Did"] = id
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::Resources::Item::EducationSubmissionResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Provides operations to manage the submittedResources property of the microsoft.graph.educationSubmission entity.
                                    ## @param id Unique identifier of the item
                                    ## @return a education_submission_resource_item_request_builder
                                    ## 
                                    def submitted_resources_by_id(id)
                                        raise StandardError, 'id cannot be null' if id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["educationSubmissionResource%2Did"] = id
                                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Submissions::Item::SubmittedResources::Item::EducationSubmissionResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Delete navigation property submissions for education
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
                                    ## Once published, there is a submission object for each student representing their work and grade.  Read-only. Nullable.
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
                                    ## Update the navigation property submissions in education
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
                                    class EducationSubmissionItemRequestBuilderDeleteRequestConfiguration
                                        
                                        ## 
                                        # Request headers
                                        attr_accessor :headers
                                        ## 
                                        # Request options
                                        attr_accessor :options
                                    end

                                    ## 
                                    # Once published, there is a submission object for each student representing their work and grade.  Read-only. Nullable.
                                    class EducationSubmissionItemRequestBuilderGetQueryParameters
                                        
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
                                    class EducationSubmissionItemRequestBuilderGetRequestConfiguration
                                        
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
                                    class EducationSubmissionItemRequestBuilderPatchRequestConfiguration
                                        
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
end
