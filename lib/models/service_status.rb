require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of consumer. The possible values are: unknown, firstparty, thirdparty, unknownFutureValue.
            @backup_service_consumer
            ## 
            # The reason the service is disabled. The possible values are: none, controllerServiceAppDeleted, invalidBillingProfile, userRequested, unknownFutureValue.
            @disable_reason
            ## 
            # The expiration time of the grace period.
            @grace_period_date_time
            ## 
            # Identity of the person who last modified the entity.
            @last_modified_by
            ## 
            # Timestamp of the last modification of the entity.
            @last_modified_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The expiration time of the restoration allowed period.
            @restore_allowed_till_date_time
            ## 
            # Status of the service. This value indicates what capabilities can be used. The possible values are: disabled, enabled, protectionChangeLocked, restoreLocked, unknownFutureValue.
            @status
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the backupServiceConsumer property value. The type of consumer. The possible values are: unknown, firstparty, thirdparty, unknownFutureValue.
            ## @return a backup_service_consumer
            ## 
            def backup_service_consumer
                return @backup_service_consumer
            end
            ## 
            ## Sets the backupServiceConsumer property value. The type of consumer. The possible values are: unknown, firstparty, thirdparty, unknownFutureValue.
            ## @param value Value to set for the backupServiceConsumer property.
            ## @return a void
            ## 
            def backup_service_consumer=(value)
                @backup_service_consumer = value
            end
            ## 
            ## Instantiates a new ServiceStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceStatus.new
            end
            ## 
            ## Gets the disableReason property value. The reason the service is disabled. The possible values are: none, controllerServiceAppDeleted, invalidBillingProfile, userRequested, unknownFutureValue.
            ## @return a disable_reason
            ## 
            def disable_reason
                return @disable_reason
            end
            ## 
            ## Sets the disableReason property value. The reason the service is disabled. The possible values are: none, controllerServiceAppDeleted, invalidBillingProfile, userRequested, unknownFutureValue.
            ## @param value Value to set for the disableReason property.
            ## @return a void
            ## 
            def disable_reason=(value)
                @disable_reason = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "backupServiceConsumer" => lambda {|n| @backup_service_consumer = n.get_enum_value(MicrosoftGraph::Models::BackupServiceConsumer) },
                    "disableReason" => lambda {|n| @disable_reason = n.get_enum_value(MicrosoftGraph::Models::DisableReason) },
                    "gracePeriodDateTime" => lambda {|n| @grace_period_date_time = n.get_date_time_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "restoreAllowedTillDateTime" => lambda {|n| @restore_allowed_till_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::BackupServiceStatus) },
                }
            end
            ## 
            ## Gets the gracePeriodDateTime property value. The expiration time of the grace period.
            ## @return a date_time
            ## 
            def grace_period_date_time
                return @grace_period_date_time
            end
            ## 
            ## Sets the gracePeriodDateTime property value. The expiration time of the grace period.
            ## @param value Value to set for the gracePeriodDateTime property.
            ## @return a void
            ## 
            def grace_period_date_time=(value)
                @grace_period_date_time = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the person who last modified the entity.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the person who last modified the entity.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Timestamp of the last modification of the entity.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Timestamp of the last modification of the entity.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
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
            ## Gets the restoreAllowedTillDateTime property value. The expiration time of the restoration allowed period.
            ## @return a date_time
            ## 
            def restore_allowed_till_date_time
                return @restore_allowed_till_date_time
            end
            ## 
            ## Sets the restoreAllowedTillDateTime property value. The expiration time of the restoration allowed period.
            ## @param value Value to set for the restoreAllowedTillDateTime property.
            ## @return a void
            ## 
            def restore_allowed_till_date_time=(value)
                @restore_allowed_till_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("backupServiceConsumer", @backup_service_consumer)
                writer.write_enum_value("disableReason", @disable_reason)
                writer.write_date_time_value("gracePeriodDateTime", @grace_period_date_time)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("restoreAllowedTillDateTime", @restore_allowed_till_date_time)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. Status of the service. This value indicates what capabilities can be used. The possible values are: disabled, enabled, protectionChangeLocked, restoreLocked, unknownFutureValue.
            ## @return a backup_service_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the service. This value indicates what capabilities can be used. The possible values are: disabled, enabled, protectionChangeLocked, restoreLocked, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
