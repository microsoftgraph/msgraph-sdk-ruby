require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewHistoryDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The createdBy property
            @created_by
            ## 
            # Timestamp when the access review definition was created.
            @created_date_time
            ## 
            # Determines which review decisions will be included in the fetched review history data if specified. Optional on create. All decisions will be included by default if no decisions are provided on create. Possible values are: approve, deny, dontKnow, notReviewed, and notNotified.
            @decisions
            ## 
            # Name for the access review history data collection. Required.
            @display_name
            ## 
            # If the accessReviewHistoryDefinition is a recurring definition, instances represent each recurrence. A definition that does not recur will have exactly one instance.
            @instances
            ## 
            # A timestamp. Reviews ending on or before this date will be included in the fetched history data. Only required if scheduleSettings is not defined.
            @review_history_period_end_date_time
            ## 
            # A timestamp. Reviews starting on or before this date will be included in the fetched history data. Only required if scheduleSettings is not defined.
            @review_history_period_start_date_time
            ## 
            # The settings for a recurring access review history definition series. Only required if reviewHistoryPeriodStartDateTime or reviewHistoryPeriodEndDateTime are not defined. Not supported yet.
            @schedule_settings
            ## 
            # Used to scope what reviews are included in the fetched history data. Fetches reviews whose scope matches with this provided scope. Required.
            @scopes
            ## 
            # Represents the status of the review history data collection. The possible values are: done, inProgress, error, requested, unknownFutureValue.
            @status
            ## 
            ## Instantiates a new accessReviewHistoryDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a user_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp when the access review definition was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp when the access review definition was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_history_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewHistoryDefinition.new
            end
            ## 
            ## Gets the decisions property value. Determines which review decisions will be included in the fetched review history data if specified. Optional on create. All decisions will be included by default if no decisions are provided on create. Possible values are: approve, deny, dontKnow, notReviewed, and notNotified.
            ## @return a access_review_history_decision_filter
            ## 
            def decisions
                return @decisions
            end
            ## 
            ## Sets the decisions property value. Determines which review decisions will be included in the fetched review history data if specified. Optional on create. All decisions will be included by default if no decisions are provided on create. Possible values are: approve, deny, dontKnow, notReviewed, and notNotified.
            ## @param value Value to set for the decisions property.
            ## @return a void
            ## 
            def decisions=(value)
                @decisions = value
            end
            ## 
            ## Gets the displayName property value. Name for the access review history data collection. Required.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name for the access review history data collection. Required.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "decisions" => lambda {|n| @decisions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewHistoryDecisionFilter.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "instances" => lambda {|n| @instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewHistoryInstance.create_from_discriminator_value(pn) }) },
                    "reviewHistoryPeriodEndDateTime" => lambda {|n| @review_history_period_end_date_time = n.get_date_time_value() },
                    "reviewHistoryPeriodStartDateTime" => lambda {|n| @review_history_period_start_date_time = n.get_date_time_value() },
                    "scheduleSettings" => lambda {|n| @schedule_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewHistoryScheduleSettings.create_from_discriminator_value(pn) }) },
                    "scopes" => lambda {|n| @scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewScope.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::AccessReviewHistoryStatus) },
                })
            end
            ## 
            ## Gets the instances property value. If the accessReviewHistoryDefinition is a recurring definition, instances represent each recurrence. A definition that does not recur will have exactly one instance.
            ## @return a access_review_history_instance
            ## 
            def instances
                return @instances
            end
            ## 
            ## Sets the instances property value. If the accessReviewHistoryDefinition is a recurring definition, instances represent each recurrence. A definition that does not recur will have exactly one instance.
            ## @param value Value to set for the instances property.
            ## @return a void
            ## 
            def instances=(value)
                @instances = value
            end
            ## 
            ## Gets the reviewHistoryPeriodEndDateTime property value. A timestamp. Reviews ending on or before this date will be included in the fetched history data. Only required if scheduleSettings is not defined.
            ## @return a date_time
            ## 
            def review_history_period_end_date_time
                return @review_history_period_end_date_time
            end
            ## 
            ## Sets the reviewHistoryPeriodEndDateTime property value. A timestamp. Reviews ending on or before this date will be included in the fetched history data. Only required if scheduleSettings is not defined.
            ## @param value Value to set for the review_history_period_end_date_time property.
            ## @return a void
            ## 
            def review_history_period_end_date_time=(value)
                @review_history_period_end_date_time = value
            end
            ## 
            ## Gets the reviewHistoryPeriodStartDateTime property value. A timestamp. Reviews starting on or before this date will be included in the fetched history data. Only required if scheduleSettings is not defined.
            ## @return a date_time
            ## 
            def review_history_period_start_date_time
                return @review_history_period_start_date_time
            end
            ## 
            ## Sets the reviewHistoryPeriodStartDateTime property value. A timestamp. Reviews starting on or before this date will be included in the fetched history data. Only required if scheduleSettings is not defined.
            ## @param value Value to set for the review_history_period_start_date_time property.
            ## @return a void
            ## 
            def review_history_period_start_date_time=(value)
                @review_history_period_start_date_time = value
            end
            ## 
            ## Gets the scheduleSettings property value. The settings for a recurring access review history definition series. Only required if reviewHistoryPeriodStartDateTime or reviewHistoryPeriodEndDateTime are not defined. Not supported yet.
            ## @return a access_review_history_schedule_settings
            ## 
            def schedule_settings
                return @schedule_settings
            end
            ## 
            ## Sets the scheduleSettings property value. The settings for a recurring access review history definition series. Only required if reviewHistoryPeriodStartDateTime or reviewHistoryPeriodEndDateTime are not defined. Not supported yet.
            ## @param value Value to set for the schedule_settings property.
            ## @return a void
            ## 
            def schedule_settings=(value)
                @schedule_settings = value
            end
            ## 
            ## Gets the scopes property value. Used to scope what reviews are included in the fetched history data. Fetches reviews whose scope matches with this provided scope. Required.
            ## @return a access_review_scope
            ## 
            def scopes
                return @scopes
            end
            ## 
            ## Sets the scopes property value. Used to scope what reviews are included in the fetched history data. Fetches reviews whose scope matches with this provided scope. Required.
            ## @param value Value to set for the scopes property.
            ## @return a void
            ## 
            def scopes=(value)
                @scopes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("decisions", @decisions)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("instances", @instances)
                writer.write_date_time_value("reviewHistoryPeriodEndDateTime", @review_history_period_end_date_time)
                writer.write_date_time_value("reviewHistoryPeriodStartDateTime", @review_history_period_start_date_time)
                writer.write_object_value("scheduleSettings", @schedule_settings)
                writer.write_collection_of_object_values("scopes", @scopes)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Represents the status of the review history data collection. The possible values are: done, inProgress, error, requested, unknownFutureValue.
            ## @return a access_review_history_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Represents the status of the review history data collection. The possible values are: done, inProgress, error, requested, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
