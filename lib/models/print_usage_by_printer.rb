require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintUsageByPrinter < MicrosoftGraph::Models::PrintUsage
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The printerId property
            @printer_id
            ## 
            ## Instantiates a new PrintUsageByPrinter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.printUsageByPrinter"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_usage_by_printer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintUsageByPrinter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "printerId" => lambda {|n| @printer_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the printerId property value. The printerId property
            ## @return a string
            ## 
            def printer_id
                return @printer_id
            end
            ## 
            ## Sets the printerId property value. The printerId property
            ## @param value Value to set for the printer_id property.
            ## @return a void
            ## 
            def printer_id=(value)
                @printer_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("printerId", @printer_id)
            end
        end
    end
end
