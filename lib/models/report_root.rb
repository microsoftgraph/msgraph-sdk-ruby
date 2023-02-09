require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ReportRoot
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The dailyPrintUsageByPrinter property
            @daily_print_usage_by_printer
            ## 
            # The dailyPrintUsageByUser property
            @daily_print_usage_by_user
            ## 
            # The monthlyPrintUsageByPrinter property
            @monthly_print_usage_by_printer
            ## 
            # The monthlyPrintUsageByUser property
            @monthly_print_usage_by_user
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The security property
            @security
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
            ## Instantiates a new ReportRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a report_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReportRoot.new
            end
            ## 
            ## Gets the dailyPrintUsageByPrinter property value. The dailyPrintUsageByPrinter property
            ## @return a print_usage_by_printer
            ## 
            def daily_print_usage_by_printer
                return @daily_print_usage_by_printer
            end
            ## 
            ## Sets the dailyPrintUsageByPrinter property value. The dailyPrintUsageByPrinter property
            ## @param value Value to set for the daily_print_usage_by_printer property.
            ## @return a void
            ## 
            def daily_print_usage_by_printer=(value)
                @daily_print_usage_by_printer = value
            end
            ## 
            ## Gets the dailyPrintUsageByUser property value. The dailyPrintUsageByUser property
            ## @return a print_usage_by_user
            ## 
            def daily_print_usage_by_user
                return @daily_print_usage_by_user
            end
            ## 
            ## Sets the dailyPrintUsageByUser property value. The dailyPrintUsageByUser property
            ## @param value Value to set for the daily_print_usage_by_user property.
            ## @return a void
            ## 
            def daily_print_usage_by_user=(value)
                @daily_print_usage_by_user = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dailyPrintUsageByPrinter" => lambda {|n| @daily_print_usage_by_printer = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintUsageByPrinter.create_from_discriminator_value(pn) }) },
                    "dailyPrintUsageByUser" => lambda {|n| @daily_print_usage_by_user = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintUsageByUser.create_from_discriminator_value(pn) }) },
                    "monthlyPrintUsageByPrinter" => lambda {|n| @monthly_print_usage_by_printer = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintUsageByPrinter.create_from_discriminator_value(pn) }) },
                    "monthlyPrintUsageByUser" => lambda {|n| @monthly_print_usage_by_user = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintUsageByUser.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "security" => lambda {|n| @security = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityReportsRoot.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the monthlyPrintUsageByPrinter property value. The monthlyPrintUsageByPrinter property
            ## @return a print_usage_by_printer
            ## 
            def monthly_print_usage_by_printer
                return @monthly_print_usage_by_printer
            end
            ## 
            ## Sets the monthlyPrintUsageByPrinter property value. The monthlyPrintUsageByPrinter property
            ## @param value Value to set for the monthly_print_usage_by_printer property.
            ## @return a void
            ## 
            def monthly_print_usage_by_printer=(value)
                @monthly_print_usage_by_printer = value
            end
            ## 
            ## Gets the monthlyPrintUsageByUser property value. The monthlyPrintUsageByUser property
            ## @return a print_usage_by_user
            ## 
            def monthly_print_usage_by_user
                return @monthly_print_usage_by_user
            end
            ## 
            ## Sets the monthlyPrintUsageByUser property value. The monthlyPrintUsageByUser property
            ## @param value Value to set for the monthly_print_usage_by_user property.
            ## @return a void
            ## 
            def monthly_print_usage_by_user=(value)
                @monthly_print_usage_by_user = value
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
            ## Gets the security property value. The security property
            ## @return a security_reports_root
            ## 
            def security
                return @security
            end
            ## 
            ## Sets the security property value. The security property
            ## @param value Value to set for the security property.
            ## @return a void
            ## 
            def security=(value)
                @security = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("dailyPrintUsageByPrinter", @daily_print_usage_by_printer)
                writer.write_collection_of_object_values("dailyPrintUsageByUser", @daily_print_usage_by_user)
                writer.write_collection_of_object_values("monthlyPrintUsageByPrinter", @monthly_print_usage_by_printer)
                writer.write_collection_of_object_values("monthlyPrintUsageByUser", @monthly_print_usage_by_user)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("security", @security)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
