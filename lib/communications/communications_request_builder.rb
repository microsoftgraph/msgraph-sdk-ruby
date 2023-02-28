require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/cloud_communications'
require_relative '../models/o_data_errors/o_data_error'
require_relative './call_records/call_records_request_builder'
require_relative './call_records/item/call_record_item_request_builder'
require_relative './calls/calls_request_builder'
require_relative './calls/item/call_item_request_builder'
require_relative './communications'
require_relative './get_presences_by_user_id/get_presences_by_user_id_request_builder'
require_relative './online_meetings/item/online_meeting_item_request_builder'
require_relative './online_meetings/online_meetings_request_builder'
require_relative './presences/item/presence_item_request_builder'
require_relative './presences/presences_request_builder'

module MicrosoftGraph
    module Communications
        ## 
        # Provides operations to manage the cloudCommunications singleton.
        class CommunicationsRequestBuilder
            
            ## 
            # Provides operations to manage the callRecords property of the microsoft.graph.cloudCommunications entity.
            def call_records()
                return MicrosoftGraph::Communications::CallRecords::CallRecordsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the calls property of the microsoft.graph.cloudCommunications entity.
            def calls()
                return MicrosoftGraph::Communications::Calls::CallsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getPresencesByUserId method.
            def get_presences_by_user_id()
                return MicrosoftGraph::Communications::GetPresencesByUserId::GetPresencesByUserIdRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the onlineMeetings property of the microsoft.graph.cloudCommunications entity.
            def online_meetings()
                return MicrosoftGraph::Communications::OnlineMeetings::OnlineMeetingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # Provides operations to manage the presences property of the microsoft.graph.cloudCommunications entity.
            def presences()
                return MicrosoftGraph::Communications::Presences::PresencesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            ## Provides operations to manage the callRecords property of the microsoft.graph.cloudCommunications entity.
            ## @param id Unique identifier of the item
            ## @return a call_record_item_request_builder
            ## 
            def call_records_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["callRecord%2Did"] = id
                return MicrosoftGraph::Communications::CallRecords::Item::CallRecordItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the calls property of the microsoft.graph.cloudCommunications entity.
            ## @param id Unique identifier of the item
            ## @return a call_item_request_builder
            ## 
            def calls_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["call%2Did"] = id
                return MicrosoftGraph::Communications::Calls::Item::CallItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new CommunicationsRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/communications{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Get communications
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of cloud_communications
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::CloudCommunications.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the onlineMeetings property of the microsoft.graph.cloudCommunications entity.
            ## @param id Unique identifier of the item
            ## @return a online_meeting_item_request_builder
            ## 
            def online_meetings_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["onlineMeeting%2Did"] = id
                return MicrosoftGraph::Communications::OnlineMeetings::Item::OnlineMeetingItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update communications
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of cloud_communications
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::CloudCommunications.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the presences property of the microsoft.graph.cloudCommunications entity.
            ## @param id Unique identifier of the item
            ## @return a presence_item_request_builder
            ## 
            def presences_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["presence%2Did"] = id
                return MicrosoftGraph::Communications::Presences::Item::PresenceItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get communications
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
            ## Update communications
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
            # Get communications
            class CommunicationsRequestBuilderGetQueryParameters
                
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
            class CommunicationsRequestBuilderGetRequestConfiguration
                
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
            class CommunicationsRequestBuilderPatchRequestConfiguration
                
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
