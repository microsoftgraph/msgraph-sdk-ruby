require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/education_category'
require_relative '../../../../../../models/education_category_collection_response'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../education'
require_relative '../../../../classes'
require_relative '../../../item'
require_relative '../../assignments'
require_relative '../item'
require_relative './categories'
require_relative './count/count_request_builder'
require_relative './delta/delta_request_builder'
require_relative './item/education_category_item_request_builder'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Education
        module Classes
            module Item
                module Assignments
                    module Item
                        module Categories
                            ## 
                            # Provides operations to manage the categories property of the microsoft.graph.educationAssignment entity.
                            class CategoriesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to count the resources in the collection.
                                def count()
                                    return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Categories::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the delta method.
                                def delta()
                                    return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Categories::Delta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the collection of educationRoot entities.
                                def ref()
                                    return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Categories::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Gets an item from the MicrosoftGraph.education.classes.item.assignments.item.categories.item collection
                                ## @param education_category_id Unique identifier of the item
                                ## @return a education_category_item_request_builder
                                ## 
                                def by_education_category_id(education_category_id)
                                    raise StandardError, 'education_category_id cannot be null' if education_category_id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["educationCategory%2Did"] = education_category_id
                                    return MicrosoftGraph::Education::Classes::Item::Assignments::Item::Categories::Item::EducationCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new CategoriesRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/education/classes/{educationClass%2Did}/assignments/{educationAssignment%2Did}/categories{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                end
                                ## 
                                ## List all the categories associated with an assignment. Only teachers, students, and applications with application permissions can perform this operation. This API is available in the following national cloud deployments.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of education_category_collection_response
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationCategoryCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Add one or more existing educationCategory objects to the specified  educationAssignment. Only teachers can perform this operation. This API is available in the following national cloud deployments.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of education_category
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationCategory.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## List all the categories associated with an assignment. Only teachers, students, and applications with application permissions can perform this operation. This API is available in the following national cloud deployments.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                                ## Add one or more existing educationCategory objects to the specified  educationAssignment. Only teachers can perform this operation. This API is available in the following national cloud deployments.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_post_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :POST
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a categories_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return CategoriesRequestBuilder.new(raw_url, @request_adapter)
                                end

                                ## 
                                # List all the categories associated with an assignment. Only teachers, students, and applications with application permissions can perform this operation. This API is available in the following national cloud deployments.
                                class CategoriesRequestBuilderGetQueryParameters
                                    
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
