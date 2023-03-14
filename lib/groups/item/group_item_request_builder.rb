require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/group'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../groups'
require_relative './accepted_senders/accepted_senders_request_builder'
require_relative './accepted_senders/item/directory_object_item_request_builder'
require_relative './add_favorite/add_favorite_request_builder'
require_relative './app_role_assignments/app_role_assignments_request_builder'
require_relative './app_role_assignments/item/app_role_assignment_item_request_builder'
require_relative './assign_license/assign_license_request_builder'
require_relative './calendar/calendar_request_builder'
require_relative './calendar_view/calendar_view_request_builder'
require_relative './calendar_view/item/event_item_request_builder'
require_relative './check_granted_permissions_for_app/check_granted_permissions_for_app_request_builder'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './conversations/conversations_request_builder'
require_relative './conversations/item/conversation_item_request_builder'
require_relative './created_on_behalf_of/created_on_behalf_of_request_builder'
require_relative './drive/drive_request_builder'
require_relative './drives/drives_request_builder'
require_relative './drives/item/drive_item_request_builder'
require_relative './events/events_request_builder'
require_relative './events/item/event_item_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './group_lifecycle_policies/group_lifecycle_policies_request_builder'
require_relative './group_lifecycle_policies/item/group_lifecycle_policy_item_request_builder'
require_relative './item'
require_relative './member_of/item/directory_object_item_request_builder'
require_relative './member_of/member_of_request_builder'
require_relative './members/item/directory_object_item_request_builder'
require_relative './members/members_request_builder'
require_relative './members_with_license_errors/item/directory_object_item_request_builder'
require_relative './members_with_license_errors/members_with_license_errors_request_builder'
require_relative './onenote/onenote_request_builder'
require_relative './owners/item/directory_object_item_request_builder'
require_relative './owners/owners_request_builder'
require_relative './permission_grants/item/resource_specific_permission_grant_item_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './photo/photo_request_builder'
require_relative './photos/item/profile_photo_item_request_builder'
require_relative './photos/photos_request_builder'
require_relative './planner/planner_request_builder'
require_relative './rejected_senders/item/directory_object_item_request_builder'
require_relative './rejected_senders/rejected_senders_request_builder'
require_relative './remove_favorite/remove_favorite_request_builder'
require_relative './renew/renew_request_builder'
require_relative './reset_unseen_count/reset_unseen_count_request_builder'
require_relative './restore/restore_request_builder'
require_relative './settings/item/group_setting_item_request_builder'
require_relative './settings/settings_request_builder'
require_relative './sites/item/site_item_request_builder'
require_relative './sites/sites_request_builder'
require_relative './subscribe_by_mail/subscribe_by_mail_request_builder'
require_relative './team/team_request_builder'
require_relative './threads/item/conversation_thread_item_request_builder'
require_relative './threads/threads_request_builder'
require_relative './transitive_member_of/item/directory_object_item_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'
require_relative './transitive_members/item/directory_object_item_request_builder'
require_relative './transitive_members/transitive_members_request_builder'
require_relative './unsubscribe_by_mail/unsubscribe_by_mail_request_builder'
require_relative './validate_properties/validate_properties_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            ## 
            # Provides operations to manage the collection of group entities.
            class GroupItemRequestBuilder
                
                ## 
                # Provides operations to manage the acceptedSenders property of the microsoft.graph.group entity.
                def accepted_senders()
                    return MicrosoftGraph::Groups::Item::AcceptedSenders::AcceptedSendersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the addFavorite method.
                def add_favorite()
                    return MicrosoftGraph::Groups::Item::AddFavorite::AddFavoriteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the appRoleAssignments property of the microsoft.graph.group entity.
                def app_role_assignments()
                    return MicrosoftGraph::Groups::Item::AppRoleAssignments::AppRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the assignLicense method.
                def assign_license()
                    return MicrosoftGraph::Groups::Item::AssignLicense::AssignLicenseRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the calendar property of the microsoft.graph.group entity.
                def calendar()
                    return MicrosoftGraph::Groups::Item::Calendar::CalendarRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the calendarView property of the microsoft.graph.group entity.
                def calendar_view()
                    return MicrosoftGraph::Groups::Item::CalendarView::CalendarViewRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkGrantedPermissionsForApp method.
                def check_granted_permissions_for_app()
                    return MicrosoftGraph::Groups::Item::CheckGrantedPermissionsForApp::CheckGrantedPermissionsForAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberGroups method.
                def check_member_groups()
                    return MicrosoftGraph::Groups::Item::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberObjects method.
                def check_member_objects()
                    return MicrosoftGraph::Groups::Item::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the conversations property of the microsoft.graph.group entity.
                def conversations()
                    return MicrosoftGraph::Groups::Item::Conversations::ConversationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the createdOnBehalfOf property of the microsoft.graph.group entity.
                def created_on_behalf_of()
                    return MicrosoftGraph::Groups::Item::CreatedOnBehalfOf::CreatedOnBehalfOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the drive property of the microsoft.graph.group entity.
                def drive()
                    return MicrosoftGraph::Groups::Item::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the drives property of the microsoft.graph.group entity.
                def drives()
                    return MicrosoftGraph::Groups::Item::Drives::DrivesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the events property of the microsoft.graph.group entity.
                def events()
                    return MicrosoftGraph::Groups::Item::Events::EventsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the extensions property of the microsoft.graph.group entity.
                def extensions()
                    return MicrosoftGraph::Groups::Item::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberGroups method.
                def get_member_groups()
                    return MicrosoftGraph::Groups::Item::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberObjects method.
                def get_member_objects()
                    return MicrosoftGraph::Groups::Item::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the groupLifecyclePolicies property of the microsoft.graph.group entity.
                def group_lifecycle_policies()
                    return MicrosoftGraph::Groups::Item::GroupLifecyclePolicies::GroupLifecyclePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the memberOf property of the microsoft.graph.group entity.
                def member_of()
                    return MicrosoftGraph::Groups::Item::MemberOf::MemberOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the members property of the microsoft.graph.group entity.
                def members()
                    return MicrosoftGraph::Groups::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the membersWithLicenseErrors property of the microsoft.graph.group entity.
                def members_with_license_errors()
                    return MicrosoftGraph::Groups::Item::MembersWithLicenseErrors::MembersWithLicenseErrorsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the onenote property of the microsoft.graph.group entity.
                def onenote()
                    return MicrosoftGraph::Groups::Item::Onenote::OnenoteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the owners property of the microsoft.graph.group entity.
                def owners()
                    return MicrosoftGraph::Groups::Item::Owners::OwnersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Path parameters for the request
                @path_parameters
                ## 
                # Provides operations to manage the permissionGrants property of the microsoft.graph.group entity.
                def permission_grants()
                    return MicrosoftGraph::Groups::Item::PermissionGrants::PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the photo property of the microsoft.graph.group entity.
                def photo()
                    return MicrosoftGraph::Groups::Item::Photo::PhotoRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the photos property of the microsoft.graph.group entity.
                def photos()
                    return MicrosoftGraph::Groups::Item::Photos::PhotosRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the planner property of the microsoft.graph.group entity.
                def planner()
                    return MicrosoftGraph::Groups::Item::Planner::PlannerRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the rejectedSenders property of the microsoft.graph.group entity.
                def rejected_senders()
                    return MicrosoftGraph::Groups::Item::RejectedSenders::RejectedSendersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the removeFavorite method.
                def remove_favorite()
                    return MicrosoftGraph::Groups::Item::RemoveFavorite::RemoveFavoriteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the renew method.
                def renew()
                    return MicrosoftGraph::Groups::Item::Renew::RenewRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The request adapter to use to execute the requests.
                @request_adapter
                ## 
                # Provides operations to call the resetUnseenCount method.
                def reset_unseen_count()
                    return MicrosoftGraph::Groups::Item::ResetUnseenCount::ResetUnseenCountRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the restore method.
                def restore()
                    return MicrosoftGraph::Groups::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the settings property of the microsoft.graph.group entity.
                def settings()
                    return MicrosoftGraph::Groups::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sites property of the microsoft.graph.group entity.
                def sites()
                    return MicrosoftGraph::Groups::Item::Sites::SitesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the subscribeByMail method.
                def subscribe_by_mail()
                    return MicrosoftGraph::Groups::Item::SubscribeByMail::SubscribeByMailRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the team property of the microsoft.graph.group entity.
                def team()
                    return MicrosoftGraph::Groups::Item::Team::TeamRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the threads property of the microsoft.graph.group entity.
                def threads()
                    return MicrosoftGraph::Groups::Item::Threads::ThreadsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.group entity.
                def transitive_member_of()
                    return MicrosoftGraph::Groups::Item::TransitiveMemberOf::TransitiveMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the transitiveMembers property of the microsoft.graph.group entity.
                def transitive_members()
                    return MicrosoftGraph::Groups::Item::TransitiveMembers::TransitiveMembersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the unsubscribeByMail method.
                def unsubscribe_by_mail()
                    return MicrosoftGraph::Groups::Item::UnsubscribeByMail::UnsubscribeByMailRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Url template to use to build the URL for the current request builder
                @url_template
                ## 
                # Provides operations to call the validateProperties method.
                def validate_properties()
                    return MicrosoftGraph::Groups::Item::ValidateProperties::ValidatePropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Gets an item from the MicrosoftGraph.groups.item.acceptedSenders.item collection
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def accepted_senders_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Groups::Item::AcceptedSenders::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the appRoleAssignments property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a app_role_assignment_item_request_builder
                ## 
                def app_role_assignments_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["appRoleAssignment%2Did"] = id
                    return MicrosoftGraph::Groups::Item::AppRoleAssignments::Item::AppRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the calendarView property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a event_item_request_builder
                ## 
                def calendar_view_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["event%2Did"] = id
                    return MicrosoftGraph::Groups::Item::CalendarView::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new GroupItemRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/groups/{group%2Did}{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Provides operations to manage the conversations property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a conversation_item_request_builder
                ## 
                def conversations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["conversation%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Conversations::Item::ConversationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete group. When deleted, Microsoft 365 groups are moved to a temporary container and can be restored within 30 days. After that time, they're permanently deleted. This isn't applicable to Security groups and Distribution groups which are permanently deleted immediately. To learn more, see deletedItems.
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
                ## Provides operations to manage the drives property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a drive_item_request_builder
                ## 
                def drives_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["drive%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Drives::Item::DriveItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the events property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a event_item_request_builder
                ## 
                def events_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["event%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Events::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the extensions property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a extension_item_request_builder
                ## 
                def extensions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["extension%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are _not_ returned by default, specify them in a `$select` OData query option. The **hasMembersWithLicenseErrors** and **isArchived** properties are an exception and are not returned in the `$select` query.
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of group
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the groupLifecyclePolicies property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a group_lifecycle_policy_item_request_builder
                ## 
                def group_lifecycle_policies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["groupLifecyclePolicy%2Did"] = id
                    return MicrosoftGraph::Groups::Item::GroupLifecyclePolicies::Item::GroupLifecyclePolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the memberOf property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def member_of_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Groups::Item::MemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Gets an item from the MicrosoftGraph.groups.item.members.item collection
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def members_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Members::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the membersWithLicenseErrors property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def members_with_license_errors_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Groups::Item::MembersWithLicenseErrors::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Gets an item from the MicrosoftGraph.groups.item.owners.item collection
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def owners_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Owners::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Add a member to a security or Microsoft 365 group through the **members** navigation property. The following table shows the types of members that can be added to either security groups or Microsoft 365 groups.
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of group
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the permissionGrants property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a resource_specific_permission_grant_item_request_builder
                ## 
                def permission_grants_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["resourceSpecificPermissionGrant%2Did"] = id
                    return MicrosoftGraph::Groups::Item::PermissionGrants::Item::ResourceSpecificPermissionGrantItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the photos property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a profile_photo_item_request_builder
                ## 
                def photos_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["profilePhoto%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Photos::Item::ProfilePhotoItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Gets an item from the MicrosoftGraph.groups.item.rejectedSenders.item collection
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def rejected_senders_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Groups::Item::RejectedSenders::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the settings property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a group_setting_item_request_builder
                ## 
                def settings_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["groupSetting%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Settings::Item::GroupSettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the sites property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a site_item_request_builder
                ## 
                def sites_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["site%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Sites::Item::SiteItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the threads property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a conversation_thread_item_request_builder
                ## 
                def threads_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["conversationThread%2Did"] = id
                    return MicrosoftGraph::Groups::Item::Threads::Item::ConversationThreadItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete group. When deleted, Microsoft 365 groups are moved to a temporary container and can be restored within 30 days. After that time, they're permanently deleted. This isn't applicable to Security groups and Distribution groups which are permanently deleted immediately. To learn more, see deletedItems.
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
                ## Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are _not_ returned by default, specify them in a `$select` OData query option. The **hasMembersWithLicenseErrors** and **isArchived** properties are an exception and are not returned in the `$select` query.
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
                ## Add a member to a security or Microsoft 365 group through the **members** navigation property. The following table shows the types of members that can be added to either security groups or Microsoft 365 groups.
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
                ## Provides operations to manage the transitiveMemberOf property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def transitive_member_of_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Groups::Item::TransitiveMemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the transitiveMembers property of the microsoft.graph.group entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def transitive_members_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::Groups::Item::TransitiveMembers::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class GroupItemRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are _not_ returned by default, specify them in a `$select` OData query option. The **hasMembersWithLicenseErrors** and **isArchived** properties are an exception and are not returned in the `$select` query.
                class GroupItemRequestBuilderGetQueryParameters
                    
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
                class GroupItemRequestBuilderGetRequestConfiguration
                    
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
                class GroupItemRequestBuilderPatchRequestConfiguration
                    
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
