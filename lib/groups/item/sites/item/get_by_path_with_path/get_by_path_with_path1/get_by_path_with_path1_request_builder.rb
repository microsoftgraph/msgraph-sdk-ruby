require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../models/site'
require_relative '../../../../../groups'
require_relative '../../../../item'
require_relative '../../../sites'
require_relative '../../item'
require_relative '../get_by_path_with_path'
require_relative './analytics/analytics_request_builder'
require_relative './columns/columns_request_builder'
require_relative './content_types/content_types_request_builder'
require_relative './created_by_user/created_by_user_request_builder'
require_relative './drive/drive_request_builder'
require_relative './drives/drives_request_builder'
require_relative './external_columns/external_columns_request_builder'
require_relative './get_by_path_with_path1'
require_relative './items/items_request_builder'
require_relative './last_modified_by_user/last_modified_by_user_request_builder'
require_relative './lists/lists_request_builder'
require_relative './onenote/onenote_request_builder'
require_relative './operations/operations_request_builder'
require_relative './permissions/permissions_request_builder'
require_relative './sites/sites_request_builder'
require_relative './term_store/term_store_request_builder'
require_relative './term_stores/term_stores_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Sites
                module Item
                    module GetByPathWithPath
                        module GetByPathWithPath1
                            ## 
                            # Provides operations to call the getByPath method.
                            class GetByPathWithPath1RequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the analytics property of the microsoft.graph.site entity.
                                def analytics()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Analytics::AnalyticsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the columns property of the microsoft.graph.site entity.
                                def columns()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the contentTypes property of the microsoft.graph.site entity.
                                def content_types()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::ContentTypes::ContentTypesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the createdByUser property of the microsoft.graph.baseItem entity.
                                def created_by_user()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::CreatedByUser::CreatedByUserRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the drive property of the microsoft.graph.site entity.
                                def drive()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the drives property of the microsoft.graph.site entity.
                                def drives()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Drives::DrivesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the externalColumns property of the microsoft.graph.site entity.
                                def external_columns()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::ExternalColumns::ExternalColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the items property of the microsoft.graph.site entity.
                                def items()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Items::ItemsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the lastModifiedByUser property of the microsoft.graph.baseItem entity.
                                def last_modified_by_user()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::LastModifiedByUser::LastModifiedByUserRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the lists property of the microsoft.graph.site entity.
                                def lists()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Lists::ListsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the onenote property of the microsoft.graph.site entity.
                                def onenote()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Onenote::OnenoteRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the operations property of the microsoft.graph.site entity.
                                def operations()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the permissions property of the microsoft.graph.site entity.
                                def permissions()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Permissions::PermissionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the sites property of the microsoft.graph.site entity.
                                def sites()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::Sites::SitesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the termStore property of the microsoft.graph.site entity.
                                def term_store()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::TermStore::TermStoreRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the termStores property of the microsoft.graph.site entity.
                                def term_stores()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::GetByPathWithPath::GetByPathWithPath1::TermStores::TermStoresRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new GetByPathWithPath1RequestBuilder and sets the default values.
                                ## @param path1 Usage: path='{path1}'
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter, path1=nil)
                                    super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/getByPath(path='{path}')/getByPath(path='{path1}')")
                                end
                                ## 
                                ## Invoke function getByPath
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of site
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Site.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Invoke function getByPath
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
                                ## @return a get_by_path_with_path1_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return GetByPathWithPath1RequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
