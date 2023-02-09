require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ArchivedPrintJob
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # True if the job was acquired by a printer; false otherwise. Read-only.
            @acquired_by_printer
            ## 
            # The dateTimeOffset when the job was acquired by the printer, if any. Read-only.
            @acquired_date_time
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The dateTimeOffset when the job was completed, canceled or aborted. Read-only.
            @completion_date_time
            ## 
            # The number of copies that were printed. Read-only.
            @copies_printed
            ## 
            # The user who created the print job. Read-only.
            @created_by
            ## 
            # The dateTimeOffset when the job was created. Read-only.
            @created_date_time
            ## 
            # The archived print job's GUID. Read-only.
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The printer ID that the job was queued for. Read-only.
            @printer_id
            ## 
            # The processingState property
            @processing_state
            ## 
            ## Gets the acquiredByPrinter property value. True if the job was acquired by a printer; false otherwise. Read-only.
            ## @return a boolean
            ## 
            def acquired_by_printer
                return @acquired_by_printer
            end
            ## 
            ## Sets the acquiredByPrinter property value. True if the job was acquired by a printer; false otherwise. Read-only.
            ## @param value Value to set for the acquired_by_printer property.
            ## @return a void
            ## 
            def acquired_by_printer=(value)
                @acquired_by_printer = value
            end
            ## 
            ## Gets the acquiredDateTime property value. The dateTimeOffset when the job was acquired by the printer, if any. Read-only.
            ## @return a date_time
            ## 
            def acquired_date_time
                return @acquired_date_time
            end
            ## 
            ## Sets the acquiredDateTime property value. The dateTimeOffset when the job was acquired by the printer, if any. Read-only.
            ## @param value Value to set for the acquired_date_time property.
            ## @return a void
            ## 
            def acquired_date_time=(value)
                @acquired_date_time = value
            end
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
            ## Gets the completionDateTime property value. The dateTimeOffset when the job was completed, canceled or aborted. Read-only.
            ## @return a date_time
            ## 
            def completion_date_time
                return @completion_date_time
            end
            ## 
            ## Sets the completionDateTime property value. The dateTimeOffset when the job was completed, canceled or aborted. Read-only.
            ## @param value Value to set for the completion_date_time property.
            ## @return a void
            ## 
            def completion_date_time=(value)
                @completion_date_time = value
            end
            ## 
            ## Instantiates a new archivedPrintJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the copiesPrinted property value. The number of copies that were printed. Read-only.
            ## @return a integer
            ## 
            def copies_printed
                return @copies_printed
            end
            ## 
            ## Sets the copiesPrinted property value. The number of copies that were printed. Read-only.
            ## @param value Value to set for the copies_printed property.
            ## @return a void
            ## 
            def copies_printed=(value)
                @copies_printed = value
            end
            ## 
            ## Gets the createdBy property value. The user who created the print job. Read-only.
            ## @return a user_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The user who created the print job. Read-only.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The dateTimeOffset when the job was created. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The dateTimeOffset when the job was created. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a archived_print_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ArchivedPrintJob.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "acquiredByPrinter" => lambda {|n| @acquired_by_printer = n.get_boolean_value() },
                    "acquiredDateTime" => lambda {|n| @acquired_date_time = n.get_date_time_value() },
                    "completionDateTime" => lambda {|n| @completion_date_time = n.get_date_time_value() },
                    "copiesPrinted" => lambda {|n| @copies_printed = n.get_number_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "printerId" => lambda {|n| @printer_id = n.get_string_value() },
                    "processingState" => lambda {|n| @processing_state = n.get_enum_value(MicrosoftGraph::Models::PrintJobProcessingState) },
                }
            end
            ## 
            ## Gets the id property value. The archived print job's GUID. Read-only.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The archived print job's GUID. Read-only.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## Gets the printerId property value. The printer ID that the job was queued for. Read-only.
            ## @return a string
            ## 
            def printer_id
                return @printer_id
            end
            ## 
            ## Sets the printerId property value. The printer ID that the job was queued for. Read-only.
            ## @param value Value to set for the printer_id property.
            ## @return a void
            ## 
            def printer_id=(value)
                @printer_id = value
            end
            ## 
            ## Gets the processingState property value. The processingState property
            ## @return a print_job_processing_state
            ## 
            def processing_state
                return @processing_state
            end
            ## 
            ## Sets the processingState property value. The processingState property
            ## @param value Value to set for the processing_state property.
            ## @return a void
            ## 
            def processing_state=(value)
                @processing_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("acquiredByPrinter", @acquired_by_printer)
                writer.write_date_time_value("acquiredDateTime", @acquired_date_time)
                writer.write_date_time_value("completionDateTime", @completion_date_time)
                writer.write_number_value("copiesPrinted", @copies_printed)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("printerId", @printer_id)
                writer.write_enum_value("processingState", @processing_state)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
