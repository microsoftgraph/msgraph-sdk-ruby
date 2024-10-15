require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RestoreSessionBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The time of completion of the restore session.
            @completed_date_time
            ## 
            # The identity of person who created the restore session.
            @created_by
            ## 
            # The time of creation of the restore session.
            @created_date_time
            ## 
            # Contains error details if the restore session fails or completes with an error.
            @error
            ## 
            # Identity of the person who last modified the restore session.
            @last_modified_by
            ## 
            # Timestamp of the last modification of the restore session.
            @last_modified_date_time
            ## 
            # Status of the restore session. The value is an aggregated status of the restored artifacts. The possible values are: draft, activating, active, completedWithError, completed, unknownFutureValue, failed. You must use the Prefer: include-unknown-enum-members request header to get the following value in this evolvable enum: failed.
            @status
            ## 
            ## Gets the completedDateTime property value. The time of completion of the restore session.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. The time of completion of the restore session.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new RestoreSessionBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The identity of person who created the restore session.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The identity of person who created the restore session.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The time of creation of the restore session.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time of creation of the restore session.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a restore_session_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.exchangeRestoreSession"
                            return ExchangeRestoreSession.new
                        when "#microsoft.graph.oneDriveForBusinessRestoreSession"
                            return OneDriveForBusinessRestoreSession.new
                        when "#microsoft.graph.sharePointRestoreSession"
                            return SharePointRestoreSession.new
                    end
                end
                return RestoreSessionBase.new
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
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicError.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::RestoreSessionStatus) },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the person who last modified the restore session.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the person who last modified the restore session.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Timestamp of the last modification of the restore session.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Timestamp of the last modification of the restore session.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("error", @error)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Status of the restore session. The value is an aggregated status of the restored artifacts. The possible values are: draft, activating, active, completedWithError, completed, unknownFutureValue, failed. You must use the Prefer: include-unknown-enum-members request header to get the following value in this evolvable enum: failed.
            ## @return a restore_session_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the restore session. The value is an aggregated status of the restored artifacts. The possible values are: draft, activating, active, completedWithError, completed, unknownFutureValue, failed. You must use the Prefer: include-unknown-enum-members request header to get the following value in this evolvable enum: failed.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
