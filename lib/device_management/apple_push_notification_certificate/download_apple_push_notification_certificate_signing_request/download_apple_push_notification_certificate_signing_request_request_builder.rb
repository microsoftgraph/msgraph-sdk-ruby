require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../device_management'
require_relative '../apple_push_notification_certificate'
require_relative './download_apple_push_notification_certificate_signing_request'

module MicrosoftGraph
    module DeviceManagement
        module ApplePushNotificationCertificate
            module DownloadApplePushNotificationCertificateSigningRequest
                ## 
                # Provides operations to call the downloadApplePushNotificationCertificateSigningRequest method.
                class DownloadApplePushNotificationCertificateSigningRequestRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new DownloadApplePushNotificationCertificateSigningRequestRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/applePushNotificationCertificate/downloadApplePushNotificationCertificateSigningRequest()")
                    end
                    ## 
                    ## Download Apple push notification certificate signing request
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of download_apple_push_notification_certificate_signing_request_get_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::DeviceManagement::ApplePushNotificationCertificate::DownloadApplePushNotificationCertificateSigningRequest::DownloadApplePushNotificationCertificateSigningRequestGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Download Apple push notification certificate signing request
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
                    ## @return a download_apple_push_notification_certificate_signing_request_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return DownloadApplePushNotificationCertificateSigningRequestRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
