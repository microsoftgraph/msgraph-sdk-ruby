require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../../models/workbook_chart'
require_relative '../../../../../../../../../../../storage'
require_relative '../../../../../../../../../../file_storage'
require_relative '../../../../../../../../../containers'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../drive'
require_relative '../../../../../../items'
require_relative '../../../../../item'
require_relative '../../../../workbook'
require_relative '../../../worksheets'
require_relative '../../item'
require_relative '../charts'
require_relative './axes/axes_request_builder'
require_relative './data_labels/data_labels_request_builder'
require_relative './format/format_request_builder'
require_relative './image/image_request_builder'
require_relative './image_with_width/image_with_width_request_builder'
require_relative './image_with_width_with_height/image_with_width_with_height_request_builder'
require_relative './image_with_width_with_height_with_fitting_mode/image_with_width_with_height_with_fitting_mode_request_builder'
require_relative './item_with_name'
require_relative './legend/legend_request_builder'
require_relative './series/series_request_builder'
require_relative './set_data/set_data_request_builder'
require_relative './set_position/set_position_request_builder'
require_relative './title/title_request_builder'
require_relative './worksheet/worksheet_request_builder'

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
                                            module Charts
                                                module ItemWithName
                                                    ## 
                                                    # Provides operations to call the item method.
                                                    class ItemWithNameRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                        
                                                        ## 
                                                        # Provides operations to manage the axes property of the microsoft.graph.workbookChart entity.
                                                        def axes()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::Axes::AxesRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to manage the dataLabels property of the microsoft.graph.workbookChart entity.
                                                        def data_labels()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::DataLabels::DataLabelsRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to manage the format property of the microsoft.graph.workbookChart entity.
                                                        def format()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::Format::FormatRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to call the image method.
                                                        def image()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::Image::ImageRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to manage the legend property of the microsoft.graph.workbookChart entity.
                                                        def legend()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::Legend::LegendRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to manage the series property of the microsoft.graph.workbookChart entity.
                                                        def series()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::Series::SeriesRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to call the setData method.
                                                        def set_data()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::SetData::SetDataRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to call the setPosition method.
                                                        def set_position()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::SetPosition::SetPositionRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to manage the title property of the microsoft.graph.workbookChart entity.
                                                        def title()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::Title::TitleRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Provides operations to manage the worksheet property of the microsoft.graph.workbookChart entity.
                                                        def worksheet()
                                                            return MicrosoftGraph::Storage::FileStorage::Containers::Item::Drive::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::Worksheet::WorksheetRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        ## Instantiates a new ItemWithNameRequestBuilder and sets the default values.
                                                        ## @param name Usage: name='{name}'
                                                        ## @param path_parameters Path parameters for the request
                                                        ## @param request_adapter The request adapter to use to execute the requests.
                                                        ## @return a void
                                                        ## 
                                                        def initialize(path_parameters, request_adapter, name=nil)
                                                            super(path_parameters, request_adapter, "{+baseurl}/storage/fileStorage/containers/{fileStorageContainer%2Did}/drive/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/item(name='{name}')")
                                                        end
                                                        ## 
                                                        ## Invoke function item
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of workbook_chart
                                                        ## 
                                                        def get(request_configuration=nil)
                                                            request_info = self.to_get_request_information(
                                                                request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChart.create_from_discriminator_value(pn) }, error_mapping)
                                                        end
                                                        ## 
                                                        ## Provides operations to call the image method.
                                                        ## @param width Usage: width={width}
                                                        ## @return a image_with_width_request_builder
                                                        ## 
                                                        def image_with_width(width)
                                                            raise StandardError, 'width cannot be null' if width.nil?
                                                            return ImageWithWidthRequestBuilder.new(@path_parameters, @request_adapter, width)
                                                        end
                                                        ## 
                                                        ## Provides operations to call the image method.
                                                        ## @param height Usage: height={height}
                                                        ## @param width Usage: width={width}
                                                        ## @return a image_with_width_with_height_request_builder
                                                        ## 
                                                        def image_with_width_with_height(height, width)
                                                            raise StandardError, 'height cannot be null' if height.nil?
                                                            raise StandardError, 'width cannot be null' if width.nil?
                                                            return ImageWithWidthWithHeightRequestBuilder.new(@path_parameters, @request_adapter, height, width)
                                                        end
                                                        ## 
                                                        ## Provides operations to call the image method.
                                                        ## @param fitting_mode Usage: fittingMode='{fittingMode}'
                                                        ## @param height Usage: height={height}
                                                        ## @param width Usage: width={width}
                                                        ## @return a image_with_width_with_height_with_fitting_mode_request_builder
                                                        ## 
                                                        def image_with_width_with_height_with_fitting_mode(fitting_mode, height, width)
                                                            raise StandardError, 'fitting_mode cannot be null' if fitting_mode.nil?
                                                            raise StandardError, 'height cannot be null' if height.nil?
                                                            raise StandardError, 'width cannot be null' if width.nil?
                                                            return ImageWithWidthWithHeightWithFittingModeRequestBuilder.new(@path_parameters, @request_adapter, fittingMode, height, width)
                                                        end
                                                        ## 
                                                        ## Invoke function item
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
                                                        ## @return a item_with_name_request_builder
                                                        ## 
                                                        def with_url(raw_url)
                                                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                            return ItemWithNameRequestBuilder.new(raw_url, @request_adapter)
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
