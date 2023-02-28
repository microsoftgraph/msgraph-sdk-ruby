require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/education_submission'
require_relative '../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../education'
require_relative '../../../../../../classes'
require_relative '../../../../../item'
require_relative '../../../../assignments'
require_relative '../../../item'
require_relative '../../submissions'
require_relative '../item'
require_relative './set_up_resources_folder'

module MicrosoftGraph
    module Education
        module Classes
            module Item
                module Assignments
                    module Item
                        module Submissions
                            module Item
                                module SetUpResourcesFolder
                                    ## 
                                    # Provides operations to call the setUpResourcesFolder method.
                                    class SetUpResourcesFolderRequestBuilder
                                        
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
                                        ## Instantiates a new SetUpResourcesFolderRequestBuilder and sets the default values.
                                        ## @param pathParameters Path parameters for the request
                                        ## @param requestAdapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                            @url_template = "{+baseurl}/education/classes/{educationClass%2Did}/assignments/{educationAssignment%2Did}/submissions/{educationSubmission%2Did}/setUpResourcesFolder"
                                            @request_adapter = request_adapter
                                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                                        end
                                        ## 
                                        ## Trigger the creation of the SharePoint resource folder where all file-based resources (Word, Excel, and so on) should be uploaded for a given submission. Only teachers and students can perform this operation. Note that files must be located in this folder in order to be added as resources. Only a student in the class can determine what files to upload in a given submission-level resource folder. 
                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of education_submission
                                        ## 
                                        def post(request_configuration=nil)
                                            request_info = self.to_post_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EducationSubmission.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Trigger the creation of the SharePoint resource folder where all file-based resources (Word, Excel, and so on) should be uploaded for a given submission. Only teachers and students can perform this operation. Note that files must be located in this folder in order to be added as resources. Only a student in the class can determine what files to upload in a given submission-level resource folder. 
                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a request_information
                                        ## 
                                        def to_post_request_information(request_configuration=nil)
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
                                        # Configuration for the request such as headers, query parameters, and middleware options.
                                        class SetUpResourcesFolderRequestBuilderPostRequestConfiguration
                                            
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
end
