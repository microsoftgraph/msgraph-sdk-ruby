require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../online_meetings'
require_relative '../item'
require_relative './get_virtual_appointment_join_web_url'

module MicrosoftGraph
    module Users
        module Item
            module OnlineMeetings
                module Item
                    module GetVirtualAppointmentJoinWebUrl
                        ## 
                        # Provides operations to call the getVirtualAppointmentJoinWebUrl method.
                        class GetVirtualAppointmentJoinWebUrlRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new GetVirtualAppointmentJoinWebUrlRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/onlineMeetings/{onlineMeeting%2Did}/getVirtualAppointmentJoinWebUrl()")
                            end
                            ## 
                            ## Get a join web URL for a Microsoft Virtual Appointment. This web URL includes enhanced business-to-customer experiences such as mobile browser join and virtual lobby rooms. With Teams Premium, you can configure a custom lobby room experience for attendees by adding your company logo and access the Virtual Appointments usage report for organizational analytics.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of get_virtual_appointment_join_web_urlget_response
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Users::Item::OnlineMeetings::Item::GetVirtualAppointmentJoinWebUrl::GetVirtualAppointmentJoinWebUrlgetResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Get a join web URL for a Microsoft Virtual Appointment. This web URL includes enhanced business-to-customer experiences such as mobile browser join and virtual lobby rooms. With Teams Premium, you can configure a custom lobby room experience for attendees by adding your company logo and access the Virtual Appointments usage report for organizational analytics.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_get_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
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
                            ## @return a get_virtual_appointment_join_web_url_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return GetVirtualAppointmentJoinWebUrlRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end
