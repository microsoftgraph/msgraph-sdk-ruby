require 'microsoft_kiota_abstractions'
require_relative '../models/directory_role_template'
require_relative '../models/directory_role_template_collection_response'
require_relative '../models/o_data_errors/o_data_error'
require_relative './count/count_request_builder'
require_relative './directory_role_templates'
require_relative './get_available_extension_properties/get_available_extension_properties_request_builder'
require_relative './get_by_ids/get_by_ids_request_builder'
require_relative './validate_properties/validate_properties_request_builder'

module MicrosoftGraph::DirectoryRoleTemplates
    ## 
    # Provides operations to manage the collection of directoryRoleTemplate entities.
    class DirectoryRoleTemplatesRequestBuilder
        
        ## 
        # Provides operations to count the resources in the collection.
        def count()
            return MicrosoftGraph::DirectoryRoleTemplates::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getAvailableExtensionProperties method.
        def get_available_extension_properties()
            return MicrosoftGraph::DirectoryRoleTemplates::GetAvailableExtensionProperties::GetAvailableExtensionPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getByIds method.
        def get_by_ids()
            return MicrosoftGraph::DirectoryRoleTemplates::GetByIds::GetByIdsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to call the validateProperties method.
        def validate_properties()
            return MicrosoftGraph::DirectoryRoleTemplates::ValidateProperties::ValidatePropertiesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new DirectoryRoleTemplatesRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/directoryRoleTemplates{?%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Retrieve a list of directoryRoleTemplate objects.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of directory_role_template_collection_response
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DirectoryRoleTemplateCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Add new entity to directoryRoleTemplates
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of directory_role_template
        ## 
        def post(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_post_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DirectoryRoleTemplate.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Retrieve a list of directoryRoleTemplate objects.
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
        ## Add new entity to directoryRoleTemplates
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end

        ## 
        # Retrieve a list of directoryRoleTemplate objects.
        class DirectoryRoleTemplatesRequestBuilderGetQueryParameters
            
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
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
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
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DirectoryRoleTemplatesRequestBuilderGetRequestConfiguration
            
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
        class DirectoryRoleTemplatesRequestBuilderPostRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
