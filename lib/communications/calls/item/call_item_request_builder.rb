require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/call'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../communications'
require_relative '../calls'
require_relative './add_large_gallery_view/add_large_gallery_view_request_builder'
require_relative './answer/answer_request_builder'
require_relative './audio_routing_groups/audio_routing_groups_request_builder'
require_relative './cancel_media_processing/cancel_media_processing_request_builder'
require_relative './change_screen_sharing_role/change_screen_sharing_role_request_builder'
require_relative './content_sharing_sessions/content_sharing_sessions_request_builder'
require_relative './item'
require_relative './keep_alive/keep_alive_request_builder'
require_relative './mute/mute_request_builder'
require_relative './operations/operations_request_builder'
require_relative './participants/participants_request_builder'
require_relative './play_prompt/play_prompt_request_builder'
require_relative './record_response/record_response_request_builder'
require_relative './redirect/redirect_request_builder'
require_relative './reject/reject_request_builder'
require_relative './send_dtmf_tones/send_dtmf_tones_request_builder'
require_relative './subscribe_to_tone/subscribe_to_tone_request_builder'
require_relative './transfer/transfer_request_builder'
require_relative './unmute/unmute_request_builder'
require_relative './update_recording_status/update_recording_status_request_builder'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                ## 
                # Provides operations to manage the calls property of the microsoft.graph.cloudCommunications entity.
                class CallItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to call the addLargeGalleryView method.
                    def add_large_gallery_view()
                        return MicrosoftGraph::Communications::Calls::Item::AddLargeGalleryView::AddLargeGalleryViewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the answer method.
                    def answer()
                        return MicrosoftGraph::Communications::Calls::Item::Answer::AnswerRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the audioRoutingGroups property of the microsoft.graph.call entity.
                    def audio_routing_groups()
                        return MicrosoftGraph::Communications::Calls::Item::AudioRoutingGroups::AudioRoutingGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the cancelMediaProcessing method.
                    def cancel_media_processing()
                        return MicrosoftGraph::Communications::Calls::Item::CancelMediaProcessing::CancelMediaProcessingRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the changeScreenSharingRole method.
                    def change_screen_sharing_role()
                        return MicrosoftGraph::Communications::Calls::Item::ChangeScreenSharingRole::ChangeScreenSharingRoleRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the contentSharingSessions property of the microsoft.graph.call entity.
                    def content_sharing_sessions()
                        return MicrosoftGraph::Communications::Calls::Item::ContentSharingSessions::ContentSharingSessionsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the keepAlive method.
                    def keep_alive()
                        return MicrosoftGraph::Communications::Calls::Item::KeepAlive::KeepAliveRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the mute method.
                    def mute()
                        return MicrosoftGraph::Communications::Calls::Item::Mute::MuteRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the operations property of the microsoft.graph.call entity.
                    def operations()
                        return MicrosoftGraph::Communications::Calls::Item::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the participants property of the microsoft.graph.call entity.
                    def participants()
                        return MicrosoftGraph::Communications::Calls::Item::Participants::ParticipantsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the playPrompt method.
                    def play_prompt()
                        return MicrosoftGraph::Communications::Calls::Item::PlayPrompt::PlayPromptRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the recordResponse method.
                    def record_response()
                        return MicrosoftGraph::Communications::Calls::Item::RecordResponse::RecordResponseRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the redirect method.
                    def redirect()
                        return MicrosoftGraph::Communications::Calls::Item::Redirect::RedirectRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the reject method.
                    def reject()
                        return MicrosoftGraph::Communications::Calls::Item::Reject::RejectRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the sendDtmfTones method.
                    def send_dtmf_tones()
                        return MicrosoftGraph::Communications::Calls::Item::SendDtmfTones::SendDtmfTonesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the subscribeToTone method.
                    def subscribe_to_tone()
                        return MicrosoftGraph::Communications::Calls::Item::SubscribeToTone::SubscribeToToneRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the transfer method.
                    def transfer()
                        return MicrosoftGraph::Communications::Calls::Item::Transfer::TransferRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the unmute method.
                    def unmute()
                        return MicrosoftGraph::Communications::Calls::Item::Unmute::UnmuteRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the updateRecordingStatus method.
                    def update_recording_status()
                        return MicrosoftGraph::Communications::Calls::Item::UpdateRecordingStatus::UpdateRecordingStatusRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new CallItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/communications/calls/{call%2Did}{?%24expand,%24select}")
                    end
                    ## 
                    ## Delete or hang up an active call. For group calls, this will only delete your call leg and the underlying group call will still continue.
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
                    ## Retrieve the properties and relationships of a call object.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of call
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Call.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property calls in communications
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of call
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Call.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete or hang up an active call. For group calls, this will only delete your call leg and the underlying group call will still continue.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = '{+baseurl}/communications/calls/{call%2Did}'
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Retrieve the properties and relationships of a call object.
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
                    ## Update the navigation property calls in communications
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
                        request_info.url_template = '{+baseurl}/communications/calls/{call%2Did}'
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a call_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return CallItemRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Retrieve the properties and relationships of a call object.
                    class CallItemRequestBuilderGetQueryParameters
                        
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
