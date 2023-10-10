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
            # Container for navigation properties for Azure AD authentication methods resources.
            @authentication_methods
            ## 
            # Retrieve a list of daily print usage summaries, grouped by printer.
            @daily_print_usage_by_printer
            ## 
            # Retrieve a list of daily print usage summaries, grouped by user.
            @daily_print_usage_by_user
            ## 
            # Retrieve a list of monthly print usage summaries, grouped by printer.
            @monthly_print_usage_by_printer
            ## 
            # Retrieve a list of monthly print usage summaries, grouped by user.
            @monthly_print_usage_by_user
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents an abstract type that contains resources for attack simulation and training reports.
            @security
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the authenticationMethods property value. Container for navigation properties for Azure AD authentication methods resources.
            ## @return a authentication_methods_root
            ## 
            def authentication_methods
                return @authentication_methods
            end
            ## 
            ## Sets the authenticationMethods property value. Container for navigation properties for Azure AD authentication methods resources.
            ## @param value Value to set for the authenticationMethods property.
            ## @return a void
            ## 
            def authentication_methods=(value)
                @authentication_methods = value
            end
            ## 
            ## Instantiates a new reportRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a report_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReportRoot.new
            end
            ## 
            ## Gets the dailyPrintUsageByPrinter property value. Retrieve a list of daily print usage summaries, grouped by printer.
            ## @return a print_usage_by_printer
            ## 
            def daily_print_usage_by_printer
                return @daily_print_usage_by_printer
            end
            ## 
            ## Sets the dailyPrintUsageByPrinter property value. Retrieve a list of daily print usage summaries, grouped by printer.
            ## @param value Value to set for the dailyPrintUsageByPrinter property.
            ## @return a void
            ## 
            def daily_print_usage_by_printer=(value)
                @daily_print_usage_by_printer = value
            end
            ## 
            ## Gets the dailyPrintUsageByUser property value. Retrieve a list of daily print usage summaries, grouped by user.
            ## @return a print_usage_by_user
            ## 
            def daily_print_usage_by_user
                return @daily_print_usage_by_user
            end
            ## 
            ## Sets the dailyPrintUsageByUser property value. Retrieve a list of daily print usage summaries, grouped by user.
            ## @param value Value to set for the dailyPrintUsageByUser property.
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
                    "authenticationMethods" => lambda {|n| @authentication_methods = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodsRoot.create_from_discriminator_value(pn) }) },
                    "dailyPrintUsageByPrinter" => lambda {|n| @daily_print_usage_by_printer = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintUsageByPrinter.create_from_discriminator_value(pn) }) },
                    "dailyPrintUsageByUser" => lambda {|n| @daily_print_usage_by_user = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintUsageByUser.create_from_discriminator_value(pn) }) },
                    "monthlyPrintUsageByPrinter" => lambda {|n| @monthly_print_usage_by_printer = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintUsageByPrinter.create_from_discriminator_value(pn) }) },
                    "monthlyPrintUsageByUser" => lambda {|n| @monthly_print_usage_by_user = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintUsageByUser.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "security" => lambda {|n| @security = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityReportsRoot.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the monthlyPrintUsageByPrinter property value. Retrieve a list of monthly print usage summaries, grouped by printer.
            ## @return a print_usage_by_printer
            ## 
            def monthly_print_usage_by_printer
                return @monthly_print_usage_by_printer
            end
            ## 
            ## Sets the monthlyPrintUsageByPrinter property value. Retrieve a list of monthly print usage summaries, grouped by printer.
            ## @param value Value to set for the monthlyPrintUsageByPrinter property.
            ## @return a void
            ## 
            def monthly_print_usage_by_printer=(value)
                @monthly_print_usage_by_printer = value
            end
            ## 
            ## Gets the monthlyPrintUsageByUser property value. Retrieve a list of monthly print usage summaries, grouped by user.
            ## @return a print_usage_by_user
            ## 
            def monthly_print_usage_by_user
                return @monthly_print_usage_by_user
            end
            ## 
            ## Sets the monthlyPrintUsageByUser property value. Retrieve a list of monthly print usage summaries, grouped by user.
            ## @param value Value to set for the monthlyPrintUsageByUser property.
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the security property value. Represents an abstract type that contains resources for attack simulation and training reports.
            ## @return a security_reports_root
            ## 
            def security
                return @security
            end
            ## 
            ## Sets the security property value. Represents an abstract type that contains resources for attack simulation and training reports.
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
                writer.write_object_value("authenticationMethods", @authentication_methods)
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
