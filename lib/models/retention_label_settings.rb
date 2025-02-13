require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RetentionLabelSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Describes the item behavior during retention period. Possible values are: doNotRetain, retain, retainAsRecord, retainAsRegulatoryRecord, unknownFutureValue. Read-only.
            @behavior_during_retention_period
            ## 
            # Specifies whether updates to document content are allowed. Read-only.
            @is_content_update_allowed
            ## 
            # Specifies whether the document deletion is allowed. Read-only.
            @is_delete_allowed
            ## 
            # Specifies whether you're allowed to change the retention label on the document. Read-only.
            @is_label_update_allowed
            ## 
            # Specifies whether updates to the item metadata (for example, the Title field) are blocked. Read-only.
            @is_metadata_update_allowed
            ## 
            # Specifies whether the item is locked. Read-write.
            @is_record_locked
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the behaviorDuringRetentionPeriod property value. Describes the item behavior during retention period. Possible values are: doNotRetain, retain, retainAsRecord, retainAsRegulatoryRecord, unknownFutureValue. Read-only.
            ## @return a security_behavior_during_retention_period
            ## 
            def behavior_during_retention_period
                return @behavior_during_retention_period
            end
            ## 
            ## Sets the behaviorDuringRetentionPeriod property value. Describes the item behavior during retention period. Possible values are: doNotRetain, retain, retainAsRecord, retainAsRegulatoryRecord, unknownFutureValue. Read-only.
            ## @param value Value to set for the behaviorDuringRetentionPeriod property.
            ## @return a void
            ## 
            def behavior_during_retention_period=(value)
                @behavior_during_retention_period = value
            end
            ## 
            ## Instantiates a new RetentionLabelSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a retention_label_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RetentionLabelSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "behaviorDuringRetentionPeriod" => lambda {|n| @behavior_during_retention_period = n.get_enum_value(MicrosoftGraph::Models::SecurityBehaviorDuringRetentionPeriod) },
                    "isContentUpdateAllowed" => lambda {|n| @is_content_update_allowed = n.get_boolean_value() },
                    "isDeleteAllowed" => lambda {|n| @is_delete_allowed = n.get_boolean_value() },
                    "isLabelUpdateAllowed" => lambda {|n| @is_label_update_allowed = n.get_boolean_value() },
                    "isMetadataUpdateAllowed" => lambda {|n| @is_metadata_update_allowed = n.get_boolean_value() },
                    "isRecordLocked" => lambda {|n| @is_record_locked = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isContentUpdateAllowed property value. Specifies whether updates to document content are allowed. Read-only.
            ## @return a boolean
            ## 
            def is_content_update_allowed
                return @is_content_update_allowed
            end
            ## 
            ## Sets the isContentUpdateAllowed property value. Specifies whether updates to document content are allowed. Read-only.
            ## @param value Value to set for the isContentUpdateAllowed property.
            ## @return a void
            ## 
            def is_content_update_allowed=(value)
                @is_content_update_allowed = value
            end
            ## 
            ## Gets the isDeleteAllowed property value. Specifies whether the document deletion is allowed. Read-only.
            ## @return a boolean
            ## 
            def is_delete_allowed
                return @is_delete_allowed
            end
            ## 
            ## Sets the isDeleteAllowed property value. Specifies whether the document deletion is allowed. Read-only.
            ## @param value Value to set for the isDeleteAllowed property.
            ## @return a void
            ## 
            def is_delete_allowed=(value)
                @is_delete_allowed = value
            end
            ## 
            ## Gets the isLabelUpdateAllowed property value. Specifies whether you're allowed to change the retention label on the document. Read-only.
            ## @return a boolean
            ## 
            def is_label_update_allowed
                return @is_label_update_allowed
            end
            ## 
            ## Sets the isLabelUpdateAllowed property value. Specifies whether you're allowed to change the retention label on the document. Read-only.
            ## @param value Value to set for the isLabelUpdateAllowed property.
            ## @return a void
            ## 
            def is_label_update_allowed=(value)
                @is_label_update_allowed = value
            end
            ## 
            ## Gets the isMetadataUpdateAllowed property value. Specifies whether updates to the item metadata (for example, the Title field) are blocked. Read-only.
            ## @return a boolean
            ## 
            def is_metadata_update_allowed
                return @is_metadata_update_allowed
            end
            ## 
            ## Sets the isMetadataUpdateAllowed property value. Specifies whether updates to the item metadata (for example, the Title field) are blocked. Read-only.
            ## @param value Value to set for the isMetadataUpdateAllowed property.
            ## @return a void
            ## 
            def is_metadata_update_allowed=(value)
                @is_metadata_update_allowed = value
            end
            ## 
            ## Gets the isRecordLocked property value. Specifies whether the item is locked. Read-write.
            ## @return a boolean
            ## 
            def is_record_locked
                return @is_record_locked
            end
            ## 
            ## Sets the isRecordLocked property value. Specifies whether the item is locked. Read-write.
            ## @param value Value to set for the isRecordLocked property.
            ## @return a void
            ## 
            def is_record_locked=(value)
                @is_record_locked = value
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
                writer.write_enum_value("behaviorDuringRetentionPeriod", @behavior_during_retention_period)
                writer.write_boolean_value("isContentUpdateAllowed", @is_content_update_allowed)
                writer.write_boolean_value("isDeleteAllowed", @is_delete_allowed)
                writer.write_boolean_value("isLabelUpdateAllowed", @is_label_update_allowed)
                writer.write_boolean_value("isMetadataUpdateAllowed", @is_metadata_update_allowed)
                writer.write_boolean_value("isRecordLocked", @is_record_locked)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
