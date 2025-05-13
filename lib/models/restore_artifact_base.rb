require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RestoreArtifactBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The time when restoration of restore artifact is completed.
            @completion_date_time
            ## 
            # Indicates the restoration destination. The possible values are: new, inPlace, unknownFutureValue.
            @destination_type
            ## 
            # Contains error details if the restore session fails or completes with an error.
            @error
            ## 
            # Represents the date and time when an artifact is protected by a protectionPolicy and can be restored.
            @restore_point
            ## 
            # The time when restoration of restore artifact is started.
            @start_date_time
            ## 
            # The individual restoration status of the restore artifact. The possible values are: added, scheduling, scheduled, inProgress, succeeded, failed, unknownFutureValue.
            @status
            ## 
            ## Gets the completionDateTime property value. The time when restoration of restore artifact is completed.
            ## @return a date_time
            ## 
            def completion_date_time
                return @completion_date_time
            end
            ## 
            ## Sets the completionDateTime property value. The time when restoration of restore artifact is completed.
            ## @param value Value to set for the completionDateTime property.
            ## @return a void
            ## 
            def completion_date_time=(value)
                @completion_date_time = value
            end
            ## 
            ## Instantiates a new RestoreArtifactBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a restore_artifact_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.driveRestoreArtifact"
                            return DriveRestoreArtifact.new
                        when "#microsoft.graph.granularMailboxRestoreArtifact"
                            return GranularMailboxRestoreArtifact.new
                        when "#microsoft.graph.mailboxRestoreArtifact"
                            return MailboxRestoreArtifact.new
                        when "#microsoft.graph.siteRestoreArtifact"
                            return SiteRestoreArtifact.new
                    end
                end
                return RestoreArtifactBase.new
            end
            ## 
            ## Gets the destinationType property value. Indicates the restoration destination. The possible values are: new, inPlace, unknownFutureValue.
            ## @return a destination_type
            ## 
            def destination_type
                return @destination_type
            end
            ## 
            ## Sets the destinationType property value. Indicates the restoration destination. The possible values are: new, inPlace, unknownFutureValue.
            ## @param value Value to set for the destinationType property.
            ## @return a void
            ## 
            def destination_type=(value)
                @destination_type = value
            end
            ## 
            ## Gets the error property value. Contains error details if the restore session fails or completes with an error.
            ## @return a public_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Contains error details if the restore session fails or completes with an error.
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
                return super.merge({
                    "completionDateTime" => lambda {|n| @completion_date_time = n.get_date_time_value() },
                    "destinationType" => lambda {|n| @destination_type = n.get_enum_value(MicrosoftGraph::Models::DestinationType) },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicError.create_from_discriminator_value(pn) }) },
                    "restorePoint" => lambda {|n| @restore_point = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RestorePoint.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ArtifactRestoreStatus) },
                })
            end
            ## 
            ## Gets the restorePoint property value. Represents the date and time when an artifact is protected by a protectionPolicy and can be restored.
            ## @return a restore_point
            ## 
            def restore_point
                return @restore_point
            end
            ## 
            ## Sets the restorePoint property value. Represents the date and time when an artifact is protected by a protectionPolicy and can be restored.
            ## @param value Value to set for the restorePoint property.
            ## @return a void
            ## 
            def restore_point=(value)
                @restore_point = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("completionDateTime", @completion_date_time)
                writer.write_enum_value("destinationType", @destination_type)
                writer.write_object_value("error", @error)
                writer.write_object_value("restorePoint", @restore_point)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the startDateTime property value. The time when restoration of restore artifact is started.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The time when restoration of restore artifact is started.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The individual restoration status of the restore artifact. The possible values are: added, scheduling, scheduled, inProgress, succeeded, failed, unknownFutureValue.
            ## @return a artifact_restore_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The individual restoration status of the restore artifact. The possible values are: added, scheduling, scheduled, inProgress, succeeded, failed, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
