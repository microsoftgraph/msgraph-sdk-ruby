require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewScheduleDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines the list of additional users or group members to be notified of the access review progress.
            @additional_notification_recipients
            ## 
            # User who created this review. Read-only.
            @created_by
            ## 
            # Timestamp when the access review series was created. Supports $select. Read-only.
            @created_date_time
            ## 
            # Description provided by review creators to provide more context of the review to admins. Supports $select.
            @description_for_admins
            ## 
            # Description provided  by review creators to provide more context of the review to reviewers. Reviewers will see this description in the email sent to them requesting their review. Email notifications support up to 256 characters. Supports $select.
            @description_for_reviewers
            ## 
            # Name of the access review series. Supports $select and $orderBy. Required on create.
            @display_name
            ## 
            # This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist. See accessReviewReviewerScope. Replaces backupReviewers. Supports $select. NOTE: The value of this property will be ignored if fallback reviewers are assigned through the stageSettings property.
            @fallback_reviewers
            ## 
            # This property is required when scoping a review to guest users' access across all Microsoft 365 groups and determines which Microsoft 365 groups are reviewed. Each group will become a unique accessReviewInstance of the access review series.  For supported scopes, see accessReviewScope. Supports $select. For examples of options for configuring instanceEnumerationScope, see Configure the scope of your access review definition using the Microsoft Graph API.
            @instance_enumeration_scope
            ## 
            # If the accessReviewScheduleDefinition is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique resource under review in the accessReviewScheduleDefinition. If a review has multiple resources and multiple instances, each resource will have a unique instance for each recurrence.
            @instances
            ## 
            # Timestamp when the access review series was last modified. Supports $select. Read-only.
            @last_modified_date_time
            ## 
            # This collection of access review scopes is used to define who are the reviewers. The reviewers property is only updatable if individual users are assigned as reviewers. Required on create. Supports $select. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API. NOTE: The value of this property will be ignored if reviewers are assigned through the stageSettings property.
            @reviewers
            ## 
            # Defines the entities whose access is reviewed. For supported scopes, see accessReviewScope. Required on create. Supports $select and $filter (contains only). For examples of options for configuring scope, see Configure the scope of your access review definition using the Microsoft Graph API.
            @scope
            ## 
            # The settings for an access review series, see type definition below. Supports $select. Required on create.
            @settings
            ## 
            # Required only for a multi-stage access review to define the stages and their settings. You can break down each review instance into up to three sequential stages, where each stage can have a different set of reviewers, fallback reviewers, and settings. Stages will be created sequentially based on the dependsOn property. Optional.  When this property is defined, its settings are used instead of the corresponding settings in the accessReviewScheduleDefinition object and its settings, reviewers, and fallbackReviewers properties.
            @stage_settings
            ## 
            # This read-only field specifies the status of an access review. The typical states include Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed.  Supports $select, $orderby, and $filter (eq only). Read-only.
            @status
            ## 
            ## Gets the additionalNotificationRecipients property value. Defines the list of additional users or group members to be notified of the access review progress.
            ## @return a access_review_notification_recipient_item
            ## 
            def additional_notification_recipients
                return @additional_notification_recipients
            end
            ## 
            ## Sets the additionalNotificationRecipients property value. Defines the list of additional users or group members to be notified of the access review progress.
            ## @param value Value to set for the additional_notification_recipients property.
            ## @return a void
            ## 
            def additional_notification_recipients=(value)
                @additional_notification_recipients = value
            end
            ## 
            ## Instantiates a new accessReviewScheduleDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. User who created this review. Read-only.
            ## @return a user_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. User who created this review. Read-only.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp when the access review series was created. Supports $select. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp when the access review series was created. Supports $select. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_schedule_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewScheduleDefinition.new
            end
            ## 
            ## Gets the descriptionForAdmins property value. Description provided by review creators to provide more context of the review to admins. Supports $select.
            ## @return a string
            ## 
            def description_for_admins
                return @description_for_admins
            end
            ## 
            ## Sets the descriptionForAdmins property value. Description provided by review creators to provide more context of the review to admins. Supports $select.
            ## @param value Value to set for the description_for_admins property.
            ## @return a void
            ## 
            def description_for_admins=(value)
                @description_for_admins = value
            end
            ## 
            ## Gets the descriptionForReviewers property value. Description provided  by review creators to provide more context of the review to reviewers. Reviewers will see this description in the email sent to them requesting their review. Email notifications support up to 256 characters. Supports $select.
            ## @return a string
            ## 
            def description_for_reviewers
                return @description_for_reviewers
            end
            ## 
            ## Sets the descriptionForReviewers property value. Description provided  by review creators to provide more context of the review to reviewers. Reviewers will see this description in the email sent to them requesting their review. Email notifications support up to 256 characters. Supports $select.
            ## @param value Value to set for the description_for_reviewers property.
            ## @return a void
            ## 
            def description_for_reviewers=(value)
                @description_for_reviewers = value
            end
            ## 
            ## Gets the displayName property value. Name of the access review series. Supports $select and $orderBy. Required on create.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the access review series. Supports $select and $orderBy. Required on create.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the fallbackReviewers property value. This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist. See accessReviewReviewerScope. Replaces backupReviewers. Supports $select. NOTE: The value of this property will be ignored if fallback reviewers are assigned through the stageSettings property.
            ## @return a access_review_reviewer_scope
            ## 
            def fallback_reviewers
                return @fallback_reviewers
            end
            ## 
            ## Sets the fallbackReviewers property value. This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist. See accessReviewReviewerScope. Replaces backupReviewers. Supports $select. NOTE: The value of this property will be ignored if fallback reviewers are assigned through the stageSettings property.
            ## @param value Value to set for the fallback_reviewers property.
            ## @return a void
            ## 
            def fallback_reviewers=(value)
                @fallback_reviewers = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalNotificationRecipients" => lambda {|n| @additional_notification_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewNotificationRecipientItem.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "descriptionForAdmins" => lambda {|n| @description_for_admins = n.get_string_value() },
                    "descriptionForReviewers" => lambda {|n| @description_for_reviewers = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "fallbackReviewers" => lambda {|n| @fallback_reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "instanceEnumerationScope" => lambda {|n| @instance_enumeration_scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewScope.create_from_discriminator_value(pn) }) },
                    "instances" => lambda {|n| @instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewInstance.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "reviewers" => lambda {|n| @reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "scope" => lambda {|n| @scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewScope.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewScheduleSettings.create_from_discriminator_value(pn) }) },
                    "stageSettings" => lambda {|n| @stage_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewStageSettings.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the instanceEnumerationScope property value. This property is required when scoping a review to guest users' access across all Microsoft 365 groups and determines which Microsoft 365 groups are reviewed. Each group will become a unique accessReviewInstance of the access review series.  For supported scopes, see accessReviewScope. Supports $select. For examples of options for configuring instanceEnumerationScope, see Configure the scope of your access review definition using the Microsoft Graph API.
            ## @return a access_review_scope
            ## 
            def instance_enumeration_scope
                return @instance_enumeration_scope
            end
            ## 
            ## Sets the instanceEnumerationScope property value. This property is required when scoping a review to guest users' access across all Microsoft 365 groups and determines which Microsoft 365 groups are reviewed. Each group will become a unique accessReviewInstance of the access review series.  For supported scopes, see accessReviewScope. Supports $select. For examples of options for configuring instanceEnumerationScope, see Configure the scope of your access review definition using the Microsoft Graph API.
            ## @param value Value to set for the instance_enumeration_scope property.
            ## @return a void
            ## 
            def instance_enumeration_scope=(value)
                @instance_enumeration_scope = value
            end
            ## 
            ## Gets the instances property value. If the accessReviewScheduleDefinition is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique resource under review in the accessReviewScheduleDefinition. If a review has multiple resources and multiple instances, each resource will have a unique instance for each recurrence.
            ## @return a access_review_instance
            ## 
            def instances
                return @instances
            end
            ## 
            ## Sets the instances property value. If the accessReviewScheduleDefinition is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique resource under review in the accessReviewScheduleDefinition. If a review has multiple resources and multiple instances, each resource will have a unique instance for each recurrence.
            ## @param value Value to set for the instances property.
            ## @return a void
            ## 
            def instances=(value)
                @instances = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Timestamp when the access review series was last modified. Supports $select. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Timestamp when the access review series was last modified. Supports $select. Read-only.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the reviewers property value. This collection of access review scopes is used to define who are the reviewers. The reviewers property is only updatable if individual users are assigned as reviewers. Required on create. Supports $select. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API. NOTE: The value of this property will be ignored if reviewers are assigned through the stageSettings property.
            ## @return a access_review_reviewer_scope
            ## 
            def reviewers
                return @reviewers
            end
            ## 
            ## Sets the reviewers property value. This collection of access review scopes is used to define who are the reviewers. The reviewers property is only updatable if individual users are assigned as reviewers. Required on create. Supports $select. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API. NOTE: The value of this property will be ignored if reviewers are assigned through the stageSettings property.
            ## @param value Value to set for the reviewers property.
            ## @return a void
            ## 
            def reviewers=(value)
                @reviewers = value
            end
            ## 
            ## Gets the scope property value. Defines the entities whose access is reviewed. For supported scopes, see accessReviewScope. Required on create. Supports $select and $filter (contains only). For examples of options for configuring scope, see Configure the scope of your access review definition using the Microsoft Graph API.
            ## @return a access_review_scope
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. Defines the entities whose access is reviewed. For supported scopes, see accessReviewScope. Required on create. Supports $select and $filter (contains only). For examples of options for configuring scope, see Configure the scope of your access review definition using the Microsoft Graph API.
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("additionalNotificationRecipients", @additional_notification_recipients)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("descriptionForAdmins", @description_for_admins)
                writer.write_string_value("descriptionForReviewers", @description_for_reviewers)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("fallbackReviewers", @fallback_reviewers)
                writer.write_object_value("instanceEnumerationScope", @instance_enumeration_scope)
                writer.write_collection_of_object_values("instances", @instances)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_object_values("reviewers", @reviewers)
                writer.write_object_value("scope", @scope)
                writer.write_object_value("settings", @settings)
                writer.write_collection_of_object_values("stageSettings", @stage_settings)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the settings property value. The settings for an access review series, see type definition below. Supports $select. Required on create.
            ## @return a access_review_schedule_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings for an access review series, see type definition below. Supports $select. Required on create.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the stageSettings property value. Required only for a multi-stage access review to define the stages and their settings. You can break down each review instance into up to three sequential stages, where each stage can have a different set of reviewers, fallback reviewers, and settings. Stages will be created sequentially based on the dependsOn property. Optional.  When this property is defined, its settings are used instead of the corresponding settings in the accessReviewScheduleDefinition object and its settings, reviewers, and fallbackReviewers properties.
            ## @return a access_review_stage_settings
            ## 
            def stage_settings
                return @stage_settings
            end
            ## 
            ## Sets the stageSettings property value. Required only for a multi-stage access review to define the stages and their settings. You can break down each review instance into up to three sequential stages, where each stage can have a different set of reviewers, fallback reviewers, and settings. Stages will be created sequentially based on the dependsOn property. Optional.  When this property is defined, its settings are used instead of the corresponding settings in the accessReviewScheduleDefinition object and its settings, reviewers, and fallbackReviewers properties.
            ## @param value Value to set for the stage_settings property.
            ## @return a void
            ## 
            def stage_settings=(value)
                @stage_settings = value
            end
            ## 
            ## Gets the status property value. This read-only field specifies the status of an access review. The typical states include Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed.  Supports $select, $orderby, and $filter (eq only). Read-only.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. This read-only field specifies the status of an access review. The typical states include Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed.  Supports $select, $orderby, and $filter (eq only). Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
