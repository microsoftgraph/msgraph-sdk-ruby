require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/org_contact'
require_relative '../contacts'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './direct_reports/direct_reports_request_builder'
require_relative './direct_reports/item/directory_object_item_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './item'
require_relative './manager/manager_request_builder'
require_relative './member_of/item/directory_object_item_request_builder'
require_relative './member_of/member_of_request_builder'
require_relative './restore/restore_request_builder'
require_relative './transitive_member_of/item/directory_object_item_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'

module MicrosoftGraph
    module Contacts
        module Item
            ## 
            # Provides operations to manage the collection of orgContact entities.
            class OrgContactItemRequestBuilder
                
                ## 
                # Provides operations to call the checkMemberGroups method.
                def check_member_groups()
                    return MicrosoftGraph::Contacts::Item::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberObjects method.
                def check_member_objects()
                    return MicrosoftGraph::Contacts::Item::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the directReports property of the microsoft.graph.orgContact entity.
                def direct_reports()
                    return MicrosoftGraph::Contacts::Item::DirectReports::DirectReportsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberGroups method.
                def get_member_groups()
                    return MicrosoftGraph::Contacts::Item::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberObjects method.
                def get_member_objects()
                    return MicrosoftGraph::Contacts::Item::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the manager property of the microsoft.graph.orgContact entity.
                def manager()
                    return MicrosoftGraph::Contacts::Item::Manager::ManagerRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the memberOf property of the microsoft.graph.orgContact entity.
                def member_of()
                    return MicrosoftGraph::Contacts::Item::MemberOf::MemberOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Path parameters for the request
                @path_parameters
                ## 
                # The request adapter to use to execute the requests.
                @request_adapter
                ## 
                # Provides operations to call the restore method.
                def restore()
                    return MicrosoftGraph::Contacts::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.orgContact entity.
                def transitive_member_of()
                    return MicrosoftGraph::Contacts::Item::TransitiveMemberOf::TransitiveMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Url template to use to build the URL for the current request builder
                @url_template
                ## 
                ## Instantiates a new OrgContactItemRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/contacts/{orgContact%2Did}{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Delete entity from contacts
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## Provides operations to manage the directReports property of the microsoft.graph.orgContact entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def direct_reports_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Contacts::Item::DirectReports::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Get the properties and relationships of an organizational contact.
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of org_contact
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OrgContact.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the memberOf property of the microsoft.graph.orgContact entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def member_of_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Contacts::Item::MemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update entity in contacts
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of org_contact
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OrgContact.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete entity from contacts
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    return request_info
                end
                ## 
                ## Get the properties and relationships of an organizational contact.
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
                ## Update entity in contacts
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
                ## Provides operations to manage the transitiveMemberOf property of the microsoft.graph.orgContact entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def transitive_member_of_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Contacts::Item::TransitiveMemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class OrgContactItemRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # Get the properties and relationships of an organizational contact.
                class OrgContactItemRequestBuilderGetQueryParameters
                    
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
                class OrgContactItemRequestBuilderGetRequestConfiguration
                    
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
                class OrgContactItemRequestBuilderPatchRequestConfiguration
                    
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
end
