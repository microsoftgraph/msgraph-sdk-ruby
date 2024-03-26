require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/call_records_call_record'
require_relative '../../models/call_records_call_record_collection_response'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../communications'
require_relative './call_records'
require_relative './count/count_request_builder'
require_relative './item/call_record_item_request_builder'
require_relative './microsoft_graph_call_records_get_direct_routing_calls_with_from_date_time_with_to_date_time/0b4f001d2cd1a7e58f5621cb93199ac931951ed45d61c42860726e4f516f11f4'
require_relative './microsoft_graph_call_records_get_pstn_calls_with_from_date_time_with_to_date_time/2ff200d164cec84baf5b570e76631427bf3cd3168578fa5068b156783f678b22'

module MicrosoftGraph
    module Communications
        module CallRecords
            ## 
            # Provides operations to manage the callRecords property of the microsoft.graph.cloudCommunications entity.
            class CallRecordsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to count the resources in the collection.
                def count()
                    return MicrosoftGraph::Communications::CallRecords::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to manage the callRecords property of the microsoft.graph.cloudCommunications entity.
                ## @param call_record_id The unique identifier of callRecord
                ## @return a call_record_item_request_builder
                ## 
                def by_call_record_id(call_record_id)
                    raise StandardError, 'call_record_id cannot be null' if call_record_id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["callRecord%2Did"] = call_record_id
                    return MicrosoftGraph::Communications::CallRecords::Item::CallRecordItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new CallRecordsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/communications/callRecords{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                end
                ## 
                ## Retrieve the properties and relationships of a callRecord object. There are two ways to get the id of a callRecord: You can use the $expand query parameter to optionally include session and segment details, as shown in the Get full details example. When you expand session details, the maximum page size is 60 sessions.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of call_records_call_record_collection_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::CallRecordsCallRecordCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to call the getDirectRoutingCalls method.
                ## @param from_date_time Usage: fromDateTime={fromDateTime}
                ## @param to_date_time Usage: toDateTime={toDateTime}
                ## @return a microsoft_graph_call_records_get_direct_routing_calls_with_from_date_time_with_to_date_time_request_builder
                ## 
                def microsoft_graph_call_records_get_direct_routing_calls_with_from_date_time_with_to_date_time(from_date_time, to_date_time)
                    raise StandardError, 'from_date_time cannot be null' if from_date_time.nil?
                    raise StandardError, 'to_date_time cannot be null' if to_date_time.nil?
                    return MicrosoftGraphCallRecordsGetDirectRoutingCallsWithFromDateTimeWithToDateTimeRequestBuilder.new(@path_parameters, @request_adapter, fromDateTime, toDateTime)
                end
                ## 
                ## Provides operations to call the getPstnCalls method.
                ## @param from_date_time Usage: fromDateTime={fromDateTime}
                ## @param to_date_time Usage: toDateTime={toDateTime}
                ## @return a microsoft_graph_call_records_get_pstn_calls_with_from_date_time_with_to_date_time_request_builder
                ## 
                def microsoft_graph_call_records_get_pstn_calls_with_from_date_time_with_to_date_time(from_date_time, to_date_time)
                    raise StandardError, 'from_date_time cannot be null' if from_date_time.nil?
                    raise StandardError, 'to_date_time cannot be null' if to_date_time.nil?
                    return MicrosoftGraphCallRecordsGetPstnCallsWithFromDateTimeWithToDateTimeRequestBuilder.new(@path_parameters, @request_adapter, fromDateTime, toDateTime)
                end
                ## 
                ## Create new navigation property to callRecords for communications
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of call_records_call_record
                ## 
                def post(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_post_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::CallRecordsCallRecord.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Retrieve the properties and relationships of a callRecord object. There are two ways to get the id of a callRecord: You can use the $expand query parameter to optionally include session and segment details, as shown in the Get full details example. When you expand session details, the maximum page size is 60 sessions.
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
                ## Create new navigation property to callRecords for communications
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
                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                    request_info.url_template = '{+baseurl}/communications/callRecords'
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :POST
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a call_records_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return CallRecordsRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Retrieve the properties and relationships of a callRecord object. There are two ways to get the id of a callRecord: You can use the $expand query parameter to optionally include session and segment details, as shown in the Get full details example. When you expand session details, the maximum page size is 60 sessions.
                class CallRecordsRequestBuilderGetQueryParameters
                    
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
