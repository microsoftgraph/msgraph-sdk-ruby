require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../users'
require_relative '../../item'
require_relative '../online_meetings'
require_relative './ibe4c23e921ad9fcaa5c959c34e393ba839c959ee578ec95fd69bc2d9aa0b2597'

module MicrosoftGraph
    module Users
        module Item
            module OnlineMeetings
                module Ibe4c23e921ad9fcaa5c959c34e393ba839c959ee578ec95fd69bc2d9aa0b2597
                    ## 
                    # Provides operations to call the getAllRecordings method.
                    class GetAllRecordingsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new GetAllRecordingsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimeRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/onlineMeetings/getAllRecordings(meetingOrganizerUserId='@meetingOrganizerUserId',startDateTime=@startDateTime,endDateTime=@endDateTime){?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top,endDateTime*,meetingOrganizerUserId*,startDateTime*}")
                        end
                        ## 
                        ## Get all recordings from scheduled onlineMeeting instances for which the specified user is the organizer. This API currently doesn't support getting call recordings from channel meetings. You can apply the delta function on getAllRecordings to synchronize and get callRecording resources as they're added for onlineMeeting instances organized by the specified user. The delta query supports both full synchronization and incremental synchronization. Full synchronization gets all the recordings for online meetings organized by the user. Incremental synchronization gets recordings that are added since the last synchronization. Typically, you perform an initial full synchronization, and then get incremental changes to that recording view periodically. Find more information in the delta query documentation. For more examples, see callRecording: delta. To learn more about using the Microsoft Teams export APIs to export content, see Export content with the Microsoft Teams export APIs.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of get_all_recordingsmeeting_organizer_user_id_meeting_organizer_user_id_with_start_date_time_with_end_date_timeget_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Users::Item::OnlineMeetings::Ibe4c23e921ad9fcaa5c959c34e393ba839c959ee578ec95fd69bc2d9aa0b2597::GetAllRecordingsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimegetResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Get all recordings from scheduled onlineMeeting instances for which the specified user is the organizer. This API currently doesn't support getting call recordings from channel meetings. You can apply the delta function on getAllRecordings to synchronize and get callRecording resources as they're added for onlineMeeting instances organized by the specified user. The delta query supports both full synchronization and incremental synchronization. Full synchronization gets all the recordings for online meetings organized by the user. Incremental synchronization gets recordings that are added since the last synchronization. Typically, you perform an initial full synchronization, and then get incremental changes to that recording view periodically. Find more information in the delta query documentation. For more examples, see callRecording: delta. To learn more about using the Microsoft Teams export APIs to export content, see Export content with the Microsoft Teams export APIs.
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
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a get_all_recordingsmeeting_organizer_user_id_meeting_organizer_user_id_with_start_date_time_with_end_date_time_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return GetAllRecordingsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimeRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Get all recordings from scheduled onlineMeeting instances for which the specified user is the organizer. This API currently doesn't support getting call recordings from channel meetings. You can apply the delta function on getAllRecordings to synchronize and get callRecording resources as they're added for onlineMeeting instances organized by the specified user. The delta query supports both full synchronization and incremental synchronization. Full synchronization gets all the recordings for online meetings organized by the user. Incremental synchronization gets recordings that are added since the last synchronization. Typically, you perform an initial full synchronization, and then get incremental changes to that recording view periodically. Find more information in the delta query documentation. For more examples, see callRecording: delta. To learn more about using the Microsoft Teams export APIs to export content, see Export content with the Microsoft Teams export APIs.
                        class GetAllRecordingsmeetingOrganizerUserIdMeetingOrganizerUserIdWithStartDateTimeWithEndDateTimeRequestBuilderGetQueryParameters
                            
                            ## 
                            # Include count of items
                            attr_accessor :count
                            ## 
                            # Usage: endDateTime=@endDateTime
                            attr_accessor :end_date_time
                            ## 
                            # Expand related entities
                            attr_accessor :expand
                            ## 
                            # Filter items by property values
                            attr_accessor :filter
                            ## 
                            # Usage: meetingOrganizerUserId='@meetingOrganizerUserId'
                            attr_accessor :meeting_organizer_user_id
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
                            # Usage: startDateTime=@startDateTime
                            attr_accessor :start_date_time
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
                                    when "end_date_time"
                                        return "endDateTime"
                                    when "expand"
                                        return "%24expand"
                                    when "filter"
                                        return "%24filter"
                                    when "meeting_organizer_user_id"
                                        return "meetingOrganizerUserId"
                                    when "orderby"
                                        return "%24orderby"
                                    when "search"
                                        return "%24search"
                                    when "select"
                                        return "%24select"
                                    when "skip"
                                        return "%24skip"
                                    when "start_date_time"
                                        return "startDateTime"
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
