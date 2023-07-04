require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintUsage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The blackAndWhitePageCount property
            @black_and_white_page_count
            ## 
            # The colorPageCount property
            @color_page_count
            ## 
            # The completedBlackAndWhiteJobCount property
            @completed_black_and_white_job_count
            ## 
            # The completedColorJobCount property
            @completed_color_job_count
            ## 
            # The completedJobCount property
            @completed_job_count
            ## 
            # The doubleSidedSheetCount property
            @double_sided_sheet_count
            ## 
            # The incompleteJobCount property
            @incomplete_job_count
            ## 
            # The mediaSheetCount property
            @media_sheet_count
            ## 
            # The pageCount property
            @page_count
            ## 
            # The singleSidedSheetCount property
            @single_sided_sheet_count
            ## 
            # The usageDate property
            @usage_date
            ## 
            ## Gets the blackAndWhitePageCount property value. The blackAndWhitePageCount property
            ## @return a int64
            ## 
            def black_and_white_page_count
                return @black_and_white_page_count
            end
            ## 
            ## Sets the blackAndWhitePageCount property value. The blackAndWhitePageCount property
            ## @param value Value to set for the black_and_white_page_count property.
            ## @return a void
            ## 
            def black_and_white_page_count=(value)
                @black_and_white_page_count = value
            end
            ## 
            ## Gets the colorPageCount property value. The colorPageCount property
            ## @return a int64
            ## 
            def color_page_count
                return @color_page_count
            end
            ## 
            ## Sets the colorPageCount property value. The colorPageCount property
            ## @param value Value to set for the color_page_count property.
            ## @return a void
            ## 
            def color_page_count=(value)
                @color_page_count = value
            end
            ## 
            ## Gets the completedBlackAndWhiteJobCount property value. The completedBlackAndWhiteJobCount property
            ## @return a int64
            ## 
            def completed_black_and_white_job_count
                return @completed_black_and_white_job_count
            end
            ## 
            ## Sets the completedBlackAndWhiteJobCount property value. The completedBlackAndWhiteJobCount property
            ## @param value Value to set for the completed_black_and_white_job_count property.
            ## @return a void
            ## 
            def completed_black_and_white_job_count=(value)
                @completed_black_and_white_job_count = value
            end
            ## 
            ## Gets the completedColorJobCount property value. The completedColorJobCount property
            ## @return a int64
            ## 
            def completed_color_job_count
                return @completed_color_job_count
            end
            ## 
            ## Sets the completedColorJobCount property value. The completedColorJobCount property
            ## @param value Value to set for the completed_color_job_count property.
            ## @return a void
            ## 
            def completed_color_job_count=(value)
                @completed_color_job_count = value
            end
            ## 
            ## Gets the completedJobCount property value. The completedJobCount property
            ## @return a int64
            ## 
            def completed_job_count
                return @completed_job_count
            end
            ## 
            ## Sets the completedJobCount property value. The completedJobCount property
            ## @param value Value to set for the completed_job_count property.
            ## @return a void
            ## 
            def completed_job_count=(value)
                @completed_job_count = value
            end
            ## 
            ## Instantiates a new PrintUsage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a print_usage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.printUsageByPrinter"
                            return PrintUsageByPrinter.new
                        when "#microsoft.graph.printUsageByUser"
                            return PrintUsageByUser.new
                    end
                end
                return PrintUsage.new
            end
            ## 
            ## Gets the doubleSidedSheetCount property value. The doubleSidedSheetCount property
            ## @return a int64
            ## 
            def double_sided_sheet_count
                return @double_sided_sheet_count
            end
            ## 
            ## Sets the doubleSidedSheetCount property value. The doubleSidedSheetCount property
            ## @param value Value to set for the double_sided_sheet_count property.
            ## @return a void
            ## 
            def double_sided_sheet_count=(value)
                @double_sided_sheet_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "blackAndWhitePageCount" => lambda {|n| @black_and_white_page_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "colorPageCount" => lambda {|n| @color_page_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "completedBlackAndWhiteJobCount" => lambda {|n| @completed_black_and_white_job_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "completedColorJobCount" => lambda {|n| @completed_color_job_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "completedJobCount" => lambda {|n| @completed_job_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "doubleSidedSheetCount" => lambda {|n| @double_sided_sheet_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "incompleteJobCount" => lambda {|n| @incomplete_job_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "mediaSheetCount" => lambda {|n| @media_sheet_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "pageCount" => lambda {|n| @page_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "singleSidedSheetCount" => lambda {|n| @single_sided_sheet_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "usageDate" => lambda {|n| @usage_date = n.get_date_value() },
                })
            end
            ## 
            ## Gets the incompleteJobCount property value. The incompleteJobCount property
            ## @return a int64
            ## 
            def incomplete_job_count
                return @incomplete_job_count
            end
            ## 
            ## Sets the incompleteJobCount property value. The incompleteJobCount property
            ## @param value Value to set for the incomplete_job_count property.
            ## @return a void
            ## 
            def incomplete_job_count=(value)
                @incomplete_job_count = value
            end
            ## 
            ## Gets the mediaSheetCount property value. The mediaSheetCount property
            ## @return a int64
            ## 
            def media_sheet_count
                return @media_sheet_count
            end
            ## 
            ## Sets the mediaSheetCount property value. The mediaSheetCount property
            ## @param value Value to set for the media_sheet_count property.
            ## @return a void
            ## 
            def media_sheet_count=(value)
                @media_sheet_count = value
            end
            ## 
            ## Gets the pageCount property value. The pageCount property
            ## @return a int64
            ## 
            def page_count
                return @page_count
            end
            ## 
            ## Sets the pageCount property value. The pageCount property
            ## @param value Value to set for the page_count property.
            ## @return a void
            ## 
            def page_count=(value)
                @page_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("blackAndWhitePageCount", @black_and_white_page_count)
                writer.write_object_value("colorPageCount", @color_page_count)
                writer.write_object_value("completedBlackAndWhiteJobCount", @completed_black_and_white_job_count)
                writer.write_object_value("completedColorJobCount", @completed_color_job_count)
                writer.write_object_value("completedJobCount", @completed_job_count)
                writer.write_object_value("doubleSidedSheetCount", @double_sided_sheet_count)
                writer.write_object_value("incompleteJobCount", @incomplete_job_count)
                writer.write_object_value("mediaSheetCount", @media_sheet_count)
                writer.write_object_value("pageCount", @page_count)
                writer.write_object_value("singleSidedSheetCount", @single_sided_sheet_count)
                writer.write_date_value("usageDate", @usage_date)
            end
            ## 
            ## Gets the singleSidedSheetCount property value. The singleSidedSheetCount property
            ## @return a int64
            ## 
            def single_sided_sheet_count
                return @single_sided_sheet_count
            end
            ## 
            ## Sets the singleSidedSheetCount property value. The singleSidedSheetCount property
            ## @param value Value to set for the single_sided_sheet_count property.
            ## @return a void
            ## 
            def single_sided_sheet_count=(value)
                @single_sided_sheet_count = value
            end
            ## 
            ## Gets the usageDate property value. The usageDate property
            ## @return a date
            ## 
            def usage_date
                return @usage_date
            end
            ## 
            ## Sets the usageDate property value. The usageDate property
            ## @param value Value to set for the usage_date property.
            ## @return a void
            ## 
            def usage_date=(value)
                @usage_date = value
            end
        end
    end
end
