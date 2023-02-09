require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignmentReviewSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The default decision to apply if the access is not reviewed. The possible values are: keepAccess, removeAccess, acceptAccessRecommendation, unknownFutureValue.
            @expiration_behavior
            ## 
            # This collection specifies the users who will be the fallback reviewers when the primary reviewers don't respond.
            @fallback_reviewers
            ## 
            # If true, access reviews are required for assignments through this policy.
            @is_enabled
            ## 
            # Specifies whether to display recommendations to the reviewer. The default value is true.
            @is_recommendation_enabled
            ## 
            # Specifies whether the reviewer must provide justification for the approval. The default value is true.
            @is_reviewer_justification_required
            ## 
            # Specifies whether the principals can review their own assignments.
            @is_self_review
            ## 
            # The OdataType property
            @odata_type
            ## 
            # This collection specifies the users or group of users who will review the access package assignments.
            @primary_reviewers
            ## 
            # When the first review should start and how often it should recur.
            @schedule
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
            ## Instantiates a new accessPackageAssignmentReviewSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_review_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentReviewSettings.new
            end
            ## 
            ## Gets the expirationBehavior property value. The default decision to apply if the access is not reviewed. The possible values are: keepAccess, removeAccess, acceptAccessRecommendation, unknownFutureValue.
            ## @return a access_review_expiration_behavior
            ## 
            def expiration_behavior
                return @expiration_behavior
            end
            ## 
            ## Sets the expirationBehavior property value. The default decision to apply if the access is not reviewed. The possible values are: keepAccess, removeAccess, acceptAccessRecommendation, unknownFutureValue.
            ## @param value Value to set for the expiration_behavior property.
            ## @return a void
            ## 
            def expiration_behavior=(value)
                @expiration_behavior = value
            end
            ## 
            ## Gets the fallbackReviewers property value. This collection specifies the users who will be the fallback reviewers when the primary reviewers don't respond.
            ## @return a subject_set
            ## 
            def fallback_reviewers
                return @fallback_reviewers
            end
            ## 
            ## Sets the fallbackReviewers property value. This collection specifies the users who will be the fallback reviewers when the primary reviewers don't respond.
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
                    "expirationBehavior" => lambda {|n| @expiration_behavior = n.get_enum_value(MicrosoftGraph::Models::AccessReviewExpirationBehavior) },
                    "fallbackReviewers" => lambda {|n| @fallback_reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "isRecommendationEnabled" => lambda {|n| @is_recommendation_enabled = n.get_boolean_value() },
                    "isReviewerJustificationRequired" => lambda {|n| @is_reviewer_justification_required = n.get_boolean_value() },
                    "isSelfReview" => lambda {|n| @is_self_review = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "primaryReviewers" => lambda {|n| @primary_reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EntitlementManagementSchedule.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isEnabled property value. If true, access reviews are required for assignments through this policy.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. If true, access reviews are required for assignments through this policy.
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the isRecommendationEnabled property value. Specifies whether to display recommendations to the reviewer. The default value is true.
            ## @return a boolean
            ## 
            def is_recommendation_enabled
                return @is_recommendation_enabled
            end
            ## 
            ## Sets the isRecommendationEnabled property value. Specifies whether to display recommendations to the reviewer. The default value is true.
            ## @param value Value to set for the is_recommendation_enabled property.
            ## @return a void
            ## 
            def is_recommendation_enabled=(value)
                @is_recommendation_enabled = value
            end
            ## 
            ## Gets the isReviewerJustificationRequired property value. Specifies whether the reviewer must provide justification for the approval. The default value is true.
            ## @return a boolean
            ## 
            def is_reviewer_justification_required
                return @is_reviewer_justification_required
            end
            ## 
            ## Sets the isReviewerJustificationRequired property value. Specifies whether the reviewer must provide justification for the approval. The default value is true.
            ## @param value Value to set for the is_reviewer_justification_required property.
            ## @return a void
            ## 
            def is_reviewer_justification_required=(value)
                @is_reviewer_justification_required = value
            end
            ## 
            ## Gets the isSelfReview property value. Specifies whether the principals can review their own assignments.
            ## @return a boolean
            ## 
            def is_self_review
                return @is_self_review
            end
            ## 
            ## Sets the isSelfReview property value. Specifies whether the principals can review their own assignments.
            ## @param value Value to set for the is_self_review property.
            ## @return a void
            ## 
            def is_self_review=(value)
                @is_self_review = value
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
            ## Gets the primaryReviewers property value. This collection specifies the users or group of users who will review the access package assignments.
            ## @return a subject_set
            ## 
            def primary_reviewers
                return @primary_reviewers
            end
            ## 
            ## Sets the primaryReviewers property value. This collection specifies the users or group of users who will review the access package assignments.
            ## @param value Value to set for the primary_reviewers property.
            ## @return a void
            ## 
            def primary_reviewers=(value)
                @primary_reviewers = value
            end
            ## 
            ## Gets the schedule property value. When the first review should start and how often it should recur.
            ## @return a entitlement_management_schedule
            ## 
            def schedule
                return @schedule
            end
            ## 
            ## Sets the schedule property value. When the first review should start and how often it should recur.
            ## @param value Value to set for the schedule property.
            ## @return a void
            ## 
            def schedule=(value)
                @schedule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("expirationBehavior", @expiration_behavior)
                writer.write_collection_of_object_values("fallbackReviewers", @fallback_reviewers)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_boolean_value("isRecommendationEnabled", @is_recommendation_enabled)
                writer.write_boolean_value("isReviewerJustificationRequired", @is_reviewer_justification_required)
                writer.write_boolean_value("isSelfReview", @is_self_review)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("primaryReviewers", @primary_reviewers)
                writer.write_object_value("schedule", @schedule)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
