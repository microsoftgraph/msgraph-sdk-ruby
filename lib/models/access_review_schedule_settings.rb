require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewScheduleSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Optional field. Describes the  actions to take once a review is complete. There are two types that are currently supported: removeAccessApplyAction (default) and disableAndDeleteUserApplyAction. Field only needs to be specified in the case of disableAndDeleteUserApplyAction.
            @apply_actions
            ## 
            # Indicates whether decisions are automatically applied. When set to false, an admin must apply the decisions manually once the reviewer completes the access review. When set to true, decisions are applied automatically after the access review instance duration ends, whether or not the reviewers have responded. Default value is false.
            @auto_apply_decisions_enabled
            ## 
            # Indicates whether decisions on previous access review stages are available for reviewers on an accessReviewInstance with multiple subsequent stages. If not provided, the default is disabled (false).
            @decision_histories_for_reviewers_enabled
            ## 
            # Decision chosen if defaultDecisionEnabled is enabled. Can be one of Approve, Deny, or Recommendation.
            @default_decision
            ## 
            # Indicates whether the default decision is enabled or disabled when reviewers do not respond. Default value is false.
            @default_decision_enabled
            ## 
            # Duration of an access review instance in days. NOTE: If the stageSettings of the accessReviewScheduleDefinition object is defined, its durationInDays setting will be used instead of the value of this property.
            @instance_duration_in_days
            ## 
            # Indicates whether reviewers are required to provide justification with their decision. Default value is false.
            @justification_required_on_approval
            ## 
            # Indicates whether emails are enabled or disabled. Default value is false.
            @mail_notifications_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates whether decision recommendations are enabled or disabled. NOTE: If the stageSettings of the accessReviewScheduleDefinition object is defined, its recommendationsEnabled setting will be used instead of the value of this property.
            @recommendations_enabled
            ## 
            # Detailed settings for recurrence using the standard Outlook recurrence object. Note: Only dayOfMonth, interval, and type (weekly, absoluteMonthly) properties are supported. Use the property startDate on recurrenceRange to determine the day the review starts.
            @recurrence
            ## 
            # Indicates whether reminders are enabled or disabled. Default value is false.
            @reminder_notifications_enabled
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
            ## Gets the applyActions property value. Optional field. Describes the  actions to take once a review is complete. There are two types that are currently supported: removeAccessApplyAction (default) and disableAndDeleteUserApplyAction. Field only needs to be specified in the case of disableAndDeleteUserApplyAction.
            ## @return a access_review_apply_action
            ## 
            def apply_actions
                return @apply_actions
            end
            ## 
            ## Sets the applyActions property value. Optional field. Describes the  actions to take once a review is complete. There are two types that are currently supported: removeAccessApplyAction (default) and disableAndDeleteUserApplyAction. Field only needs to be specified in the case of disableAndDeleteUserApplyAction.
            ## @param value Value to set for the apply_actions property.
            ## @return a void
            ## 
            def apply_actions=(value)
                @apply_actions = value
            end
            ## 
            ## Gets the autoApplyDecisionsEnabled property value. Indicates whether decisions are automatically applied. When set to false, an admin must apply the decisions manually once the reviewer completes the access review. When set to true, decisions are applied automatically after the access review instance duration ends, whether or not the reviewers have responded. Default value is false.
            ## @return a boolean
            ## 
            def auto_apply_decisions_enabled
                return @auto_apply_decisions_enabled
            end
            ## 
            ## Sets the autoApplyDecisionsEnabled property value. Indicates whether decisions are automatically applied. When set to false, an admin must apply the decisions manually once the reviewer completes the access review. When set to true, decisions are applied automatically after the access review instance duration ends, whether or not the reviewers have responded. Default value is false.
            ## @param value Value to set for the auto_apply_decisions_enabled property.
            ## @return a void
            ## 
            def auto_apply_decisions_enabled=(value)
                @auto_apply_decisions_enabled = value
            end
            ## 
            ## Instantiates a new accessReviewScheduleSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_schedule_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewScheduleSettings.new
            end
            ## 
            ## Gets the decisionHistoriesForReviewersEnabled property value. Indicates whether decisions on previous access review stages are available for reviewers on an accessReviewInstance with multiple subsequent stages. If not provided, the default is disabled (false).
            ## @return a boolean
            ## 
            def decision_histories_for_reviewers_enabled
                return @decision_histories_for_reviewers_enabled
            end
            ## 
            ## Sets the decisionHistoriesForReviewersEnabled property value. Indicates whether decisions on previous access review stages are available for reviewers on an accessReviewInstance with multiple subsequent stages. If not provided, the default is disabled (false).
            ## @param value Value to set for the decision_histories_for_reviewers_enabled property.
            ## @return a void
            ## 
            def decision_histories_for_reviewers_enabled=(value)
                @decision_histories_for_reviewers_enabled = value
            end
            ## 
            ## Gets the defaultDecision property value. Decision chosen if defaultDecisionEnabled is enabled. Can be one of Approve, Deny, or Recommendation.
            ## @return a string
            ## 
            def default_decision
                return @default_decision
            end
            ## 
            ## Sets the defaultDecision property value. Decision chosen if defaultDecisionEnabled is enabled. Can be one of Approve, Deny, or Recommendation.
            ## @param value Value to set for the default_decision property.
            ## @return a void
            ## 
            def default_decision=(value)
                @default_decision = value
            end
            ## 
            ## Gets the defaultDecisionEnabled property value. Indicates whether the default decision is enabled or disabled when reviewers do not respond. Default value is false.
            ## @return a boolean
            ## 
            def default_decision_enabled
                return @default_decision_enabled
            end
            ## 
            ## Sets the defaultDecisionEnabled property value. Indicates whether the default decision is enabled or disabled when reviewers do not respond. Default value is false.
            ## @param value Value to set for the default_decision_enabled property.
            ## @return a void
            ## 
            def default_decision_enabled=(value)
                @default_decision_enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applyActions" => lambda {|n| @apply_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewApplyAction.create_from_discriminator_value(pn) }) },
                    "autoApplyDecisionsEnabled" => lambda {|n| @auto_apply_decisions_enabled = n.get_boolean_value() },
                    "decisionHistoriesForReviewersEnabled" => lambda {|n| @decision_histories_for_reviewers_enabled = n.get_boolean_value() },
                    "defaultDecision" => lambda {|n| @default_decision = n.get_string_value() },
                    "defaultDecisionEnabled" => lambda {|n| @default_decision_enabled = n.get_boolean_value() },
                    "instanceDurationInDays" => lambda {|n| @instance_duration_in_days = n.get_number_value() },
                    "justificationRequiredOnApproval" => lambda {|n| @justification_required_on_approval = n.get_boolean_value() },
                    "mailNotificationsEnabled" => lambda {|n| @mail_notifications_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommendationsEnabled" => lambda {|n| @recommendations_enabled = n.get_boolean_value() },
                    "recurrence" => lambda {|n| @recurrence = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PatternedRecurrence.create_from_discriminator_value(pn) }) },
                    "reminderNotificationsEnabled" => lambda {|n| @reminder_notifications_enabled = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the instanceDurationInDays property value. Duration of an access review instance in days. NOTE: If the stageSettings of the accessReviewScheduleDefinition object is defined, its durationInDays setting will be used instead of the value of this property.
            ## @return a integer
            ## 
            def instance_duration_in_days
                return @instance_duration_in_days
            end
            ## 
            ## Sets the instanceDurationInDays property value. Duration of an access review instance in days. NOTE: If the stageSettings of the accessReviewScheduleDefinition object is defined, its durationInDays setting will be used instead of the value of this property.
            ## @param value Value to set for the instance_duration_in_days property.
            ## @return a void
            ## 
            def instance_duration_in_days=(value)
                @instance_duration_in_days = value
            end
            ## 
            ## Gets the justificationRequiredOnApproval property value. Indicates whether reviewers are required to provide justification with their decision. Default value is false.
            ## @return a boolean
            ## 
            def justification_required_on_approval
                return @justification_required_on_approval
            end
            ## 
            ## Sets the justificationRequiredOnApproval property value. Indicates whether reviewers are required to provide justification with their decision. Default value is false.
            ## @param value Value to set for the justification_required_on_approval property.
            ## @return a void
            ## 
            def justification_required_on_approval=(value)
                @justification_required_on_approval = value
            end
            ## 
            ## Gets the mailNotificationsEnabled property value. Indicates whether emails are enabled or disabled. Default value is false.
            ## @return a boolean
            ## 
            def mail_notifications_enabled
                return @mail_notifications_enabled
            end
            ## 
            ## Sets the mailNotificationsEnabled property value. Indicates whether emails are enabled or disabled. Default value is false.
            ## @param value Value to set for the mail_notifications_enabled property.
            ## @return a void
            ## 
            def mail_notifications_enabled=(value)
                @mail_notifications_enabled = value
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
            ## Gets the recommendationsEnabled property value. Indicates whether decision recommendations are enabled or disabled. NOTE: If the stageSettings of the accessReviewScheduleDefinition object is defined, its recommendationsEnabled setting will be used instead of the value of this property.
            ## @return a boolean
            ## 
            def recommendations_enabled
                return @recommendations_enabled
            end
            ## 
            ## Sets the recommendationsEnabled property value. Indicates whether decision recommendations are enabled or disabled. NOTE: If the stageSettings of the accessReviewScheduleDefinition object is defined, its recommendationsEnabled setting will be used instead of the value of this property.
            ## @param value Value to set for the recommendations_enabled property.
            ## @return a void
            ## 
            def recommendations_enabled=(value)
                @recommendations_enabled = value
            end
            ## 
            ## Gets the recurrence property value. Detailed settings for recurrence using the standard Outlook recurrence object. Note: Only dayOfMonth, interval, and type (weekly, absoluteMonthly) properties are supported. Use the property startDate on recurrenceRange to determine the day the review starts.
            ## @return a patterned_recurrence
            ## 
            def recurrence
                return @recurrence
            end
            ## 
            ## Sets the recurrence property value. Detailed settings for recurrence using the standard Outlook recurrence object. Note: Only dayOfMonth, interval, and type (weekly, absoluteMonthly) properties are supported. Use the property startDate on recurrenceRange to determine the day the review starts.
            ## @param value Value to set for the recurrence property.
            ## @return a void
            ## 
            def recurrence=(value)
                @recurrence = value
            end
            ## 
            ## Gets the reminderNotificationsEnabled property value. Indicates whether reminders are enabled or disabled. Default value is false.
            ## @return a boolean
            ## 
            def reminder_notifications_enabled
                return @reminder_notifications_enabled
            end
            ## 
            ## Sets the reminderNotificationsEnabled property value. Indicates whether reminders are enabled or disabled. Default value is false.
            ## @param value Value to set for the reminder_notifications_enabled property.
            ## @return a void
            ## 
            def reminder_notifications_enabled=(value)
                @reminder_notifications_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("applyActions", @apply_actions)
                writer.write_boolean_value("autoApplyDecisionsEnabled", @auto_apply_decisions_enabled)
                writer.write_boolean_value("decisionHistoriesForReviewersEnabled", @decision_histories_for_reviewers_enabled)
                writer.write_string_value("defaultDecision", @default_decision)
                writer.write_boolean_value("defaultDecisionEnabled", @default_decision_enabled)
                writer.write_number_value("instanceDurationInDays", @instance_duration_in_days)
                writer.write_boolean_value("justificationRequiredOnApproval", @justification_required_on_approval)
                writer.write_boolean_value("mailNotificationsEnabled", @mail_notifications_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("recommendationsEnabled", @recommendations_enabled)
                writer.write_object_value("recurrence", @recurrence)
                writer.write_boolean_value("reminderNotificationsEnabled", @reminder_notifications_enabled)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
