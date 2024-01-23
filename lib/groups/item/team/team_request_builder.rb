require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../../models/team'
require_relative '../../groups'
require_relative '../item'
require_relative './all_channels/all_channels_request_builder'
require_relative './archive/archive_request_builder'
require_relative './channels/channels_request_builder'
require_relative './clone/clone_request_builder'
require_relative './complete_migration/complete_migration_request_builder'
require_relative './group/group_request_builder'
require_relative './incoming_channels/incoming_channels_request_builder'
require_relative './installed_apps/installed_apps_request_builder'
require_relative './members/members_request_builder'
require_relative './operations/operations_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './photo/photo_request_builder'
require_relative './primary_channel/primary_channel_request_builder'
require_relative './schedule/schedule_request_builder'
require_relative './send_activity_notification/send_activity_notification_request_builder'
require_relative './tags/tags_request_builder'
require_relative './team'
require_relative './template/template_request_builder'
require_relative './unarchive/unarchive_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Team
                ## 
                # Provides operations to manage the team property of the microsoft.graph.group entity.
                class TeamRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the allChannels property of the microsoft.graph.team entity.
                    def all_channels()
                        return MicrosoftGraph::Groups::Item::Team::AllChannels::AllChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the archive method.
                    def archive()
                        return MicrosoftGraph::Groups::Item::Team::Archive::ArchiveRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the channels property of the microsoft.graph.team entity.
                    def channels()
                        return MicrosoftGraph::Groups::Item::Team::Channels::ChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the clone method.
                    def clone()
                        return MicrosoftGraph::Groups::Item::Team::Clone::CloneRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the completeMigration method.
                    def complete_migration()
                        return MicrosoftGraph::Groups::Item::Team::CompleteMigration::CompleteMigrationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the group property of the microsoft.graph.team entity.
                    def group()
                        return MicrosoftGraph::Groups::Item::Team::Group::GroupRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the incomingChannels property of the microsoft.graph.team entity.
                    def incoming_channels()
                        return MicrosoftGraph::Groups::Item::Team::IncomingChannels::IncomingChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the installedApps property of the microsoft.graph.team entity.
                    def installed_apps()
                        return MicrosoftGraph::Groups::Item::Team::InstalledApps::InstalledAppsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the members property of the microsoft.graph.team entity.
                    def members()
                        return MicrosoftGraph::Groups::Item::Team::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the operations property of the microsoft.graph.team entity.
                    def operations()
                        return MicrosoftGraph::Groups::Item::Team::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the permissionGrants property of the microsoft.graph.team entity.
                    def permission_grants()
                        return MicrosoftGraph::Groups::Item::Team::PermissionGrants::PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the photo property of the microsoft.graph.team entity.
                    def photo()
                        return MicrosoftGraph::Groups::Item::Team::Photo::PhotoRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the primaryChannel property of the microsoft.graph.team entity.
                    def primary_channel()
                        return MicrosoftGraph::Groups::Item::Team::PrimaryChannel::PrimaryChannelRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the schedule property of the microsoft.graph.team entity.
                    def schedule()
                        return MicrosoftGraph::Groups::Item::Team::Schedule::ScheduleRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the sendActivityNotification method.
                    def send_activity_notification()
                        return MicrosoftGraph::Groups::Item::Team::SendActivityNotification::SendActivityNotificationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the tags property of the microsoft.graph.team entity.
                    def tags()
                        return MicrosoftGraph::Groups::Item::Team::Tags::TagsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the template property of the microsoft.graph.team entity.
                    def template()
                        return MicrosoftGraph::Groups::Item::Team::Template::TemplateRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the unarchive method.
                    def unarchive()
                        return MicrosoftGraph::Groups::Item::Team::Unarchive::UnarchiveRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new TeamRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/team{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete navigation property team for groups
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## The team associated with this group.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of team
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Team.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property team in groups
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of team
                    ## 
                    def put(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_put_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Team.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property team for groups
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## The team associated with this group.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Update the navigation property team in groups
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_put_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PUT
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a team_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return TeamRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # The team associated with this group.
                    class TeamRequestBuilderGetQueryParameters
                        
                        ## 
                        # Expand related entities
                        attr_accessor :expand
                        ## 
                        # Select properties to be returned
                        attr_accessor :select
                        ## 
                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                        ## @param original_name The original query parameter name in the class.
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
                end
            end
        end
    end
end
