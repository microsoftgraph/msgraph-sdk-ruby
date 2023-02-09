require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewStage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
            @decisions
            ## 
            # The date and time in ISO 8601 format and UTC time when the review stage is scheduled to end. This property is the cumulative total of the durationInDays for all stages. Read-only.
            @end_date_time
            ## 
            # This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist.
            @fallback_reviewers
            ## 
            # This collection of access review scopes is used to define who the reviewers are. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API.
            @reviewers
            ## 
            # The date and time in ISO 8601 format and UTC time when the review stage is scheduled to start. Read-only.
            @start_date_time
            ## 
            # Specifies the status of an accessReviewStage. Possible values: Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed. Supports $orderby, and $filter (eq only). Read-only.
            @status
            ## 
            ## Instantiates a new accessReviewStage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_stage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewStage.new
            end
            ## 
            ## Gets the decisions property value. Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
            ## @return a access_review_instance_decision_item
            ## 
            def decisions
                return @decisions
            end
            ## 
            ## Sets the decisions property value. Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
            ## @param value Value to set for the decisions property.
            ## @return a void
            ## 
            def decisions=(value)
                @decisions = value
            end
            ## 
            ## Gets the endDateTime property value. The date and time in ISO 8601 format and UTC time when the review stage is scheduled to end. This property is the cumulative total of the durationInDays for all stages. Read-only.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The date and time in ISO 8601 format and UTC time when the review stage is scheduled to end. This property is the cumulative total of the durationInDays for all stages. Read-only.
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the fallbackReviewers property value. This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist.
            ## @return a access_review_reviewer_scope
            ## 
            def fallback_reviewers
                return @fallback_reviewers
            end
            ## 
            ## Sets the fallbackReviewers property value. This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist.
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
                    "decisions" => lambda {|n| @decisions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewInstanceDecisionItem.create_from_discriminator_value(pn) }) },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "fallbackReviewers" => lambda {|n| @fallback_reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "reviewers" => lambda {|n| @reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the reviewers property value. This collection of access review scopes is used to define who the reviewers are. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API.
            ## @return a access_review_reviewer_scope
            ## 
            def reviewers
                return @reviewers
            end
            ## 
            ## Sets the reviewers property value. This collection of access review scopes is used to define who the reviewers are. For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API.
            ## @param value Value to set for the reviewers property.
            ## @return a void
            ## 
            def reviewers=(value)
                @reviewers = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("decisions", @decisions)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_collection_of_object_values("fallbackReviewers", @fallback_reviewers)
                writer.write_collection_of_object_values("reviewers", @reviewers)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the startDateTime property value. The date and time in ISO 8601 format and UTC time when the review stage is scheduled to start. Read-only.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The date and time in ISO 8601 format and UTC time when the review stage is scheduled to start. Read-only.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. Specifies the status of an accessReviewStage. Possible values: Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed. Supports $orderby, and $filter (eq only). Read-only.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Specifies the status of an accessReviewStage. Possible values: Initializing, NotStarted, Starting, InProgress, Completing, Completed, AutoReviewing, and AutoReviewed. Supports $orderby, and $filter (eq only). Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
