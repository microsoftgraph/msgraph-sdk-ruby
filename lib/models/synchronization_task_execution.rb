require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationTaskExecution
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identifier of the job run.
            @activity_identifier
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Count of processed entries that were assigned for this application.
            @count_entitled
            ## 
            # Count of processed entries that were assigned for provisioning.
            @count_entitled_for_provisioning
            ## 
            # Count of entries that were escrowed (errors).
            @count_escrowed
            ## 
            # Count of entries that were escrowed, including system-generated escrows.
            @count_escrowed_raw
            ## 
            # Count of exported entries.
            @count_exported
            ## 
            # Count of entries that were expected to be exported.
            @count_exports
            ## 
            # Count of imported entries.
            @count_imported
            ## 
            # Count of imported delta-changes.
            @count_imported_deltas
            ## 
            # Count of imported delta-changes pertaining to reference changes.
            @count_imported_reference_deltas
            ## 
            # If an error was encountered, contains a synchronizationError object with details.
            @error
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The state property
            @state
            ## 
            # Time when this job run began. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @time_began
            ## 
            # Time when this job run ended. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @time_ended
            ## 
            ## Gets the activityIdentifier property value. Identifier of the job run.
            ## @return a string
            ## 
            def activity_identifier
                return @activity_identifier
            end
            ## 
            ## Sets the activityIdentifier property value. Identifier of the job run.
            ## @param value Value to set for the activityIdentifier property.
            ## @return a void
            ## 
            def activity_identifier=(value)
                @activity_identifier = value
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new synchronizationTaskExecution and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countEntitled property value. Count of processed entries that were assigned for this application.
            ## @return a int64
            ## 
            def count_entitled
                return @count_entitled
            end
            ## 
            ## Sets the countEntitled property value. Count of processed entries that were assigned for this application.
            ## @param value Value to set for the countEntitled property.
            ## @return a void
            ## 
            def count_entitled=(value)
                @count_entitled = value
            end
            ## 
            ## Gets the countEntitledForProvisioning property value. Count of processed entries that were assigned for provisioning.
            ## @return a int64
            ## 
            def count_entitled_for_provisioning
                return @count_entitled_for_provisioning
            end
            ## 
            ## Sets the countEntitledForProvisioning property value. Count of processed entries that were assigned for provisioning.
            ## @param value Value to set for the countEntitledForProvisioning property.
            ## @return a void
            ## 
            def count_entitled_for_provisioning=(value)
                @count_entitled_for_provisioning = value
            end
            ## 
            ## Gets the countEscrowed property value. Count of entries that were escrowed (errors).
            ## @return a int64
            ## 
            def count_escrowed
                return @count_escrowed
            end
            ## 
            ## Sets the countEscrowed property value. Count of entries that were escrowed (errors).
            ## @param value Value to set for the countEscrowed property.
            ## @return a void
            ## 
            def count_escrowed=(value)
                @count_escrowed = value
            end
            ## 
            ## Gets the countEscrowedRaw property value. Count of entries that were escrowed, including system-generated escrows.
            ## @return a int64
            ## 
            def count_escrowed_raw
                return @count_escrowed_raw
            end
            ## 
            ## Sets the countEscrowedRaw property value. Count of entries that were escrowed, including system-generated escrows.
            ## @param value Value to set for the countEscrowedRaw property.
            ## @return a void
            ## 
            def count_escrowed_raw=(value)
                @count_escrowed_raw = value
            end
            ## 
            ## Gets the countExported property value. Count of exported entries.
            ## @return a int64
            ## 
            def count_exported
                return @count_exported
            end
            ## 
            ## Sets the countExported property value. Count of exported entries.
            ## @param value Value to set for the countExported property.
            ## @return a void
            ## 
            def count_exported=(value)
                @count_exported = value
            end
            ## 
            ## Gets the countExports property value. Count of entries that were expected to be exported.
            ## @return a int64
            ## 
            def count_exports
                return @count_exports
            end
            ## 
            ## Sets the countExports property value. Count of entries that were expected to be exported.
            ## @param value Value to set for the countExports property.
            ## @return a void
            ## 
            def count_exports=(value)
                @count_exports = value
            end
            ## 
            ## Gets the countImported property value. Count of imported entries.
            ## @return a int64
            ## 
            def count_imported
                return @count_imported
            end
            ## 
            ## Sets the countImported property value. Count of imported entries.
            ## @param value Value to set for the countImported property.
            ## @return a void
            ## 
            def count_imported=(value)
                @count_imported = value
            end
            ## 
            ## Gets the countImportedDeltas property value. Count of imported delta-changes.
            ## @return a int64
            ## 
            def count_imported_deltas
                return @count_imported_deltas
            end
            ## 
            ## Sets the countImportedDeltas property value. Count of imported delta-changes.
            ## @param value Value to set for the countImportedDeltas property.
            ## @return a void
            ## 
            def count_imported_deltas=(value)
                @count_imported_deltas = value
            end
            ## 
            ## Gets the countImportedReferenceDeltas property value. Count of imported delta-changes pertaining to reference changes.
            ## @return a int64
            ## 
            def count_imported_reference_deltas
                return @count_imported_reference_deltas
            end
            ## 
            ## Sets the countImportedReferenceDeltas property value. Count of imported delta-changes pertaining to reference changes.
            ## @param value Value to set for the countImportedReferenceDeltas property.
            ## @return a void
            ## 
            def count_imported_reference_deltas=(value)
                @count_imported_reference_deltas = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_task_execution
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationTaskExecution.new
            end
            ## 
            ## Gets the error property value. If an error was encountered, contains a synchronizationError object with details.
            ## @return a synchronization_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. If an error was encountered, contains a synchronizationError object with details.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "activityIdentifier" => lambda {|n| @activity_identifier = n.get_string_value() },
                    "countEntitled" => lambda {|n| @count_entitled = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "countEntitledForProvisioning" => lambda {|n| @count_entitled_for_provisioning = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "countEscrowed" => lambda {|n| @count_escrowed = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "countEscrowedRaw" => lambda {|n| @count_escrowed_raw = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "countExported" => lambda {|n| @count_exported = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "countExports" => lambda {|n| @count_exports = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "countImported" => lambda {|n| @count_imported = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "countImportedDeltas" => lambda {|n| @count_imported_deltas = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "countImportedReferenceDeltas" => lambda {|n| @count_imported_reference_deltas = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationError.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::SynchronizationTaskExecutionResult) },
                    "timeBegan" => lambda {|n| @time_began = n.get_date_time_value() },
                    "timeEnded" => lambda {|n| @time_ended = n.get_date_time_value() },
                }
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("activityIdentifier", @activity_identifier) unless @activity_identifier.nil?
                writer.write_object_value("countEntitled", @count_entitled) unless @count_entitled.nil?
                writer.write_object_value("countEntitledForProvisioning", @count_entitled_for_provisioning) unless @count_entitled_for_provisioning.nil?
                writer.write_object_value("countEscrowed", @count_escrowed) unless @count_escrowed.nil?
                writer.write_object_value("countEscrowedRaw", @count_escrowed_raw) unless @count_escrowed_raw.nil?
                writer.write_object_value("countExported", @count_exported) unless @count_exported.nil?
                writer.write_object_value("countExports", @count_exports) unless @count_exports.nil?
                writer.write_object_value("countImported", @count_imported) unless @count_imported.nil?
                writer.write_object_value("countImportedDeltas", @count_imported_deltas) unless @count_imported_deltas.nil?
                writer.write_object_value("countImportedReferenceDeltas", @count_imported_reference_deltas) unless @count_imported_reference_deltas.nil?
                writer.write_object_value("error", @error) unless @error.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_enum_value("state", @state) unless @state.nil?
                writer.write_date_time_value("timeBegan", @time_began) unless @time_began.nil?
                writer.write_date_time_value("timeEnded", @time_ended) unless @time_ended.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a synchronization_task_execution_result
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
            ## 
            ## Gets the timeBegan property value. Time when this job run began. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def time_began
                return @time_began
            end
            ## 
            ## Sets the timeBegan property value. Time when this job run began. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the timeBegan property.
            ## @return a void
            ## 
            def time_began=(value)
                @time_began = value
            end
            ## 
            ## Gets the timeEnded property value. Time when this job run ended. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def time_ended
                return @time_ended
            end
            ## 
            ## Sets the timeEnded property value. Time when this job run ended. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the timeEnded property.
            ## @return a void
            ## 
            def time_ended=(value)
                @time_ended = value
            end
        end
    end
end
