require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/education_class'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../education'
require_relative '../classes'
require_relative './assignment_categories/assignment_categories_request_builder'
require_relative './assignment_categories/item/education_category_item_request_builder'
require_relative './assignment_defaults/assignment_defaults_request_builder'
require_relative './assignments/assignments_request_builder'
require_relative './assignments/item/education_assignment_item_request_builder'
require_relative './assignment_settings/assignment_settings_request_builder'
require_relative './group/group_request_builder'
require_relative './item'
require_relative './members/item/education_user_item_request_builder'
require_relative './members/members_request_builder'
require_relative './schools/item/education_school_item_request_builder'
require_relative './schools/schools_request_builder'
require_relative './teachers/item/education_user_item_request_builder'
require_relative './teachers/teachers_request_builder'

module MicrosoftGraph
    module Education
        module Classes
            module Item
                ## 
                # Provides operations to manage the classes property of the microsoft.graph.educationRoot entity.
                class EducationClassItemRequestBuilder
                    
                    ## 
                    # Provides operations to manage the assignmentCategories property of the microsoft.graph.educationClass entity.
                    def assignment_categories()
                        return MicrosoftGraph::Education::Classes::Item::AssignmentCategories::AssignmentCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the assignmentDefaults property of the microsoft.graph.educationClass entity.
                    def assignment_defaults()
                        return MicrosoftGraph::Education::Classes::Item::AssignmentDefaults::AssignmentDefaultsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the assignments property of the microsoft.graph.educationClass entity.
                    def assignments()
                        return MicrosoftGraph::Education::Classes::Item::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the assignmentSettings property of the microsoft.graph.educationClass entity.
                    def assignment_settings()
                        return MicrosoftGraph::Education::Classes::Item::AssignmentSettings::AssignmentSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the group property of the microsoft.graph.educationClass entity.
                    def group()
                        return MicrosoftGraph::Education::Classes::Item::Group::GroupRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the members property of the microsoft.graph.educationClass entity.
                    def members()
                        return MicrosoftGraph::Education::Classes::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to manage the schools property of the microsoft.graph.educationClass entity.
                    def schools()
                        return MicrosoftGraph::Education::Classes::Item::Schools::SchoolsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the teachers property of the microsoft.graph.educationClass entity.
                    def teachers()
                        return MicrosoftGraph::Education::Classes::Item::Teachers::TeachersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    ## Provides operations to manage the assignmentCategories property of the microsoft.graph.educationClass entity.
                    ## @param id Unique identifier of the item
                    ## @return a education_category_item_request_builder
                    ## 
                    def assignment_categories_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["educationCategory%2Did"] = id
                        return MicrosoftGraph::Education::Classes::Item::AssignmentCategories::Item::EducationCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the assignments property of the microsoft.graph.educationClass entity.
                    ## @param id Unique identifier of the item
                    ## @return a education_assignment_item_request_builder
                    ## 
                    def assignments_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["educationAssignment%2Did"] = id
                        return MicrosoftGraph::Education::Classes::Item::Assignments::Item::EducationAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new EducationClassItemRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/education/classes/{educationClass%2Did}{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Delete navigation property classes for education
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
                    ## Get classes from education
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of education_class
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationClass.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Gets an item from the MicrosoftGraph.education.classes.item.members.item collection
                    ## @param id Unique identifier of the item
                    ## @return a education_user_item_request_builder
                    ## 
                    def members_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["educationUser%2Did"] = id
                        return MicrosoftGraph::Education::Classes::Item::Members::Item::EducationUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Update the navigation property classes in education
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of education_class
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationClass.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the schools property of the microsoft.graph.educationClass entity.
                    ## @param id Unique identifier of the item
                    ## @return a education_school_item_request_builder
                    ## 
                    def schools_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["educationSchool%2Did"] = id
                        return MicrosoftGraph::Education::Classes::Item::Schools::Item::EducationSchoolItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Gets an item from the MicrosoftGraph.education.classes.item.teachers.item collection
                    ## @param id Unique identifier of the item
                    ## @return a education_user_item_request_builder
                    ## 
                    def teachers_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["educationUser%2Did"] = id
                        return MicrosoftGraph::Education::Classes::Item::Teachers::Item::EducationUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property classes for education
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
                    ## Get classes from education
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
                    ## Update the navigation property classes in education
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
                    class EducationClassItemRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end

                    ## 
                    # Get classes from education
                    class EducationClassItemRequestBuilderGetQueryParameters
                        
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
                    class EducationClassItemRequestBuilderGetRequestConfiguration
                        
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
                    class EducationClassItemRequestBuilderPatchRequestConfiguration
                        
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
