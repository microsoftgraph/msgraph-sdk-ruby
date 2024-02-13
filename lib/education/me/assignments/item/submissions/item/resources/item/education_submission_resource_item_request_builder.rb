require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/education_submission_resource'
require_relative '../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../education'
require_relative '../../../../../../me'
require_relative '../../../../../assignments'
require_relative '../../../../item'
require_relative '../../../submissions'
require_relative '../../item'
require_relative '../resources'
require_relative './item'

module MicrosoftGraph
    module Education
        module Me
            module Assignments
                module Item
                    module Submissions
                        module Item
                            module Resources
                                module Item
                                    ## 
                                    # Provides operations to manage the resources property of the microsoft.graph.educationSubmission entity.
                                    class EducationSubmissionResourceItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        ## Instantiates a new EducationSubmissionResourceItemRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/education/me/assignments/{educationAssignment%2Did}/submissions/{educationSubmission%2Did}/resources/{educationSubmissionResource%2Did}{?%24expand,%24select}")
                                        end
                                        ## 
                                        ## Delete an educationSubmissionResource from the submission. Only teachers and students can perform this operation. If the resource was copied from the assignment, a new copy of the resource will be created after the current copy is deleted. This allows you to 'reset' the resource to its original state. If the resource wasn't copied from the assignment but was added from the student, the resource is deleted.
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
                                        ## Retrieve the properties of a specific resource associated with a submission. Only teachers, students, and applications with application permissions can perform this operation. This resource is in the 'working' resource list and should be considered work in process by a student. This resource is wrapped with a possible pointer back to the assignment resource if it was copied from the assignment.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of education_submission_resource
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationSubmissionResource.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Update the navigation property resources in education
                                        ## @param body The request body
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of education_submission_resource
                                        ## 
                                        def patch(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = self.to_patch_request_information(
                                                body, request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationSubmissionResource.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Delete an educationSubmissionResource from the submission. Only teachers and students can perform this operation. If the resource was copied from the assignment, a new copy of the resource will be created after the current copy is deleted. This allows you to 'reset' the resource to its original state. If the resource wasn't copied from the assignment but was added from the student, the resource is deleted.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a request_information
                                        ## 
                                        def to_delete_request_information(request_configuration=nil)
                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                            unless request_configuration.nil?
                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                request_info.add_request_options(request_configuration.options)
                                            end
                                            request_info.url_template = '{+baseurl}/education/me/assignments/{educationAssignment%2Did}/submissions/{educationSubmission%2Did}/resources/{educationSubmissionResource%2Did}'
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :DELETE
                                            request_info.headers.try_add('Accept', 'application/json')
                                            return request_info
                                        end
                                        ## 
                                        ## Retrieve the properties of a specific resource associated with a submission. Only teachers, students, and applications with application permissions can perform this operation. This resource is in the 'working' resource list and should be considered work in process by a student. This resource is wrapped with a possible pointer back to the assignment resource if it was copied from the assignment.
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
                                        ## Update the navigation property resources in education
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
                                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                            request_info.url_template = '{+baseurl}/education/me/assignments/{educationAssignment%2Did}/submissions/{educationSubmission%2Did}/resources/{educationSubmissionResource%2Did}'
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :PATCH
                                            request_info.headers.try_add('Accept', 'application/json')
                                            return request_info
                                        end
                                        ## 
                                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                        ## @param raw_url The raw URL to use for the request builder.
                                        ## @return a education_submission_resource_item_request_builder
                                        ## 
                                        def with_url(raw_url)
                                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                            return EducationSubmissionResourceItemRequestBuilder.new(raw_url, @request_adapter)
                                        end

                                        ## 
                                        # Retrieve the properties of a specific resource associated with a submission. Only teachers, students, and applications with application permissions can perform this operation. This resource is in the 'working' resource list and should be considered work in process by a student. This resource is wrapped with a possible pointer back to the assignment resource if it was copied from the assignment.
                                        class EducationSubmissionResourceItemRequestBuilderGetQueryParameters
                                            
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
                end
            end
        end
    end
end
