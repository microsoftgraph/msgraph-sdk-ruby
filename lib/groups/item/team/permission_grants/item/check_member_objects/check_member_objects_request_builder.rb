require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../groups'
require_relative '../../../../item'
require_relative '../../../team'
require_relative '../../permission_grants'
require_relative '../item'
require_relative './check_member_objects'

module MicrosoftGraph
    module Groups
        module Item
            module Team
                module PermissionGrants
                    module Item
                        module CheckMemberObjects
                            ## 
                            # Provides operations to call the checkMemberObjects method.
                            class CheckMemberObjectsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new CheckMemberObjectsRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/team/permissionGrants/{resourceSpecificPermissionGrant%2Did}/checkMemberObjects")
                                end
                                ## 
                                ## Invoke action checkMemberObjects
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of check_member_objects_response
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Groups::Item::Team::PermissionGrants::Item::CheckMemberObjects::CheckMemberObjectsResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Invoke action checkMemberObjects
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_post_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :POST
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    return request_info
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
