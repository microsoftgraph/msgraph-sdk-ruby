require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationTaskExecution
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activityIdentifier property
            @activity_identifier
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The countEntitled property
            @count_entitled
            ## 
            # The countEntitledForProvisioning property
            @count_entitled_for_provisioning
            ## 
            # The countEscrowed property
            @count_escrowed
            ## 
            # The countEscrowedRaw property
            @count_escrowed_raw
            ## 
            # The countExported property
            @count_exported
            ## 
            # The countExports property
            @count_exports
            ## 
            # The countImported property
            @count_imported
            ## 
            # The countImportedDeltas property
            @count_imported_deltas
            ## 
            # The countImportedReferenceDeltas property
            @count_imported_reference_deltas
            ## 
            # The error property
            @error
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The state property
            @state
            ## 
            # The timeBegan property
            @time_began
            ## 
            # The timeEnded property
            @time_ended
            ## 
            ## Gets the activityIdentifier property value. The activityIdentifier property
            ## @return a string
            ## 
            def activity_identifier
                return @activity_identifier
            end
            ## 
            ## Sets the activityIdentifier property value. The activityIdentifier property
            ## @param value Value to set for the activity_identifier property.
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
            ## @param value Value to set for the AdditionalData property.
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
            ## Gets the countEntitled property value. The countEntitled property
            ## @return a int64
            ## 
            def count_entitled
                return @count_entitled
            end
            ## 
            ## Sets the countEntitled property value. The countEntitled property
            ## @param value Value to set for the count_entitled property.
            ## @return a void
            ## 
            def count_entitled=(value)
                @count_entitled = value
            end
            ## 
            ## Gets the countEntitledForProvisioning property value. The countEntitledForProvisioning property
            ## @return a int64
            ## 
            def count_entitled_for_provisioning
                return @count_entitled_for_provisioning
            end
            ## 
            ## Sets the countEntitledForProvisioning property value. The countEntitledForProvisioning property
            ## @param value Value to set for the count_entitled_for_provisioning property.
            ## @return a void
            ## 
            def count_entitled_for_provisioning=(value)
                @count_entitled_for_provisioning = value
            end
            ## 
            ## Gets the countEscrowed property value. The countEscrowed property
            ## @return a int64
            ## 
            def count_escrowed
                return @count_escrowed
            end
            ## 
            ## Sets the countEscrowed property value. The countEscrowed property
            ## @param value Value to set for the count_escrowed property.
            ## @return a void
            ## 
            def count_escrowed=(value)
                @count_escrowed = value
            end
            ## 
            ## Gets the countEscrowedRaw property value. The countEscrowedRaw property
            ## @return a int64
            ## 
            def count_escrowed_raw
                return @count_escrowed_raw
            end
            ## 
            ## Sets the countEscrowedRaw property value. The countEscrowedRaw property
            ## @param value Value to set for the count_escrowed_raw property.
            ## @return a void
            ## 
            def count_escrowed_raw=(value)
                @count_escrowed_raw = value
            end
            ## 
            ## Gets the countExported property value. The countExported property
            ## @return a int64
            ## 
            def count_exported
                return @count_exported
            end
            ## 
            ## Sets the countExported property value. The countExported property
            ## @param value Value to set for the count_exported property.
            ## @return a void
            ## 
            def count_exported=(value)
                @count_exported = value
            end
            ## 
            ## Gets the countExports property value. The countExports property
            ## @return a int64
            ## 
            def count_exports
                return @count_exports
            end
            ## 
            ## Sets the countExports property value. The countExports property
            ## @param value Value to set for the count_exports property.
            ## @return a void
            ## 
            def count_exports=(value)
                @count_exports = value
            end
            ## 
            ## Gets the countImported property value. The countImported property
            ## @return a int64
            ## 
            def count_imported
                return @count_imported
            end
            ## 
            ## Sets the countImported property value. The countImported property
            ## @param value Value to set for the count_imported property.
            ## @return a void
            ## 
            def count_imported=(value)
                @count_imported = value
            end
            ## 
            ## Gets the countImportedDeltas property value. The countImportedDeltas property
            ## @return a int64
            ## 
            def count_imported_deltas
                return @count_imported_deltas
            end
            ## 
            ## Sets the countImportedDeltas property value. The countImportedDeltas property
            ## @param value Value to set for the count_imported_deltas property.
            ## @return a void
            ## 
            def count_imported_deltas=(value)
                @count_imported_deltas = value
            end
            ## 
            ## Gets the countImportedReferenceDeltas property value. The countImportedReferenceDeltas property
            ## @return a int64
            ## 
            def count_imported_reference_deltas
                return @count_imported_reference_deltas
            end
            ## 
            ## Sets the countImportedReferenceDeltas property value. The countImportedReferenceDeltas property
            ## @param value Value to set for the count_imported_reference_deltas property.
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
            ## Gets the error property value. The error property
            ## @return a synchronization_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. The error property
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
                writer.write_string_value("activityIdentifier", @activity_identifier)
                writer.write_object_value("countEntitled", @count_entitled)
                writer.write_object_value("countEntitledForProvisioning", @count_entitled_for_provisioning)
                writer.write_object_value("countEscrowed", @count_escrowed)
                writer.write_object_value("countEscrowedRaw", @count_escrowed_raw)
                writer.write_object_value("countExported", @count_exported)
                writer.write_object_value("countExports", @count_exports)
                writer.write_object_value("countImported", @count_imported)
                writer.write_object_value("countImportedDeltas", @count_imported_deltas)
                writer.write_object_value("countImportedReferenceDeltas", @count_imported_reference_deltas)
                writer.write_object_value("error", @error)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("state", @state)
                writer.write_date_time_value("timeBegan", @time_began)
                writer.write_date_time_value("timeEnded", @time_ended)
                writer.write_additional_data(@additional_data)
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
            ## Gets the timeBegan property value. The timeBegan property
            ## @return a date_time
            ## 
            def time_began
                return @time_began
            end
            ## 
            ## Sets the timeBegan property value. The timeBegan property
            ## @param value Value to set for the time_began property.
            ## @return a void
            ## 
            def time_began=(value)
                @time_began = value
            end
            ## 
            ## Gets the timeEnded property value. The timeEnded property
            ## @return a date_time
            ## 
            def time_ended
                return @time_ended
            end
            ## 
            ## Sets the timeEnded property value. The timeEnded property
            ## @param value Value to set for the time_ended property.
            ## @return a void
            ## 
            def time_ended=(value)
                @time_ended = value
            end
        end
    end
end
