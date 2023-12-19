require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../models/upload_session'
require_relative '../../../../../../../../../groups'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../conversations'
require_relative '../../../../../../item'
require_relative '../../../../../threads'
require_relative '../../../../item'
require_relative '../../../posts'
require_relative '../../item'
require_relative '../attachments'
require_relative './create_upload_session'

module MicrosoftGraph
    module Groups
        module Item
            module Conversations
                module Item
                    module Threads
                        module Item
                            module Posts
                                module Item
                                    module Attachments
                                        module CreateUploadSession
                                            ## 
                                            # Provides operations to call the createUploadSession method.
                                            class CreateUploadSessionRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                
                                                ## 
                                                ## Instantiates a new CreateUploadSessionRequestBuilder and sets the default values.
                                                ## @param path_parameters Path parameters for the request
                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                ## @return a void
                                                ## 
                                                def initialize(path_parameters, request_adapter)
                                                    super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/conversations/{conversation%2Did}/threads/{conversationThread%2Did}/posts/{post%2Did}/attachments/createUploadSession")
                                                end
                                                ## 
                                                ## Create an upload session that allows an app to iteratively upload ranges of a file, so as to attach the file to the specified Outlook item. The item can be a message or event. Use this approach to attach a file if the file size is between 3 MB and 150 MB. To attach a file that's smaller than 3 MB, do a POST operation on the attachments navigation property of the Outlook item; see how to do this for a message or for an event. As part of the response, this action returns an upload URL that you can use in subsequent sequential PUT queries. Request headers for each PUT operation let you specify the exact range of bytes to be uploaded. This allows transfer to be resumed, in case the network connection is dropped during upload. The following are the steps to attach a file to an Outlook item using an upload session: See attach large files to Outlook messages or events for an example.
                                                ## @param body The request body
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of upload_session
                                                ## 
                                                def post(body, request_configuration=nil)
                                                    raise StandardError, 'body cannot be null' if body.nil?
                                                    request_info = self.to_post_request_information(
                                                        body, request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::UploadSession.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Create an upload session that allows an app to iteratively upload ranges of a file, so as to attach the file to the specified Outlook item. The item can be a message or event. Use this approach to attach a file if the file size is between 3 MB and 150 MB. To attach a file that's smaller than 3 MB, do a POST operation on the attachments navigation property of the Outlook item; see how to do this for a message or for an event. As part of the response, this action returns an upload URL that you can use in subsequent sequential PUT queries. Request headers for each PUT operation let you specify the exact range of bytes to be uploaded. This allows transfer to be resumed, in case the network connection is dropped during upload. The following are the steps to attach a file to an Outlook item using an upload session: See attach large files to Outlook messages or events for an example.
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
                                                ## @return a create_upload_session_request_builder
                                                ## 
                                                def with_url(raw_url)
                                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                    return CreateUploadSessionRequestBuilder.new(raw_url, @request_adapter)
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
