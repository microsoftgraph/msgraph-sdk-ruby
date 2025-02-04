require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/learning_provider'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../employee_experience'
require_relative '../learning_providers'
require_relative './item'
require_relative './learning_contents/learning_contents_request_builder'
require_relative './learning_contents_with_external_id/learning_contents_with_external_id_request_builder'
require_relative './learning_course_activities/learning_course_activities_request_builder'
require_relative './learning_course_activities_with_externalcourse_activity_id/learning_course_activities_with_externalcourse_activity_id_request_builder'

module MicrosoftGraph
    module EmployeeExperience
        module LearningProviders
            module Item
                ## 
                # Provides operations to manage the learningProviders property of the microsoft.graph.employeeExperience entity.
                class LearningProviderItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the learningContents property of the microsoft.graph.learningProvider entity.
                    def learning_contents()
                        return MicrosoftGraph::EmployeeExperience::LearningProviders::Item::LearningContents::LearningContentsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the learningCourseActivities property of the microsoft.graph.learningProvider entity.
                    def learning_course_activities()
                        return MicrosoftGraph::EmployeeExperience::LearningProviders::Item::LearningCourseActivities::LearningCourseActivitiesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new LearningProviderItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/employeeExperience/learningProviders/{learningProvider%2Did}{?%24expand,%24select}")
                    end
                    ## 
                    ## Delete a learningProvider resource and remove its registration in Viva Learning for a tenant.
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
                    ## Read the properties and relationships of a learningProvider object.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of learning_provider
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::LearningProvider.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the learningContents property of the microsoft.graph.learningProvider entity.
                    ## @param external_id Alternate key of learningContent
                    ## @return a learning_contents_with_external_id_request_builder
                    ## 
                    def learning_contents_with_external_id(external_id)
                        raise StandardError, 'external_id cannot be null' if external_id.nil?
                        return LearningContentsWithExternalIdRequestBuilder.new(@path_parameters, @request_adapter, externalId)
                    end
                    ## 
                    ## Provides operations to manage the learningCourseActivities property of the microsoft.graph.learningProvider entity.
                    ## @param externalcourse_activity_id Alternate key of learningCourseActivity
                    ## @return a learning_course_activities_with_externalcourse_activity_id_request_builder
                    ## 
                    def learning_course_activities_with_externalcourse_activity_id(externalcourse_activity_id)
                        raise StandardError, 'externalcourse_activity_id cannot be null' if externalcourse_activity_id.nil?
                        return LearningCourseActivitiesWithExternalcourseActivityIdRequestBuilder.new(@path_parameters, @request_adapter, externalcourseActivityId)
                    end
                    ## 
                    ## Update the properties of a learningProvider object.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of learning_provider
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::LearningProvider.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete a learningProvider resource and remove its registration in Viva Learning for a tenant.
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
                    ## Read the properties and relationships of a learningProvider object.
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
                    ## Update the properties of a learningProvider object.
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
                    ## @return a learning_provider_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return LearningProviderItemRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Read the properties and relationships of a learningProvider object.
                    class LearningProviderItemRequestBuilderGetQueryParameters
                        
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
