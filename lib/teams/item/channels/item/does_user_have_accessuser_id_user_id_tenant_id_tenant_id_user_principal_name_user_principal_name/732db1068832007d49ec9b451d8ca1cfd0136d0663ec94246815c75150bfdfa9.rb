require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../teams'
require_relative '../../../item'
require_relative '../../channels'
require_relative '../item'
require_relative './05c96069a5812796d8509d2a373d51b45576f890a75791804c30dac27dbb20ee'

module MicrosoftGraph
    module Teams
        module Item
            module Channels
                module Item
                    module DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalName
                        ## 
                        # Provides operations to call the doesUserHaveAccess method.
                        class DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/teams/{team%2Did}/channels/{channel%2Did}/doesUserHaveAccess(userId='@userId',tenantId='@tenantId',userPrincipalName='@userPrincipalName'){?userId*,tenantId*,userPrincipalName*}")
                            end
                            ## 
                            ## Invoke function doesUserHaveAccess
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of does_user_have_accessuser_id_user_id_tenant_id_tenant_id_user_principal_name_user_principal_name_response
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Teams::Item::Channels::Item::DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalName::DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Invoke function doesUserHaveAccess
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
                                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                return request_info
                            end

                            ## 
                            # Invoke function doesUserHaveAccess
                            class DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilderGetQueryParameters
                                
                                ## 
                                # Usage: tenantId='@tenantId'
                                attr_accessor :tenant_id
                                ## 
                                # Usage: userId='@userId'
                                attr_accessor :user_id
                                ## 
                                # Usage: userPrincipalName='@userPrincipalName'
                                attr_accessor :user_principal_name
                            end
                        end
                    end
                end
            end
        end
    end
end
