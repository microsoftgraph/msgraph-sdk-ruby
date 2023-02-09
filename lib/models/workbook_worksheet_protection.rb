require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookWorksheetProtection < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Sheet protection options. Read-only.
            @options
            ## 
            # Indicates if the worksheet is protected.  Read-only.
            @protected
            ## 
            ## Instantiates a new workbookWorksheetProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_worksheet_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookWorksheetProtection.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "options" => lambda {|n| @options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheetProtectionOptions.create_from_discriminator_value(pn) }) },
                    "protected" => lambda {|n| @protected = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the options property value. Sheet protection options. Read-only.
            ## @return a workbook_worksheet_protection_options
            ## 
            def options
                return @options
            end
            ## 
            ## Sets the options property value. Sheet protection options. Read-only.
            ## @param value Value to set for the options property.
            ## @return a void
            ## 
            def options=(value)
                @options = value
            end
            ## 
            ## Gets the protected property value. Indicates if the worksheet is protected.  Read-only.
            ## @return a boolean
            ## 
            def protected
                return @protected
            end
            ## 
            ## Sets the protected property value. Indicates if the worksheet is protected.  Read-only.
            ## @param value Value to set for the protected property.
            ## @return a void
            ## 
            def protected=(value)
                @protected = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("options", @options)
                writer.write_boolean_value("protected", @protected)
            end
        end
    end
end
