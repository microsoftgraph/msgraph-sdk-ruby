require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../models/workbook_named_item'
require_relative '../../../../../../../../../../../models/workbook_named_item_collection_response'
require_relative '../../../../../../../../../../storage'
require_relative '../../../../../../../../../file_storage'
require_relative '../../../../../../../../containers'
require_relative '../../../../../../../item'
require_relative '../../../../../../drive'
require_relative '../../../../../items'
require_relative '../../../../item'
require_relative '../../../workbook'
require_relative '../../worksheets'
require_relative '../item'
require_relative './add/add_request_builder'
require_relative './add_formula_local/add_formula_local_request_builder'
require_relative './count/count_request_builder'
require_relative './item/workbook_named_item_item_request_builder'
require_relative './names'

module MicrosoftGraph
    module Storage
        module FileStorage
            module Containers
                module Item
                    module Drive
                        module Items
                            module Item
                                module Workbook
                                    module Worksheets
                                        module Item
                                            module Names
                                                ## 
                                                # Provides operations to manage the names property of the microsoft.graph.workbookWorksheet entity.
                                                class NamesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                    
                                                    ## 
                                                    # Provides operations to call the add method.
                                                    def add()
                                                        return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Names::Add::AddRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # Provides operations to call the addFormulaLocal method.
                                                    def add_formula_local()
                                                        return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Names::AddFormulaLocal::AddFormulaLocalRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # Provides operations to count the resources in the collection.
                                                    def count()
                                                        return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Names::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    ## Provides operations to manage the names property of the microsoft.graph.workbookWorksheet entity.
                                                    ## @param workbook_named_item_id The unique identifier of workbookNamedItem
                                                    ## @return a workbook_named_item_item_request_builder
                                                    ## 
                                                    def by_workbook_named_item_id(workbook_named_item_id)
                                                        raise StandardError, 'workbook_named_item_id cannot be null' if workbook_named_item_id.nil?
                                                        url_tpl_params = @path_parameters.clone
                                                        url_tpl_params["workbookNamedItem%2Did"] = workbook_named_item_id
                                                        return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Names::Item::WorkbookNamedItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                                    end
                                                    ## 
                                                    ## Instantiates a new NamesRequestBuilder and sets the default values.
                                                    ## @param path_parameters Path parameters for the request
                                                    ## @param request_adapter The request adapter to use to execute the requests.
                                                    ## @return a void
                                                    ## 
                                                    def initialize(path_parameters, request_adapter)
                                                        super(path_parameters, request_adapter, "{+baseurl}/storage/fileStorage/containers/{fileStorageContainer%2Did}/drive/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/names{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                                                    end
                                                    ## 
                                                    ## Returns collection of names that are associated with the worksheet. Read-only.
                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of workbook_named_item_collection_response
                                                    ## 
                                                    def get(request_configuration=nil)
                                                        request_info = self.to_get_request_information(
                                                            request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookNamedItemCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Create new navigation property to names for storage
                                                    ## @param body The request body
                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of workbook_named_item
                                                    ## 
                                                    def post(body, request_configuration=nil)
                                                        raise StandardError, 'body cannot be null' if body.nil?
                                                        request_info = self.to_post_request_information(
                                                            body, request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookNamedItem.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Returns collection of names that are associated with the worksheet. Read-only.
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
                                                    ## Create new navigation property to names for storage
                                                    ## @param body The request body
                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a request_information
                                                    ## 
                                                    def to_post_request_information(body, request_configuration=nil)
                                                        raise StandardError, 'body cannot be null' if body.nil?
                                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                        unless request_configuration.nil?
                                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                                            request_info.add_request_options(request_configuration.options)
                                                        end
                                                        request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                                        request_info.url_template = @url_template
                                                        request_info.path_parameters = @path_parameters
                                                        request_info.http_method = :POST
                                                        request_info.headers.try_add('Accept', 'application/json')
                                                        return request_info
                                                    end
                                                    ## 
                                                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                    ## @param raw_url The raw URL to use for the request builder.
                                                    ## @return a names_request_builder
                                                    ## 
                                                    def with_url(raw_url)
                                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                        return NamesRequestBuilder.new(raw_url, @request_adapter)
                                                    end

                                                    ## 
                                                    # Returns collection of names that are associated with the worksheet. Read-only.
                                                    class NamesRequestBuilderGetQueryParameters
                                                        
                                                        ## 
                                                        # Include count of items
                                                        attr_accessor :count
                                                        ## 
                                                        # Expand related entities
                                                        attr_accessor :expand
                                                        ## 
                                                        # Filter items by property values
                                                        attr_accessor :filter
                                                        ## 
                                                        # Order items by property values
                                                        attr_accessor :orderby
                                                        ## 
                                                        # Search items by search phrases
                                                        attr_accessor :search
                                                        ## 
                                                        # Select properties to be returned
                                                        attr_accessor :select
                                                        ## 
                                                        # Skip the first n items
                                                        attr_accessor :skip
                                                        ## 
                                                        # Show only the first n items
                                                        attr_accessor :top
                                                        ## 
                                                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                        ## @param original_name The original query parameter name in the class.
                                                        ## @return a string
                                                        ## 
                                                        def get_query_parameter(original_name)
                                                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                                                            case original_name
                                                                when "count"
                                                                    return "%24count"
                                                                when "expand"
                                                                    return "%24expand"
                                                                when "filter"
                                                                    return "%24filter"
                                                                when "orderby"
                                                                    return "%24orderby"
                                                                when "search"
                                                                    return "%24search"
                                                                when "select"
                                                                    return "%24select"
                                                                when "skip"
                                                                    return "%24skip"
                                                                when "top"
                                                                    return "%24top"
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
                            end
                        end
                    end
                end
            end
        end
    end
end
