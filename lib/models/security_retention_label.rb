require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityRetentionLabel < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the action to take on the labeled document after the period specified by the retentionDuration property expires. The possible values are: none, delete, startDispositionReview, unknownFutureValue.
            @action_after_retention_period
            ## 
            # Specifies how the behavior of a document with this label should be during the retention period. The possible values are: doNotRetain, retain, retainAsRecord, retainAsRegulatoryRecord, unknownFutureValue.
            @behavior_during_retention_period
            ## 
            # Represents the user who created the retentionLabel.
            @created_by
            ## 
            # Represents the date and time in which the retentionLabel is created.
            @created_date_time
            ## 
            # Specifies the locked or unlocked state of a record label when it is created.The possible values are: startLocked, startUnlocked, unknownFutureValue.
            @default_record_behavior
            ## 
            # Provides label information for the admin. Optional.
            @description_for_admins
            ## 
            # Provides the label information for the user. Optional.
            @description_for_users
            ## 
            # Represents out-of-the-box values that provide more options to improve the manageability and organization of the content you need to label.
            @descriptors
            ## 
            # Unique string that defines a label name.
            @display_name
            ## 
            # When action at the end of retention is chosen as 'dispositionReview', dispositionReviewStages specifies a sequential set of stages with at least one reviewer in each stage.
            @disposition_review_stages
            ## 
            # Specifies whether the label is currently being used.
            @is_in_use
            ## 
            # Specifies the replacement label to be applied automatically after the retention period of the current label ends.
            @label_to_be_applied
            ## 
            # The user who last modified the retentionLabel.
            @last_modified_by
            ## 
            # The latest date time when the retentionLabel was modified.
            @last_modified_date_time
            ## 
            # Specifies the number of days to retain the content.
            @retention_duration
            ## 
            # Represents the type associated with a retention event.
            @retention_event_type
            ## 
            # Specifies whether the retention duration is calculated from the content creation date, labeled date, or last modification date. The possible values are: dateLabeled, dateCreated, dateModified, dateOfEvent, unknownFutureValue.
            @retention_trigger
            ## 
            ## Gets the actionAfterRetentionPeriod property value. Specifies the action to take on the labeled document after the period specified by the retentionDuration property expires. The possible values are: none, delete, startDispositionReview, unknownFutureValue.
            ## @return a security_action_after_retention_period
            ## 
            def action_after_retention_period
                return @action_after_retention_period
            end
            ## 
            ## Sets the actionAfterRetentionPeriod property value. Specifies the action to take on the labeled document after the period specified by the retentionDuration property expires. The possible values are: none, delete, startDispositionReview, unknownFutureValue.
            ## @param value Value to set for the actionAfterRetentionPeriod property.
            ## @return a void
            ## 
            def action_after_retention_period=(value)
                @action_after_retention_period = value
            end
            ## 
            ## Gets the behaviorDuringRetentionPeriod property value. Specifies how the behavior of a document with this label should be during the retention period. The possible values are: doNotRetain, retain, retainAsRecord, retainAsRegulatoryRecord, unknownFutureValue.
            ## @return a security_behavior_during_retention_period
            ## 
            def behavior_during_retention_period
                return @behavior_during_retention_period
            end
            ## 
            ## Sets the behaviorDuringRetentionPeriod property value. Specifies how the behavior of a document with this label should be during the retention period. The possible values are: doNotRetain, retain, retainAsRecord, retainAsRegulatoryRecord, unknownFutureValue.
            ## @param value Value to set for the behaviorDuringRetentionPeriod property.
            ## @return a void
            ## 
            def behavior_during_retention_period=(value)
                @behavior_during_retention_period = value
            end
            ## 
            ## Instantiates a new SecurityRetentionLabel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Represents the user who created the retentionLabel.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Represents the user who created the retentionLabel.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Represents the date and time in which the retentionLabel is created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Represents the date and time in which the retentionLabel is created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_retention_label
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityRetentionLabel.new
            end
            ## 
            ## Gets the defaultRecordBehavior property value. Specifies the locked or unlocked state of a record label when it is created.The possible values are: startLocked, startUnlocked, unknownFutureValue.
            ## @return a security_default_record_behavior
            ## 
            def default_record_behavior
                return @default_record_behavior
            end
            ## 
            ## Sets the defaultRecordBehavior property value. Specifies the locked or unlocked state of a record label when it is created.The possible values are: startLocked, startUnlocked, unknownFutureValue.
            ## @param value Value to set for the defaultRecordBehavior property.
            ## @return a void
            ## 
            def default_record_behavior=(value)
                @default_record_behavior = value
            end
            ## 
            ## Gets the descriptionForAdmins property value. Provides label information for the admin. Optional.
            ## @return a string
            ## 
            def description_for_admins
                return @description_for_admins
            end
            ## 
            ## Sets the descriptionForAdmins property value. Provides label information for the admin. Optional.
            ## @param value Value to set for the descriptionForAdmins property.
            ## @return a void
            ## 
            def description_for_admins=(value)
                @description_for_admins = value
            end
            ## 
            ## Gets the descriptionForUsers property value. Provides the label information for the user. Optional.
            ## @return a string
            ## 
            def description_for_users
                return @description_for_users
            end
            ## 
            ## Sets the descriptionForUsers property value. Provides the label information for the user. Optional.
            ## @param value Value to set for the descriptionForUsers property.
            ## @return a void
            ## 
            def description_for_users=(value)
                @description_for_users = value
            end
            ## 
            ## Gets the descriptors property value. Represents out-of-the-box values that provide more options to improve the manageability and organization of the content you need to label.
            ## @return a security_file_plan_descriptor
            ## 
            def descriptors
                return @descriptors
            end
            ## 
            ## Sets the descriptors property value. Represents out-of-the-box values that provide more options to improve the manageability and organization of the content you need to label.
            ## @param value Value to set for the descriptors property.
            ## @return a void
            ## 
            def descriptors=(value)
                @descriptors = value
            end
            ## 
            ## Gets the displayName property value. Unique string that defines a label name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Unique string that defines a label name.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the dispositionReviewStages property value. When action at the end of retention is chosen as 'dispositionReview', dispositionReviewStages specifies a sequential set of stages with at least one reviewer in each stage.
            ## @return a security_disposition_review_stage
            ## 
            def disposition_review_stages
                return @disposition_review_stages
            end
            ## 
            ## Sets the dispositionReviewStages property value. When action at the end of retention is chosen as 'dispositionReview', dispositionReviewStages specifies a sequential set of stages with at least one reviewer in each stage.
            ## @param value Value to set for the dispositionReviewStages property.
            ## @return a void
            ## 
            def disposition_review_stages=(value)
                @disposition_review_stages = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionAfterRetentionPeriod" => lambda {|n| @action_after_retention_period = n.get_enum_value(MicrosoftGraph::Models::SecurityActionAfterRetentionPeriod) },
                    "behaviorDuringRetentionPeriod" => lambda {|n| @behavior_during_retention_period = n.get_enum_value(MicrosoftGraph::Models::SecurityBehaviorDuringRetentionPeriod) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "defaultRecordBehavior" => lambda {|n| @default_record_behavior = n.get_enum_value(MicrosoftGraph::Models::SecurityDefaultRecordBehavior) },
                    "descriptionForAdmins" => lambda {|n| @description_for_admins = n.get_string_value() },
                    "descriptionForUsers" => lambda {|n| @description_for_users = n.get_string_value() },
                    "descriptors" => lambda {|n| @descriptors = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanDescriptor.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "dispositionReviewStages" => lambda {|n| @disposition_review_stages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityDispositionReviewStage.create_from_discriminator_value(pn) }) },
                    "isInUse" => lambda {|n| @is_in_use = n.get_boolean_value() },
                    "labelToBeApplied" => lambda {|n| @label_to_be_applied = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "retentionDuration" => lambda {|n| @retention_duration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityRetentionDuration.create_from_discriminator_value(pn) }) },
                    "retentionEventType" => lambda {|n| @retention_event_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityRetentionEventType.create_from_discriminator_value(pn) }) },
                    "retentionTrigger" => lambda {|n| @retention_trigger = n.get_enum_value(MicrosoftGraph::Models::SecurityRetentionTrigger) },
                })
            end
            ## 
            ## Gets the isInUse property value. Specifies whether the label is currently being used.
            ## @return a boolean
            ## 
            def is_in_use
                return @is_in_use
            end
            ## 
            ## Sets the isInUse property value. Specifies whether the label is currently being used.
            ## @param value Value to set for the isInUse property.
            ## @return a void
            ## 
            def is_in_use=(value)
                @is_in_use = value
            end
            ## 
            ## Gets the labelToBeApplied property value. Specifies the replacement label to be applied automatically after the retention period of the current label ends.
            ## @return a string
            ## 
            def label_to_be_applied
                return @label_to_be_applied
            end
            ## 
            ## Sets the labelToBeApplied property value. Specifies the replacement label to be applied automatically after the retention period of the current label ends.
            ## @param value Value to set for the labelToBeApplied property.
            ## @return a void
            ## 
            def label_to_be_applied=(value)
                @label_to_be_applied = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The user who last modified the retentionLabel.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The user who last modified the retentionLabel.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The latest date time when the retentionLabel was modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The latest date time when the retentionLabel was modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the retentionDuration property value. Specifies the number of days to retain the content.
            ## @return a security_retention_duration
            ## 
            def retention_duration
                return @retention_duration
            end
            ## 
            ## Sets the retentionDuration property value. Specifies the number of days to retain the content.
            ## @param value Value to set for the retentionDuration property.
            ## @return a void
            ## 
            def retention_duration=(value)
                @retention_duration = value
            end
            ## 
            ## Gets the retentionEventType property value. Represents the type associated with a retention event.
            ## @return a security_retention_event_type
            ## 
            def retention_event_type
                return @retention_event_type
            end
            ## 
            ## Sets the retentionEventType property value. Represents the type associated with a retention event.
            ## @param value Value to set for the retentionEventType property.
            ## @return a void
            ## 
            def retention_event_type=(value)
                @retention_event_type = value
            end
            ## 
            ## Gets the retentionTrigger property value. Specifies whether the retention duration is calculated from the content creation date, labeled date, or last modification date. The possible values are: dateLabeled, dateCreated, dateModified, dateOfEvent, unknownFutureValue.
            ## @return a security_retention_trigger
            ## 
            def retention_trigger
                return @retention_trigger
            end
            ## 
            ## Sets the retentionTrigger property value. Specifies whether the retention duration is calculated from the content creation date, labeled date, or last modification date. The possible values are: dateLabeled, dateCreated, dateModified, dateOfEvent, unknownFutureValue.
            ## @param value Value to set for the retentionTrigger property.
            ## @return a void
            ## 
            def retention_trigger=(value)
                @retention_trigger = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("actionAfterRetentionPeriod", @action_after_retention_period)
                writer.write_enum_value("behaviorDuringRetentionPeriod", @behavior_during_retention_period)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("defaultRecordBehavior", @default_record_behavior)
                writer.write_string_value("descriptionForAdmins", @description_for_admins)
                writer.write_string_value("descriptionForUsers", @description_for_users)
                writer.write_object_value("descriptors", @descriptors)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("dispositionReviewStages", @disposition_review_stages)
                writer.write_boolean_value("isInUse", @is_in_use)
                writer.write_string_value("labelToBeApplied", @label_to_be_applied)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("retentionDuration", @retention_duration)
                writer.write_object_value("retentionEventType", @retention_event_type)
                writer.write_enum_value("retentionTrigger", @retention_trigger)
            end
        end
    end
end
