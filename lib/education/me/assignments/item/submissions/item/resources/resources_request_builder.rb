require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/education_submission_resource'
require_relative '../../../../../../../models/education_submission_resource_collection_response'
require_relative '../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../education'
require_relative '../../../../../me'
require_relative '../../../../assignments'
require_relative '../../../item'
require_relative '../../submissions'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/education_submission_resource_item_request_builder'
require_relative './resources'

module MicrosoftGraph
    module Education
        module Me
            module Assignments
                module Item
                    module Submissions
                        module Item
                            module Resources
                                ## 
                                # Provides operations to manage the resources property of the microsoft.graph.educationSubmission entity.
                                class ResourcesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to count the resources in the collection.
                                    def count()
                                        return MicrosoftGraph::Education::Me::Assignments::Item::Submissions::Item::Resources::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Provides operations to manage the resources property of the microsoft.graph.educationSubmission entity.
                                    ## @param education_submission_resource_id The unique identifier of educationSubmissionResource
                                    ## @return a education_submission_resource_item_request_builder
                                    ## 
                                    def by_education_submission_resource_id(education_submission_resource_id)
                                        raise StandardError, 'education_submission_resource_id cannot be null' if education_submission_resource_id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["educationSubmissionResource%2Did"] = education_submission_resource_id
                                        return MicrosoftGraph::Education::Me::Assignments::Item::Submissions::Item::Resources::Item::EducationSubmissionResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new ResourcesRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/education/me/assignments/{educationAssignment%2Did}/submissions/{educationSubmission%2Did}/resources{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                                    end
                                    ## 
                                    ## List the resources associated with a submission. Only teachers, students, and applications with application permissions can perform this operation. The educationSubmissionResource object is a wrapper around the actual resource object the student is working on. The wrapper also includes a pointer to the resources on the assignment if this resource was copied from the assignment during the assign process. These resources are the working copy of the assignment. The submittedResources are the resources that were officially submitted for grading.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of education_submission_resource_collection_response
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationSubmissionResourceCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Add an educationSubmissionResource to a submission resource list. Only teachers and students can perform this operation. The operation will not succeed if the allowStudentsToAddResources flag is not set to true. To create a new file-based resource, upload the file to the resources folder associated with the submission. If the file doesn't exist or is not in that folder, the POST request will fail.
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of education_submission_resource
                                    ## 
                                    def post(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_post_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationSubmissionResource.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## List the resources associated with a submission. Only teachers, students, and applications with application permissions can perform this operation. The educationSubmissionResource object is a wrapper around the actual resource object the student is working on. The wrapper also includes a pointer to the resources on the assignment if this resource was copied from the assignment during the assign process. These resources are the working copy of the assignment. The submittedResources are the resources that were officially submitted for grading.
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
                                    ## Add an educationSubmissionResource to a submission resource list. Only teachers and students can perform this operation. The operation will not succeed if the allowStudentsToAddResources flag is not set to true. To create a new file-based resource, upload the file to the resources folder associated with the submission. If the file doesn't exist or is not in that folder, the POST request will fail.
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
                                        request_info.url_template = @url_template
                                        request_info.path_parameters = @path_parameters
                                        request_info.http_method = :POST
                                        request_info.headers.try_add('Accept', 'application/json')
                                        return request_info
                                    end
                                    ## 
                                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                    ## @param raw_url The raw URL to use for the request builder.
                                    ## @return a resources_request_builder
                                    ## 
                                    def with_url(raw_url)
                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                        return ResourcesRequestBuilder.new(raw_url, @request_adapter)
                                    end

                                    ## 
                                    # List the resources associated with a submission. Only teachers, students, and applications with application permissions can perform this operation. The educationSubmissionResource object is a wrapper around the actual resource object the student is working on. The wrapper also includes a pointer to the resources on the assignment if this resource was copied from the assignment during the assign process. These resources are the working copy of the assignment. The submittedResources are the resources that were officially submitted for grading.
                                    class ResourcesRequestBuilderGetQueryParameters
                                        
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
            end
        end
    end
end
