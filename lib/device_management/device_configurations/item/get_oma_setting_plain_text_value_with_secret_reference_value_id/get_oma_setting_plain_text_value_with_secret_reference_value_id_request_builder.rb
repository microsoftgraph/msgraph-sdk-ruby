require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../device_management'
require_relative '../../device_configurations'
require_relative '../item'
require_relative './get_oma_setting_plain_text_value_with_secret_reference_value_id'

module MicrosoftGraph
    module DeviceManagement
        module DeviceConfigurations
            module Item
                module GetOmaSettingPlainTextValueWithSecretReferenceValueId
                    ## 
                    # Provides operations to call the getOmaSettingPlainTextValue method.
                    class GetOmaSettingPlainTextValueWithSecretReferenceValueIdRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new GetOmaSettingPlainTextValueWithSecretReferenceValueIdRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @param secret_reference_value_id Usage: secretReferenceValueId='{secretReferenceValueId}'
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter, secret_reference_value_id=nil)
                            super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/deviceConfigurations/{deviceConfiguration%2Did}/getOmaSettingPlainTextValue(secretReferenceValueId='{secretReferenceValueId}')")
                        end
                        ## 
                        ## Invoke function getOmaSettingPlainTextValue
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of get_oma_setting_plain_text_value_with_secret_reference_value_id_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::GetOmaSettingPlainTextValueWithSecretReferenceValueId::GetOmaSettingPlainTextValueWithSecretReferenceValueIdResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Invoke function getOmaSettingPlainTextValue
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                                request_info.add_request_options(request_configuration.options)
                            end
                            return request_info
                        end
                    end
                end
            end
        end
    end
end
