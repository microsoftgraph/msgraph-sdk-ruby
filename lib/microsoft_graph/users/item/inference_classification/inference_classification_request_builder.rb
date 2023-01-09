require 'microsoft_kiota_abstractions'
require_relative '../../../models/inference_classification'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../users'
require_relative '../item'
require_relative './inference_classification'
require_relative './overrides/item/inference_classification_override_item_request_builder'
require_relative './overrides/overrides_request_builder'

module MicrosoftGraph::Users::Item::InferenceClassification
    ## 
    # Provides operations to manage the inferenceClassification property of the microsoft.graph.user entity.
    class InferenceClassificationRequestBuilder
        
        ## 
        # Provides operations to manage the overrides property of the microsoft.graph.inferenceClassification entity.
        def overrides()
            return MicrosoftGraph::Users::Item::InferenceClassification::Overrides::OverridesRequestBuilder.new(@path_parameters, @request_adapter)
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
        ## Instantiates a new InferenceClassificationRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/users/{user%2Did}/inferenceClassification{?%24select}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of inference_classification
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::InferenceClassification.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the overrides property of the microsoft.graph.inferenceClassification entity.
        ## @param id Unique identifier of the item
        ## @return a inference_classification_override_item_request_builder
        ## 
        def overrides_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["inferenceClassificationOverride%2Did"] = id
            return MicrosoftGraph::Users::Item::InferenceClassification::Overrides::Item::InferenceClassificationOverrideItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the navigation property inferenceClassification in users
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of inference_classification
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::InferenceClassification.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
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
        ## Update the navigation property inferenceClassification in users
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
        # Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
        class InferenceClassificationRequestBuilderGetQueryParameters
            
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
                    when "select"
                        return "%24select"
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class InferenceClassificationRequestBuilderGetRequestConfiguration
            
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
        class InferenceClassificationRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
