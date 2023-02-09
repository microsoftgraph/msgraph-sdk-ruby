require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsDefenderScanActionResult < MicrosoftGraph::Models::DeviceActionResult
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Scan type either full scan or quick scan
            @scan_type
            ## 
            ## Instantiates a new WindowsDefenderScanActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_defender_scan_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDefenderScanActionResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "scanType" => lambda {|n| @scan_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the scanType property value. Scan type either full scan or quick scan
            ## @return a string
            ## 
            def scan_type
                return @scan_type
            end
            ## 
            ## Sets the scanType property value. Scan type either full scan or quick scan
            ## @param value Value to set for the scan_type property.
            ## @return a void
            ## 
            def scan_type=(value)
                @scan_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("scanType", @scan_type)
            end
        end
    end
end
