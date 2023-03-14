require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewInstance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Returns the collection of reviewers who were contacted to complete this review. While the reviewers and fallbackReviewers properties of the accessReviewScheduleDefinition might specify group owners or managers as reviewers, contactedReviewers returns their individual identities. Supports $select. Read-only.
            @contacted_reviewers
            ## 
            # Each user reviewed in an accessReviewInstance has a decision item representing if they were approved, denied, or not yet reviewed.
            @decisions
            ## 
            # DateTime when review instance is scheduled to end.The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $select. Read-only.
            @end_date_time
            ## 
            # This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist. Supports $select.
            @fallback_reviewers
            ## 
            # This collection of access review scopes is used to define who the reviewers are. Supports $select. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API.
            @reviewers
            ## 
            # Created based on scope and instanceEnumerationScope at the accessReviewScheduleDefinition level. Defines the scope of users reviewed in a group. Supports $select and $filter (contains only). Read-only.
            @scope
            ## 
            # If the instance has multiple stages, this returns the collection of stages. A new stage will only be created when the previous stage ends. The existence, number, and settings of stages on a review instance are created based on the accessReviewStageSettings on the parent accessReviewScheduleDefinition.
            @stages
            ## 
            # DateTime when review instance is scheduled to start. May be in the future. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $select. Read-only.
            @start_date_time
            ## 
            # Specifies the status of an accessReview. Possible values: Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed. Supports $select, $orderby, and $filter (eq only). Read-only.
            @status
            ## 
            ## Instantiates a new accessReviewInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contactedReviewers property value. Returns the collection of reviewers who were contacted to complete this review. While the reviewers and fallbackReviewers properties of the accessReviewScheduleDefinition might specify group owners or managers as reviewers, contactedReviewers returns their individual identities. Supports $select. Read-only.
            ## @return a access_review_reviewer
            ## 
            def contacted_reviewers
                return @contacted_reviewers
            end
            ## 
            ## Sets the contactedReviewers property value. Returns the collection of reviewers who were contacted to complete this review. While the reviewers and fallbackReviewers properties of the accessReviewScheduleDefinition might specify group owners or managers as reviewers, contactedReviewers returns their individual identities. Supports $select. Read-only.
            ## @param value Value to set for the contacted_reviewers property.
            ## @return a void
            ## 
            def contacted_reviewers=(value)
                @contacted_reviewers = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewInstance.new
            end
            ## 
            ## Gets the decisions property value. Each user reviewed in an accessReviewInstance has a decision item representing if they were approved, denied, or not yet reviewed.
            ## @return a access_review_instance_decision_item
            ## 
            def decisions
                return @decisions
            end
            ## 
            ## Sets the decisions property value. Each user reviewed in an accessReviewInstance has a decision item representing if they were approved, denied, or not yet reviewed.
            ## @param value Value to set for the decisions property.
            ## @return a void
            ## 
            def decisions=(value)
                @decisions = value
            end
            ## 
            ## Gets the endDateTime property value. DateTime when review instance is scheduled to end.The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $select. Read-only.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. DateTime when review instance is scheduled to end.The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $select. Read-only.
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the fallbackReviewers property value. This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist. Supports $select.
            ## @return a access_review_reviewer_scope
            ## 
            def fallback_reviewers
                return @fallback_reviewers
            end
            ## 
            ## Sets the fallbackReviewers property value. This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist. Supports $select.
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
                    "contactedReviewers" => lambda {|n| @contacted_reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewer.create_from_discriminator_value(pn) }) },
                    "decisions" => lambda {|n| @decisions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewInstanceDecisionItem.create_from_discriminator_value(pn) }) },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "fallbackReviewers" => lambda {|n| @fallback_reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "reviewers" => lambda {|n| @reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "scope" => lambda {|n| @scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewScope.create_from_discriminator_value(pn) }) },
                    "stages" => lambda {|n| @stages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewStage.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the reviewers property value. This collection of access review scopes is used to define who the reviewers are. Supports $select. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API.
            ## @return a access_review_reviewer_scope
            ## 
            def reviewers
                return @reviewers
            end
            ## 
            ## Sets the reviewers property value. This collection of access review scopes is used to define who the reviewers are. Supports $select. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API.
            ## @param value Value to set for the reviewers property.
            ## @return a void
            ## 
            def reviewers=(value)
                @reviewers = value
            end
            ## 
            ## Gets the scope property value. Created based on scope and instanceEnumerationScope at the accessReviewScheduleDefinition level. Defines the scope of users reviewed in a group. Supports $select and $filter (contains only). Read-only.
            ## @return a access_review_scope
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. Created based on scope and instanceEnumerationScope at the accessReviewScheduleDefinition level. Defines the scope of users reviewed in a group. Supports $select and $filter (contains only). Read-only.
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
                writer.write_collection_of_object_values("contactedReviewers", @contacted_reviewers)
                writer.write_collection_of_object_values("decisions", @decisions)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_collection_of_object_values("fallbackReviewers", @fallback_reviewers)
                writer.write_collection_of_object_values("reviewers", @reviewers)
                writer.write_object_value("scope", @scope)
                writer.write_collection_of_object_values("stages", @stages)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the stages property value. If the instance has multiple stages, this returns the collection of stages. A new stage will only be created when the previous stage ends. The existence, number, and settings of stages on a review instance are created based on the accessReviewStageSettings on the parent accessReviewScheduleDefinition.
            ## @return a access_review_stage
            ## 
            def stages
                return @stages
            end
            ## 
            ## Sets the stages property value. If the instance has multiple stages, this returns the collection of stages. A new stage will only be created when the previous stage ends. The existence, number, and settings of stages on a review instance are created based on the accessReviewStageSettings on the parent accessReviewScheduleDefinition.
            ## @param value Value to set for the stages property.
            ## @return a void
            ## 
            def stages=(value)
                @stages = value
            end
            ## 
            ## Gets the startDateTime property value. DateTime when review instance is scheduled to start. May be in the future. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $select. Read-only.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. DateTime when review instance is scheduled to start. May be in the future. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $select. Read-only.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. Specifies the status of an accessReview. Possible values: Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed. Supports $select, $orderby, and $filter (eq only). Read-only.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Specifies the status of an accessReview. Possible values: Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed. Supports $select, $orderby, and $filter (eq only). Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
