require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/drive_item'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../drives'
require_relative '../../item'
require_relative '../items'
require_relative './analytics/analytics_request_builder'
require_relative './checkin/checkin_request_builder'
require_relative './checkout/checkout_request_builder'
require_relative './children/children_request_builder'
require_relative './children/item/drive_item_item_request_builder'
require_relative './content/content_request_builder'
require_relative './copy/copy_request_builder'
require_relative './create_link/create_link_request_builder'
require_relative './create_upload_session/create_upload_session_request_builder'
require_relative './delta/delta_request_builder'
require_relative './delta_with_token/delta_with_token_request_builder'
require_relative './follow/follow_request_builder'
require_relative './get_activities_by_interval/get_activities_by_interval_request_builder'
require_relative './get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval/dab1c2feb9ecf2d349721478e4ff8fe9c46b97a0c44110851b2b17a08d22383e'
require_relative './invite/invite_request_builder'
require_relative './item'
require_relative './list_item/list_item_request_builder'
require_relative './permissions/item/permission_item_request_builder'
require_relative './permissions/permissions_request_builder'
require_relative './preview/preview_request_builder'
require_relative './restore/restore_request_builder'
require_relative './search_with_q/search_with_q_request_builder'
require_relative './subscriptions/item/subscription_item_request_builder'
require_relative './subscriptions/subscriptions_request_builder'
require_relative './thumbnails/item/thumbnail_set_item_request_builder'
require_relative './thumbnails/thumbnails_request_builder'
require_relative './unfollow/unfollow_request_builder'
require_relative './validate_permission/validate_permission_request_builder'
require_relative './versions/item/drive_item_version_item_request_builder'
require_relative './versions/versions_request_builder'
require_relative './workbook/workbook_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    ## 
                    # Provides operations to manage the items property of the microsoft.graph.drive entity.
                    class DriveItemItemRequestBuilder
                        
                        ## 
                        # Provides operations to manage the analytics property of the microsoft.graph.driveItem entity.
                        def analytics()
                            return MicrosoftGraph::Drives::Item::Items::Item::Analytics::AnalyticsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the checkin method.
                        def checkin()
                            return MicrosoftGraph::Drives::Item::Items::Item::Checkin::CheckinRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the checkout method.
                        def checkout()
                            return MicrosoftGraph::Drives::Item::Items::Item::Checkout::CheckoutRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the children property of the microsoft.graph.driveItem entity.
                        def children()
                            return MicrosoftGraph::Drives::Item::Items::Item::Children::ChildrenRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the media for the drive entity.
                        def content()
                            return MicrosoftGraph::Drives::Item::Items::Item::Content::ContentRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the copy method.
                        def copy()
                            return MicrosoftGraph::Drives::Item::Items::Item::Copy::CopyRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the createLink method.
                        def create_link()
                            return MicrosoftGraph::Drives::Item::Items::Item::CreateLink::CreateLinkRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the createUploadSession method.
                        def create_upload_session()
                            return MicrosoftGraph::Drives::Item::Items::Item::CreateUploadSession::CreateUploadSessionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the delta method.
                        def delta()
                            return MicrosoftGraph::Drives::Item::Items::Item::Delta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the follow method.
                        def follow()
                            return MicrosoftGraph::Drives::Item::Items::Item::Follow::FollowRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getActivitiesByInterval method.
                        def get_activities_by_interval()
                            return MicrosoftGraph::Drives::Item::Items::Item::GetActivitiesByInterval::GetActivitiesByIntervalRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the invite method.
                        def invite()
                            return MicrosoftGraph::Drives::Item::Items::Item::Invite::InviteRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the listItem property of the microsoft.graph.driveItem entity.
                        def list_item()
                            return MicrosoftGraph::Drives::Item::Items::Item::ListItem::ListItemRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # Provides operations to manage the permissions property of the microsoft.graph.driveItem entity.
                        def permissions()
                            return MicrosoftGraph::Drives::Item::Items::Item::Permissions::PermissionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the preview method.
                        def preview()
                            return MicrosoftGraph::Drives::Item::Items::Item::Preview::PreviewRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Provides operations to call the restore method.
                        def restore()
                            return MicrosoftGraph::Drives::Item::Items::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the subscriptions property of the microsoft.graph.driveItem entity.
                        def subscriptions()
                            return MicrosoftGraph::Drives::Item::Items::Item::Subscriptions::SubscriptionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the thumbnails property of the microsoft.graph.driveItem entity.
                        def thumbnails()
                            return MicrosoftGraph::Drives::Item::Items::Item::Thumbnails::ThumbnailsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the unfollow method.
                        def unfollow()
                            return MicrosoftGraph::Drives::Item::Items::Item::Unfollow::UnfollowRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        # Provides operations to call the validatePermission method.
                        def validate_permission()
                            return MicrosoftGraph::Drives::Item::Items::Item::ValidatePermission::ValidatePermissionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the versions property of the microsoft.graph.driveItem entity.
                        def versions()
                            return MicrosoftGraph::Drives::Item::Items::Item::Versions::VersionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the workbook property of the microsoft.graph.driveItem entity.
                        def workbook()
                            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::WorkbookRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the children property of the microsoft.graph.driveItem entity.
                        ## @param id Unique identifier of the item
                        ## @return a drive_item_item_request_builder
                        ## 
                        def children_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["driveItem%2Did1"] = id
                            return MicrosoftGraph::Drives::Item::Items::Item::Children::Item::DriveItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DriveItemItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Delete navigation property items for drives
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
                        ## Provides operations to call the delta method.
                        ## @param token Usage: token='{token}'
                        ## @return a delta_with_token_request_builder
                        ## 
                        def delta_with_token(token)
                            raise StandardError, 'token cannot be null' if token.nil?
                            return DeltaWithTokenRequestBuilder.new(@path_parameters, @request_adapter, token)
                        end
                        ## 
                        ## All items contained in the drive. Read-only. Nullable.
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of drive_item
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to call the getActivitiesByInterval method.
                        ## @param endDateTime Usage: endDateTime='{endDateTime}'
                        ## @param interval Usage: interval='{interval}'
                        ## @param startDateTime Usage: startDateTime='{startDateTime}'
                        ## @return a get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval_request_builder
                        ## 
                        def get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval(end_date_time, interval, start_date_time)
                            raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                            raise StandardError, 'interval cannot be null' if interval.nil?
                            raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                            return GetActivitiesByIntervalWithStartDateTimeWithEndDateTimeWithIntervalRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, interval, startDateTime)
                        end
                        ## 
                        ## Update the navigation property items in drives
                        ## @param body The request body
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of drive_item
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the permissions property of the microsoft.graph.driveItem entity.
                        ## @param id Unique identifier of the item
                        ## @return a permission_item_request_builder
                        ## 
                        def permissions_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["permission%2Did"] = id
                            return MicrosoftGraph::Drives::Item::Items::Item::Permissions::Item::PermissionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to call the search method.
                        ## @param q Usage: q='{q}'
                        ## @return a search_with_q_request_builder
                        ## 
                        def search_with_q(q)
                            raise StandardError, 'q cannot be null' if q.nil?
                            return SearchWithQRequestBuilder.new(@path_parameters, @request_adapter, q)
                        end
                        ## 
                        ## Provides operations to manage the subscriptions property of the microsoft.graph.driveItem entity.
                        ## @param id Unique identifier of the item
                        ## @return a subscription_item_request_builder
                        ## 
                        def subscriptions_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["subscription%2Did"] = id
                            return MicrosoftGraph::Drives::Item::Items::Item::Subscriptions::Item::SubscriptionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the thumbnails property of the microsoft.graph.driveItem entity.
                        ## @param id Unique identifier of the item
                        ## @return a thumbnail_set_item_request_builder
                        ## 
                        def thumbnails_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["thumbnailSet%2Did"] = id
                            return MicrosoftGraph::Drives::Item::Items::Item::Thumbnails::Item::ThumbnailSetItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property items for drives
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
                        ## All items contained in the drive. Read-only. Nullable.
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
                        ## Update the navigation property items in drives
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
                        ## Provides operations to manage the versions property of the microsoft.graph.driveItem entity.
                        ## @param id Unique identifier of the item
                        ## @return a drive_item_version_item_request_builder
                        ## 
                        def versions_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["driveItemVersion%2Did"] = id
                            return MicrosoftGraph::Drives::Item::Items::Item::Versions::Item::DriveItemVersionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end

                        ## 
                        # Configuration for the request such as headers, query parameters, and middleware options.
                        class DriveItemItemRequestBuilderDeleteRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                        end

                        ## 
                        # All items contained in the drive. Read-only. Nullable.
                        class DriveItemItemRequestBuilderGetQueryParameters
                            
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
                        class DriveItemItemRequestBuilderGetRequestConfiguration
                            
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
                        class DriveItemItemRequestBuilderPatchRequestConfiguration
                            
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
    end
end
