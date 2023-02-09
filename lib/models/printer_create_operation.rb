require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrinterCreateOperation < MicrosoftGraph::Models::PrintOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The signed certificate created during the registration process. Read-only.
            @certificate
            ## 
            # The created printer entity. Read-only.
            @printer
            ## 
            ## Gets the certificate property value. The signed certificate created during the registration process. Read-only.
            ## @return a string
            ## 
            def certificate
                return @certificate
            end
            ## 
            ## Sets the certificate property value. The signed certificate created during the registration process. Read-only.
            ## @param value Value to set for the certificate property.
            ## @return a void
            ## 
            def certificate=(value)
                @certificate = value
            end
            ## 
            ## Instantiates a new PrinterCreateOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.printerCreateOperation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a printer_create_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrinterCreateOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificate" => lambda {|n| @certificate = n.get_string_value() },
                    "printer" => lambda {|n| @printer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Printer.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the printer property value. The created printer entity. Read-only.
            ## @return a printer
            ## 
            def printer
                return @printer
            end
            ## 
            ## Sets the printer property value. The created printer entity. Read-only.
            ## @param value Value to set for the printer property.
            ## @return a void
            ## 
            def printer=(value)
                @printer = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("certificate", @certificate)
                writer.write_object_value("printer", @printer)
            end
        end
    end
end
