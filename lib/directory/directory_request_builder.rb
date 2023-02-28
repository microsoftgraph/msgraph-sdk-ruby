require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/directory'
require_relative '../models/o_data_errors/o_data_error'
require_relative './administrative_units/administrative_units_request_builder'
require_relative './administrative_units/item/administrative_unit_item_request_builder'
require_relative './deleted_items/deleted_items_request_builder'
require_relative './deleted_items/item/directory_object_item_request_builder'
require_relative './directory'
require_relative './federation_configurations/federation_configurations_request_builder'
require_relative './federation_configurations/item/identity_provider_base_item_request_builder'
require_relative './on_premises_synchronization/item/on_premises_directory_synchronization_item_request_builder'
require_relative './on_premises_synchronization/on_premises_synchronization_request_builder'

module MicrosoftGraph
    module Directory
        ## 
        # Provides operations to manage the directory singleton.
        class DirectoryRequestBuilder
            
            ## 
            # Provides operations to manage the administrativeUnits property of the microsoft.graph.directory entity.
            def administrative_units()
                return MicrosoftGraph::Directory::AdministrativeUnits::AdministrativeUnitsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deletedItems property of the microsoft.graph.directory entity.
            def deleted_items()
                return MicrosoftGraph::Directory::DeletedItems::DeletedItemsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the federationConfigurations property of the microsoft.graph.directory entity.
            def federation_configurations()
                return MicrosoftGraph::Directory::FederationConfigurations::FederationConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the onPremisesSynchronization property of the microsoft.graph.directory entity.
            def on_premises_synchronization()
                return MicrosoftGraph::Directory::OnPremisesSynchronization::OnPremisesSynchronizationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            ## Provides operations to manage the administrativeUnits property of the microsoft.graph.directory entity.
            ## @param id Unique identifier of the item
            ## @return a administrative_unit_item_request_builder
            ## 
            def administrative_units_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["administrativeUnit%2Did"] = id
                return MicrosoftGraph::Directory::AdministrativeUnits::Item::AdministrativeUnitItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new DirectoryRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/directory{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Provides operations to manage the deletedItems property of the microsoft.graph.directory entity.
            ## @param id Unique identifier of the item
            ## @return a directory_object_item_request_builder
            ## 
            def deleted_items_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["directoryObject%2Did"] = id
                return MicrosoftGraph::Directory::DeletedItems::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the federationConfigurations property of the microsoft.graph.directory entity.
            ## @param id Unique identifier of the item
            ## @return a identity_provider_base_item_request_builder
            ## 
            def federation_configurations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["identityProviderBase%2Did"] = id
                return MicrosoftGraph::Directory::FederationConfigurations::Item::IdentityProviderBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get directory
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of directory
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Directory.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the onPremisesSynchronization property of the microsoft.graph.directory entity.
            ## @param id Unique identifier of the item
            ## @return a on_premises_directory_synchronization_item_request_builder
            ## 
            def on_premises_synchronization_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["onPremisesDirectorySynchronization%2Did"] = id
                return MicrosoftGraph::Directory::OnPremisesSynchronization::Item::OnPremisesDirectorySynchronizationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update directory
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of directory
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Directory.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get directory
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
            ## Update directory
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
            # Get directory
            class DirectoryRequestBuilderGetQueryParameters
                
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
            class DirectoryRequestBuilderGetRequestConfiguration
                
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
            class DirectoryRequestBuilderPatchRequestConfiguration
                
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
