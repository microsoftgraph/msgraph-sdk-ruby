require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrinterDefaults
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The default color mode to use when printing the document. Valid values are described in the following table.
            @color_mode
            ## 
            # The default content (MIME) type to use when processing documents.
            @content_type
            ## 
            # The default number of copies printed per job.
            @copies_per_job
            ## 
            # The default resolution in DPI to use when printing the job.
            @dpi
            ## 
            # The default duplex (double-sided) configuration to use when printing a document. Valid values are described in the following table.
            @duplex_mode
            ## 
            # The default set of finishings to apply to print jobs. Valid values are described in the following table.
            @finishings
            ## 
            # The default fitPdfToPage setting. True to fit each page of a PDF document to a physical sheet of media; false to let the printer decide how to lay out impressions.
            @fit_pdf_to_page
            ## 
            # The inputBin property
            @input_bin
            ## 
            # The default media (such as paper) color to print the document on.
            @media_color
            ## 
            # The default media size to use. Supports standard size names for ISO and ANSI media sizes. Valid values are listed in the printerCapabilities topic.
            @media_size
            ## 
            # The default media (such as paper) type to print the document on.
            @media_type
            ## 
            # The default direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.
            @multipage_layout
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The default orientation to use when printing the document. Valid values are described in the following table.
            @orientation
            ## 
            # The default output bin to place completed prints into. See the printer's capabilities for a list of supported output bins.
            @output_bin
            ## 
            # The default number of document pages to print on each sheet.
            @pages_per_sheet
            ## 
            # The default quality to use when printing the document. Valid values are described in the following table.
            @quality
            ## 
            # Specifies how the printer scales the document data to fit the requested media. Valid values are described in the following table.
            @scaling
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the colorMode property value. The default color mode to use when printing the document. Valid values are described in the following table.
            ## @return a print_color_mode
            ## 
            def color_mode
                return @color_mode
            end
            ## 
            ## Sets the colorMode property value. The default color mode to use when printing the document. Valid values are described in the following table.
            ## @param value Value to set for the color_mode property.
            ## @return a void
            ## 
            def color_mode=(value)
                @color_mode = value
            end
            ## 
            ## Instantiates a new printerDefaults and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentType property value. The default content (MIME) type to use when processing documents.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The default content (MIME) type to use when processing documents.
            ## @param value Value to set for the content_type property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Gets the copiesPerJob property value. The default number of copies printed per job.
            ## @return a integer
            ## 
            def copies_per_job
                return @copies_per_job
            end
            ## 
            ## Sets the copiesPerJob property value. The default number of copies printed per job.
            ## @param value Value to set for the copies_per_job property.
            ## @return a void
            ## 
            def copies_per_job=(value)
                @copies_per_job = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a printer_defaults
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrinterDefaults.new
            end
            ## 
            ## Gets the dpi property value. The default resolution in DPI to use when printing the job.
            ## @return a integer
            ## 
            def dpi
                return @dpi
            end
            ## 
            ## Sets the dpi property value. The default resolution in DPI to use when printing the job.
            ## @param value Value to set for the dpi property.
            ## @return a void
            ## 
            def dpi=(value)
                @dpi = value
            end
            ## 
            ## Gets the duplexMode property value. The default duplex (double-sided) configuration to use when printing a document. Valid values are described in the following table.
            ## @return a print_duplex_mode
            ## 
            def duplex_mode
                return @duplex_mode
            end
            ## 
            ## Sets the duplexMode property value. The default duplex (double-sided) configuration to use when printing a document. Valid values are described in the following table.
            ## @param value Value to set for the duplex_mode property.
            ## @return a void
            ## 
            def duplex_mode=(value)
                @duplex_mode = value
            end
            ## 
            ## Gets the finishings property value. The default set of finishings to apply to print jobs. Valid values are described in the following table.
            ## @return a print_finishing
            ## 
            def finishings
                return @finishings
            end
            ## 
            ## Sets the finishings property value. The default set of finishings to apply to print jobs. Valid values are described in the following table.
            ## @param value Value to set for the finishings property.
            ## @return a void
            ## 
            def finishings=(value)
                @finishings = value
            end
            ## 
            ## Gets the fitPdfToPage property value. The default fitPdfToPage setting. True to fit each page of a PDF document to a physical sheet of media; false to let the printer decide how to lay out impressions.
            ## @return a boolean
            ## 
            def fit_pdf_to_page
                return @fit_pdf_to_page
            end
            ## 
            ## Sets the fitPdfToPage property value. The default fitPdfToPage setting. True to fit each page of a PDF document to a physical sheet of media; false to let the printer decide how to lay out impressions.
            ## @param value Value to set for the fit_pdf_to_page property.
            ## @return a void
            ## 
            def fit_pdf_to_page=(value)
                @fit_pdf_to_page = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "colorMode" => lambda {|n| @color_mode = n.get_enum_value(MicrosoftGraph::Models::PrintColorMode) },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "copiesPerJob" => lambda {|n| @copies_per_job = n.get_number_value() },
                    "dpi" => lambda {|n| @dpi = n.get_number_value() },
                    "duplexMode" => lambda {|n| @duplex_mode = n.get_enum_value(MicrosoftGraph::Models::PrintDuplexMode) },
                    "finishings" => lambda {|n| @finishings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintFinishing.create_from_discriminator_value(pn) }) },
                    "fitPdfToPage" => lambda {|n| @fit_pdf_to_page = n.get_boolean_value() },
                    "inputBin" => lambda {|n| @input_bin = n.get_string_value() },
                    "mediaColor" => lambda {|n| @media_color = n.get_string_value() },
                    "mediaSize" => lambda {|n| @media_size = n.get_string_value() },
                    "mediaType" => lambda {|n| @media_type = n.get_string_value() },
                    "multipageLayout" => lambda {|n| @multipage_layout = n.get_enum_value(MicrosoftGraph::Models::PrintMultipageLayout) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "orientation" => lambda {|n| @orientation = n.get_enum_value(MicrosoftGraph::Models::PrintOrientation) },
                    "outputBin" => lambda {|n| @output_bin = n.get_string_value() },
                    "pagesPerSheet" => lambda {|n| @pages_per_sheet = n.get_number_value() },
                    "quality" => lambda {|n| @quality = n.get_enum_value(MicrosoftGraph::Models::PrintQuality) },
                    "scaling" => lambda {|n| @scaling = n.get_enum_value(MicrosoftGraph::Models::PrintScaling) },
                }
            end
            ## 
            ## Gets the inputBin property value. The inputBin property
            ## @return a string
            ## 
            def input_bin
                return @input_bin
            end
            ## 
            ## Sets the inputBin property value. The inputBin property
            ## @param value Value to set for the input_bin property.
            ## @return a void
            ## 
            def input_bin=(value)
                @input_bin = value
            end
            ## 
            ## Gets the mediaColor property value. The default media (such as paper) color to print the document on.
            ## @return a string
            ## 
            def media_color
                return @media_color
            end
            ## 
            ## Sets the mediaColor property value. The default media (such as paper) color to print the document on.
            ## @param value Value to set for the media_color property.
            ## @return a void
            ## 
            def media_color=(value)
                @media_color = value
            end
            ## 
            ## Gets the mediaSize property value. The default media size to use. Supports standard size names for ISO and ANSI media sizes. Valid values are listed in the printerCapabilities topic.
            ## @return a string
            ## 
            def media_size
                return @media_size
            end
            ## 
            ## Sets the mediaSize property value. The default media size to use. Supports standard size names for ISO and ANSI media sizes. Valid values are listed in the printerCapabilities topic.
            ## @param value Value to set for the media_size property.
            ## @return a void
            ## 
            def media_size=(value)
                @media_size = value
            end
            ## 
            ## Gets the mediaType property value. The default media (such as paper) type to print the document on.
            ## @return a string
            ## 
            def media_type
                return @media_type
            end
            ## 
            ## Sets the mediaType property value. The default media (such as paper) type to print the document on.
            ## @param value Value to set for the media_type property.
            ## @return a void
            ## 
            def media_type=(value)
                @media_type = value
            end
            ## 
            ## Gets the multipageLayout property value. The default direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.
            ## @return a print_multipage_layout
            ## 
            def multipage_layout
                return @multipage_layout
            end
            ## 
            ## Sets the multipageLayout property value. The default direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.
            ## @param value Value to set for the multipage_layout property.
            ## @return a void
            ## 
            def multipage_layout=(value)
                @multipage_layout = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the orientation property value. The default orientation to use when printing the document. Valid values are described in the following table.
            ## @return a print_orientation
            ## 
            def orientation
                return @orientation
            end
            ## 
            ## Sets the orientation property value. The default orientation to use when printing the document. Valid values are described in the following table.
            ## @param value Value to set for the orientation property.
            ## @return a void
            ## 
            def orientation=(value)
                @orientation = value
            end
            ## 
            ## Gets the outputBin property value. The default output bin to place completed prints into. See the printer's capabilities for a list of supported output bins.
            ## @return a string
            ## 
            def output_bin
                return @output_bin
            end
            ## 
            ## Sets the outputBin property value. The default output bin to place completed prints into. See the printer's capabilities for a list of supported output bins.
            ## @param value Value to set for the output_bin property.
            ## @return a void
            ## 
            def output_bin=(value)
                @output_bin = value
            end
            ## 
            ## Gets the pagesPerSheet property value. The default number of document pages to print on each sheet.
            ## @return a integer
            ## 
            def pages_per_sheet
                return @pages_per_sheet
            end
            ## 
            ## Sets the pagesPerSheet property value. The default number of document pages to print on each sheet.
            ## @param value Value to set for the pages_per_sheet property.
            ## @return a void
            ## 
            def pages_per_sheet=(value)
                @pages_per_sheet = value
            end
            ## 
            ## Gets the quality property value. The default quality to use when printing the document. Valid values are described in the following table.
            ## @return a print_quality
            ## 
            def quality
                return @quality
            end
            ## 
            ## Sets the quality property value. The default quality to use when printing the document. Valid values are described in the following table.
            ## @param value Value to set for the quality property.
            ## @return a void
            ## 
            def quality=(value)
                @quality = value
            end
            ## 
            ## Gets the scaling property value. Specifies how the printer scales the document data to fit the requested media. Valid values are described in the following table.
            ## @return a print_scaling
            ## 
            def scaling
                return @scaling
            end
            ## 
            ## Sets the scaling property value. Specifies how the printer scales the document data to fit the requested media. Valid values are described in the following table.
            ## @param value Value to set for the scaling property.
            ## @return a void
            ## 
            def scaling=(value)
                @scaling = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("colorMode", @color_mode)
                writer.write_string_value("contentType", @content_type)
                writer.write_number_value("copiesPerJob", @copies_per_job)
                writer.write_number_value("dpi", @dpi)
                writer.write_enum_value("duplexMode", @duplex_mode)
                writer.write_collection_of_object_values("finishings", @finishings)
                writer.write_boolean_value("fitPdfToPage", @fit_pdf_to_page)
                writer.write_string_value("inputBin", @input_bin)
                writer.write_string_value("mediaColor", @media_color)
                writer.write_string_value("mediaSize", @media_size)
                writer.write_string_value("mediaType", @media_type)
                writer.write_enum_value("multipageLayout", @multipage_layout)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("orientation", @orientation)
                writer.write_string_value("outputBin", @output_bin)
                writer.write_number_value("pagesPerSheet", @pages_per_sheet)
                writer.write_enum_value("quality", @quality)
                writer.write_enum_value("scaling", @scaling)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
