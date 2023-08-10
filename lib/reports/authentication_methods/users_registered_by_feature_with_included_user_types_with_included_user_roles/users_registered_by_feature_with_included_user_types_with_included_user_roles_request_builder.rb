require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../../models/user_registration_feature_summary'
require_relative '../../reports'
require_relative '../authentication_methods'
require_relative './users_registered_by_feature_with_included_user_types_with_included_user_roles'

module MicrosoftGraph
    module Reports
        module AuthenticationMethods
            module UsersRegisteredByFeatureWithIncludedUserTypesWithIncludedUserRoles
                ## 
                # Provides operations to call the usersRegisteredByFeature method.
                class UsersRegisteredByFeatureWithIncludedUserTypesWithIncludedUserRolesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new UsersRegisteredByFeatureWithIncludedUserTypesWithIncludedUserRolesRequestBuilder and sets the default values.
                    ## @param included_user_roles Usage: includedUserRoles='{includedUserRoles}'
                    ## @param included_user_types Usage: includedUserTypes='{includedUserTypes}'
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter, included_user_roles=nil, included_user_types=nil)
                        super(path_parameters, request_adapter, "{+baseurl}/reports/authenticationMethods/usersRegisteredByFeature(includedUserTypes='{includedUserTypes}',includedUserRoles='{includedUserRoles}')")
                    end
                    ## 
                    ## Invoke function usersRegisteredByFeature
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of user_registration_feature_summary
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::UserRegistrationFeatureSummary.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Invoke function usersRegisteredByFeature
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
