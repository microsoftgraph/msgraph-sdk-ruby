require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewStageSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicate which decisions will go to the next stage. Can be a sub-set of Approve, Deny, Recommendation, or NotReviewed. If not provided, all decisions will go to the next stage. Optional.
            @decisions_that_will_move_to_next_stage
            ## 
            # Defines the sequential or parallel order of the stages and depends on the stageId. Only sequential stages are currently supported. For example, if stageId is 2, then dependsOn must be 1. If stageId is 1, do not specify dependsOn. Required if stageId is not 1.
            @depends_on
            ## 
            # The duration of the stage. Required.  NOTE: The cumulative value of this property across all stages  1. Will override the instanceDurationInDays setting on the accessReviewScheduleDefinition object. 2. Cannot exceed the length of one recurrence. That is, if the review recurs weekly, the cumulative durationInDays cannot exceed 7.
            @duration_in_days
            ## 
            # If provided, the fallback reviewers are asked to complete a review if the primary reviewers do not exist. For example, if managers are selected as reviewers and a principal under review does not have a manager in Azure AD, the fallback reviewers are asked to review that principal. NOTE: The value of this property will override the corresponding setting on the accessReviewScheduleDefinition object.
            @fallback_reviewers
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates whether showing recommendations to reviewers is enabled. Required. NOTE: The value of this property will override override the corresponding setting on the accessReviewScheduleDefinition object.
            @recommendations_enabled
            ## 
            # Defines who the reviewers are. If none are specified, the review is a self-review (users review their own access).  For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API. NOTE: The value of this property will override the corresponding setting on the accessReviewScheduleDefinition.
            @reviewers
            ## 
            # Unique identifier of the accessReviewStageSettings object. The stageId will be used by the dependsOn property to indicate the order of the stages. Required.
            @stage_id
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
            ## Instantiates a new accessReviewStageSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_stage_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewStageSettings.new
            end
            ## 
            ## Gets the decisionsThatWillMoveToNextStage property value. Indicate which decisions will go to the next stage. Can be a sub-set of Approve, Deny, Recommendation, or NotReviewed. If not provided, all decisions will go to the next stage. Optional.
            ## @return a string
            ## 
            def decisions_that_will_move_to_next_stage
                return @decisions_that_will_move_to_next_stage
            end
            ## 
            ## Sets the decisionsThatWillMoveToNextStage property value. Indicate which decisions will go to the next stage. Can be a sub-set of Approve, Deny, Recommendation, or NotReviewed. If not provided, all decisions will go to the next stage. Optional.
            ## @param value Value to set for the decisions_that_will_move_to_next_stage property.
            ## @return a void
            ## 
            def decisions_that_will_move_to_next_stage=(value)
                @decisions_that_will_move_to_next_stage = value
            end
            ## 
            ## Gets the dependsOn property value. Defines the sequential or parallel order of the stages and depends on the stageId. Only sequential stages are currently supported. For example, if stageId is 2, then dependsOn must be 1. If stageId is 1, do not specify dependsOn. Required if stageId is not 1.
            ## @return a string
            ## 
            def depends_on
                return @depends_on
            end
            ## 
            ## Sets the dependsOn property value. Defines the sequential or parallel order of the stages and depends on the stageId. Only sequential stages are currently supported. For example, if stageId is 2, then dependsOn must be 1. If stageId is 1, do not specify dependsOn. Required if stageId is not 1.
            ## @param value Value to set for the depends_on property.
            ## @return a void
            ## 
            def depends_on=(value)
                @depends_on = value
            end
            ## 
            ## Gets the durationInDays property value. The duration of the stage. Required.  NOTE: The cumulative value of this property across all stages  1. Will override the instanceDurationInDays setting on the accessReviewScheduleDefinition object. 2. Cannot exceed the length of one recurrence. That is, if the review recurs weekly, the cumulative durationInDays cannot exceed 7.
            ## @return a integer
            ## 
            def duration_in_days
                return @duration_in_days
            end
            ## 
            ## Sets the durationInDays property value. The duration of the stage. Required.  NOTE: The cumulative value of this property across all stages  1. Will override the instanceDurationInDays setting on the accessReviewScheduleDefinition object. 2. Cannot exceed the length of one recurrence. That is, if the review recurs weekly, the cumulative durationInDays cannot exceed 7.
            ## @param value Value to set for the duration_in_days property.
            ## @return a void
            ## 
            def duration_in_days=(value)
                @duration_in_days = value
            end
            ## 
            ## Gets the fallbackReviewers property value. If provided, the fallback reviewers are asked to complete a review if the primary reviewers do not exist. For example, if managers are selected as reviewers and a principal under review does not have a manager in Azure AD, the fallback reviewers are asked to review that principal. NOTE: The value of this property will override the corresponding setting on the accessReviewScheduleDefinition object.
            ## @return a access_review_reviewer_scope
            ## 
            def fallback_reviewers
                return @fallback_reviewers
            end
            ## 
            ## Sets the fallbackReviewers property value. If provided, the fallback reviewers are asked to complete a review if the primary reviewers do not exist. For example, if managers are selected as reviewers and a principal under review does not have a manager in Azure AD, the fallback reviewers are asked to review that principal. NOTE: The value of this property will override the corresponding setting on the accessReviewScheduleDefinition object.
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
                return {
                    "decisionsThatWillMoveToNextStage" => lambda {|n| @decisions_that_will_move_to_next_stage = n.get_collection_of_primitive_values(String) },
                    "dependsOn" => lambda {|n| @depends_on = n.get_collection_of_primitive_values(String) },
                    "durationInDays" => lambda {|n| @duration_in_days = n.get_number_value() },
                    "fallbackReviewers" => lambda {|n| @fallback_reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommendationsEnabled" => lambda {|n| @recommendations_enabled = n.get_boolean_value() },
                    "reviewers" => lambda {|n| @reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "stageId" => lambda {|n| @stage_id = n.get_string_value() },
                }
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
            ## Gets the recommendationsEnabled property value. Indicates whether showing recommendations to reviewers is enabled. Required. NOTE: The value of this property will override override the corresponding setting on the accessReviewScheduleDefinition object.
            ## @return a boolean
            ## 
            def recommendations_enabled
                return @recommendations_enabled
            end
            ## 
            ## Sets the recommendationsEnabled property value. Indicates whether showing recommendations to reviewers is enabled. Required. NOTE: The value of this property will override override the corresponding setting on the accessReviewScheduleDefinition object.
            ## @param value Value to set for the recommendations_enabled property.
            ## @return a void
            ## 
            def recommendations_enabled=(value)
                @recommendations_enabled = value
            end
            ## 
            ## Gets the reviewers property value. Defines who the reviewers are. If none are specified, the review is a self-review (users review their own access).  For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API. NOTE: The value of this property will override the corresponding setting on the accessReviewScheduleDefinition.
            ## @return a access_review_reviewer_scope
            ## 
            def reviewers
                return @reviewers
            end
            ## 
            ## Sets the reviewers property value. Defines who the reviewers are. If none are specified, the review is a self-review (users review their own access).  For examples of options for assigning reviewers, see Assign reviewers to your access review definition using the Microsoft Graph API. NOTE: The value of this property will override the corresponding setting on the accessReviewScheduleDefinition.
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
                writer.write_collection_of_primitive_values("decisionsThatWillMoveToNextStage", @decisions_that_will_move_to_next_stage)
                writer.write_collection_of_primitive_values("dependsOn", @depends_on)
                writer.write_number_value("durationInDays", @duration_in_days)
                writer.write_collection_of_object_values("fallbackReviewers", @fallback_reviewers)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("recommendationsEnabled", @recommendations_enabled)
                writer.write_collection_of_object_values("reviewers", @reviewers)
                writer.write_string_value("stageId", @stage_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the stageId property value. Unique identifier of the accessReviewStageSettings object. The stageId will be used by the dependsOn property to indicate the order of the stages. Required.
            ## @return a string
            ## 
            def stage_id
                return @stage_id
            end
            ## 
            ## Sets the stageId property value. Unique identifier of the accessReviewStageSettings object. The stageId will be used by the dependsOn property to indicate the order of the stages. Required.
            ## @param value Value to set for the stage_id property.
            ## @return a void
            ## 
            def stage_id=(value)
                @stage_id = value
            end
        end
    end
end
