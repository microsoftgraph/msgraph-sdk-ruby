require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../reports'
require_relative './get_printer_archived_print_jobs_with_printer_id_with_start_date_time_with_end_date_time'

module MicrosoftGraph
    module Reports
        module GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTime
            ## 
            # Provides operations to call the getPrinterArchivedPrintJobs method.
            class GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTimeRequestBuilder
                
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
                ## Instantiates a new GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTimeRequestBuilder and sets the default values.
                ## @param endDateTime Usage: endDateTime={endDateTime}
                ## @param pathParameters Path parameters for the request
                ## @param printerId Usage: printerId='{printerId}'
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @param startDateTime Usage: startDateTime={startDateTime}
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter, end_date_time=nil, printer_id=nil, start_date_time=nil)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/reports/getPrinterArchivedPrintJobs(printerId='{printerId}',startDateTime={startDateTime},endDateTime={endDateTime}){?%24top,%24skip,%24search,%24filter,%24count}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Invoke function getPrinterArchivedPrintJobs
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of get_printer_archived_print_jobs_with_printer_id_with_start_date_time_with_end_date_time_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Reports::GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTime::GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTimeResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Invoke function getPrinterArchivedPrintJobs
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
                # Invoke function getPrinterArchivedPrintJobs
                class GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTimeRequestBuilderGetQueryParameters
                    
                    ## 
                    # Include count of items
                    attr_accessor :count
                    ## 
                    # Filter items by property values
                    attr_accessor :filter
                    ## 
                    # Search items by search phrases
                    attr_accessor :search
                    ## 
                    # Skip the first n items
                    attr_accessor :skip
                    ## 
                    # Show only the first n items
                    attr_accessor :top
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
                            when "filter"
                                return "%24filter"
                            when "search"
                                return "%24search"
                            when "skip"
                                return "%24skip"
                            when "top"
                                return "%24top"
                            else
                                return original_name
                        end
                    end
                end

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTimeRequestBuilderGetRequestConfiguration
                    
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
            end
        end
    end
end
