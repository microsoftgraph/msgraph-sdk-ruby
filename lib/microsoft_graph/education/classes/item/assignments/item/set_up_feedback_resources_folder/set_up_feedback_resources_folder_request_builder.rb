require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/education_assignment'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../education'
require_relative '../../../../classes'
require_relative '../../../item'
require_relative '../../assignments'
require_relative '../item'
require_relative './set_up_feedback_resources_folder'

module MicrosoftGraph::Education::Classes::Item::Assignments::Item::SetUpFeedbackResourcesFolder
    ## 
    # Provides operations to call the setUpFeedbackResourcesFolder method.
    class SetUpFeedbackResourcesFolderRequestBuilder
        
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
        ## Instantiates a new SetUpFeedbackResourcesFolderRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/education/classes/{educationClass%2Did}/assignments/{educationAssignment%2Did}/microsoft.graph.setUpFeedbackResourcesFolder"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Create a SharePoint folder to upload feedback files for a given educationSubmission. The teacher determines the resources to upload in the feedback resources folder of a submission.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_post_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :POST
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Create a SharePoint folder to upload feedback files for a given educationSubmission. The teacher determines the resources to upload in the feedback resources folder of a submission.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of education_assignment
        ## 
        def post(request_configuration=nil)
            request_info = self.create_post_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationAssignment.create_from_discriminator_value(pn) }, error_mapping)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class SetUpFeedbackResourcesFolderRequestBuilderPostRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
