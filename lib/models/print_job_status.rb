require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintJobStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A human-readable description of the print job's current processing state. Read-only.
            @description
            ## 
            # Additional details for print job state. Valid values are described in the following table. Read-only.
            @details
            ## 
            # True if the job was acknowledged by a printer; false otherwise. Read-only.
            @is_acquired_by_printer
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The state property
            @state
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
            ## Instantiates a new printJobStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_job_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintJobStatus.new
            end
            ## 
            ## Gets the description property value. A human-readable description of the print job's current processing state. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A human-readable description of the print job's current processing state. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the details property value. Additional details for print job state. Valid values are described in the following table. Read-only.
            ## @return a print_job_state_detail
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. Additional details for print job state. Valid values are described in the following table. Read-only.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "details" => lambda {|n| @details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintJobStateDetail.create_from_discriminator_value(pn) }) },
                    "isAcquiredByPrinter" => lambda {|n| @is_acquired_by_printer = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::PrintJobProcessingState) },
                }
            end
            ## 
            ## Gets the isAcquiredByPrinter property value. True if the job was acknowledged by a printer; false otherwise. Read-only.
            ## @return a boolean
            ## 
            def is_acquired_by_printer
                return @is_acquired_by_printer
            end
            ## 
            ## Sets the isAcquiredByPrinter property value. True if the job was acknowledged by a printer; false otherwise. Read-only.
            ## @param value Value to set for the is_acquired_by_printer property.
            ## @return a void
            ## 
            def is_acquired_by_printer=(value)
                @is_acquired_by_printer = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("details", @details)
                writer.write_boolean_value("isAcquiredByPrinter", @is_acquired_by_printer)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("state", @state)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a print_job_processing_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
