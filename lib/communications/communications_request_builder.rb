require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/cloud_communications'
require_relative '../models/o_data_errors_o_data_error'
require_relative './call_records/call_records_request_builder'
require_relative './calls/calls_request_builder'
require_relative './communications'
require_relative './get_presences_by_user_id/get_presences_by_user_id_request_builder'
require_relative './online_meetings/online_meetings_request_builder'
require_relative './presences/presences_request_builder'

module MicrosoftGraph
    module Communications
        ## 
        # Provides operations to manage the cloudCommunications singleton.
        class CommunicationsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
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
            # Provides operations to manage the presences property of the microsoft.graph.cloudCommunications entity.
            def presences()
                return MicrosoftGraph::Communications::Presences::PresencesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new CommunicationsRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/communications{?%24expand,%24select}")
            end
            ## 
            ## Get communications
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of cloud_communications
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::CloudCommunications.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update communications
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of cloud_communications
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::CloudCommunications.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get communications
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
            ## Update communications
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
                request_info.url_template = '{+baseurl}/communications'
                request_info.path_parameters = @path_parameters
                request_info.http_method = :PATCH
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
            ## @param raw_url The raw URL to use for the request builder.
            ## @return a communications_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return CommunicationsRequestBuilder.new(raw_url, @request_adapter)
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
