require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewInstanceDecisionItem < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of the accessReviewInstance parent. Supports $select. Read-only.
            @access_review_id
            ## 
            # The identifier of the user who applied the decision. Read-only.
            @applied_by
            ## 
            # The timestamp when the approval decision was applied.00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't applied the decision or it was automatically applied. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  Supports $select. Read-only.
            @applied_date_time
            ## 
            # The result of applying the decision. Possible values: New, AppliedSuccessfully, AppliedWithUnknownFailure, AppliedSuccessfullyButObjectNotFound and ApplyNotSupported. Supports $select, $orderby, and $filter (eq only). Read-only.
            @apply_result
            ## 
            # Result of the review. Possible values: Approve, Deny, NotReviewed, or DontKnow. Supports $select, $orderby, and $filter (eq only).
            @decision
            ## 
            # Justification left by the reviewer when they made the decision.
            @justification
            ## 
            # Every decision item in an access review represents a principal's access to a resource. This property represents details of the principal. For example, if a decision item represents access of User 'Bob' to Group 'Sales' - The principal is 'Bob' and the resource is 'Sales'. Principals can be of two types - userIdentity and servicePrincipalIdentity. Supports $select. Read-only.
            @principal
            ## 
            # A link to the principal object. For example, https://graph.microsoft.com/v1.0/users/a6c7aecb-cbfd-4763-87ef-e91b4bd509d9. Read-only.
            @principal_link
            ## 
            # A system-generated recommendation for the approval decision based off last interactive sign-in to tenant. Recommend approve if sign-in is within thirty days of start of review. Recommend deny if sign-in is greater than thirty days of start of review. Recommendation not available otherwise. Possible values: Approve, Deny, or NoInfoAvailable. Supports $select, $orderby, and $filter (eq only). Read-only.
            @recommendation
            ## 
            # Every decision item in an access review represents a principal's access to a resource. This property represents details of the resource. For example, if a decision item represents access of User 'Bob' to Group 'Sales' - The principal is Bob and the resource is 'Sales'. Resources can be of multiple types. See accessReviewInstanceDecisionItemResource. Read-only.
            @resource
            ## 
            # A link to the resource. For example, https://graph.microsoft.com/v1.0/servicePrincipals/c86300f3-8695-4320-9f6e-32a2555f5ff8. Supports $select. Read-only.
            @resource_link
            ## 
            # The identifier of the reviewer.00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't reviewed. Supports $select. Read-only.
            @reviewed_by
            ## 
            # The timestamp when the review decision occurred. Supports $select. Read-only.
            @reviewed_date_time
            ## 
            ## Gets the accessReviewId property value. The identifier of the accessReviewInstance parent. Supports $select. Read-only.
            ## @return a string
            ## 
            def access_review_id
                return @access_review_id
            end
            ## 
            ## Sets the accessReviewId property value. The identifier of the accessReviewInstance parent. Supports $select. Read-only.
            ## @param value Value to set for the access_review_id property.
            ## @return a void
            ## 
            def access_review_id=(value)
                @access_review_id = value
            end
            ## 
            ## Gets the appliedBy property value. The identifier of the user who applied the decision. Read-only.
            ## @return a user_identity
            ## 
            def applied_by
                return @applied_by
            end
            ## 
            ## Sets the appliedBy property value. The identifier of the user who applied the decision. Read-only.
            ## @param value Value to set for the applied_by property.
            ## @return a void
            ## 
            def applied_by=(value)
                @applied_by = value
            end
            ## 
            ## Gets the appliedDateTime property value. The timestamp when the approval decision was applied.00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't applied the decision or it was automatically applied. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  Supports $select. Read-only.
            ## @return a date_time
            ## 
            def applied_date_time
                return @applied_date_time
            end
            ## 
            ## Sets the appliedDateTime property value. The timestamp when the approval decision was applied.00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't applied the decision or it was automatically applied. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  Supports $select. Read-only.
            ## @param value Value to set for the applied_date_time property.
            ## @return a void
            ## 
            def applied_date_time=(value)
                @applied_date_time = value
            end
            ## 
            ## Gets the applyResult property value. The result of applying the decision. Possible values: New, AppliedSuccessfully, AppliedWithUnknownFailure, AppliedSuccessfullyButObjectNotFound and ApplyNotSupported. Supports $select, $orderby, and $filter (eq only). Read-only.
            ## @return a string
            ## 
            def apply_result
                return @apply_result
            end
            ## 
            ## Sets the applyResult property value. The result of applying the decision. Possible values: New, AppliedSuccessfully, AppliedWithUnknownFailure, AppliedSuccessfullyButObjectNotFound and ApplyNotSupported. Supports $select, $orderby, and $filter (eq only). Read-only.
            ## @param value Value to set for the apply_result property.
            ## @return a void
            ## 
            def apply_result=(value)
                @apply_result = value
            end
            ## 
            ## Instantiates a new accessReviewInstanceDecisionItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_instance_decision_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewInstanceDecisionItem.new
            end
            ## 
            ## Gets the decision property value. Result of the review. Possible values: Approve, Deny, NotReviewed, or DontKnow. Supports $select, $orderby, and $filter (eq only).
            ## @return a string
            ## 
            def decision
                return @decision
            end
            ## 
            ## Sets the decision property value. Result of the review. Possible values: Approve, Deny, NotReviewed, or DontKnow. Supports $select, $orderby, and $filter (eq only).
            ## @param value Value to set for the decision property.
            ## @return a void
            ## 
            def decision=(value)
                @decision = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessReviewId" => lambda {|n| @access_review_id = n.get_string_value() },
                    "appliedBy" => lambda {|n| @applied_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "appliedDateTime" => lambda {|n| @applied_date_time = n.get_date_time_value() },
                    "applyResult" => lambda {|n| @apply_result = n.get_string_value() },
                    "decision" => lambda {|n| @decision = n.get_string_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "principalLink" => lambda {|n| @principal_link = n.get_string_value() },
                    "recommendation" => lambda {|n| @recommendation = n.get_string_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewInstanceDecisionItemResource.create_from_discriminator_value(pn) }) },
                    "resourceLink" => lambda {|n| @resource_link = n.get_string_value() },
                    "reviewedBy" => lambda {|n| @reviewed_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "reviewedDateTime" => lambda {|n| @reviewed_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the justification property value. Justification left by the reviewer when they made the decision.
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. Justification left by the reviewer when they made the decision.
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the principal property value. Every decision item in an access review represents a principal's access to a resource. This property represents details of the principal. For example, if a decision item represents access of User 'Bob' to Group 'Sales' - The principal is 'Bob' and the resource is 'Sales'. Principals can be of two types - userIdentity and servicePrincipalIdentity. Supports $select. Read-only.
            ## @return a identity
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. Every decision item in an access review represents a principal's access to a resource. This property represents details of the principal. For example, if a decision item represents access of User 'Bob' to Group 'Sales' - The principal is 'Bob' and the resource is 'Sales'. Principals can be of two types - userIdentity and servicePrincipalIdentity. Supports $select. Read-only.
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalLink property value. A link to the principal object. For example, https://graph.microsoft.com/v1.0/users/a6c7aecb-cbfd-4763-87ef-e91b4bd509d9. Read-only.
            ## @return a string
            ## 
            def principal_link
                return @principal_link
            end
            ## 
            ## Sets the principalLink property value. A link to the principal object. For example, https://graph.microsoft.com/v1.0/users/a6c7aecb-cbfd-4763-87ef-e91b4bd509d9. Read-only.
            ## @param value Value to set for the principal_link property.
            ## @return a void
            ## 
            def principal_link=(value)
                @principal_link = value
            end
            ## 
            ## Gets the recommendation property value. A system-generated recommendation for the approval decision based off last interactive sign-in to tenant. Recommend approve if sign-in is within thirty days of start of review. Recommend deny if sign-in is greater than thirty days of start of review. Recommendation not available otherwise. Possible values: Approve, Deny, or NoInfoAvailable. Supports $select, $orderby, and $filter (eq only). Read-only.
            ## @return a string
            ## 
            def recommendation
                return @recommendation
            end
            ## 
            ## Sets the recommendation property value. A system-generated recommendation for the approval decision based off last interactive sign-in to tenant. Recommend approve if sign-in is within thirty days of start of review. Recommend deny if sign-in is greater than thirty days of start of review. Recommendation not available otherwise. Possible values: Approve, Deny, or NoInfoAvailable. Supports $select, $orderby, and $filter (eq only). Read-only.
            ## @param value Value to set for the recommendation property.
            ## @return a void
            ## 
            def recommendation=(value)
                @recommendation = value
            end
            ## 
            ## Gets the resource property value. Every decision item in an access review represents a principal's access to a resource. This property represents details of the resource. For example, if a decision item represents access of User 'Bob' to Group 'Sales' - The principal is Bob and the resource is 'Sales'. Resources can be of multiple types. See accessReviewInstanceDecisionItemResource. Read-only.
            ## @return a access_review_instance_decision_item_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Every decision item in an access review represents a principal's access to a resource. This property represents details of the resource. For example, if a decision item represents access of User 'Bob' to Group 'Sales' - The principal is Bob and the resource is 'Sales'. Resources can be of multiple types. See accessReviewInstanceDecisionItemResource. Read-only.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resourceLink property value. A link to the resource. For example, https://graph.microsoft.com/v1.0/servicePrincipals/c86300f3-8695-4320-9f6e-32a2555f5ff8. Supports $select. Read-only.
            ## @return a string
            ## 
            def resource_link
                return @resource_link
            end
            ## 
            ## Sets the resourceLink property value. A link to the resource. For example, https://graph.microsoft.com/v1.0/servicePrincipals/c86300f3-8695-4320-9f6e-32a2555f5ff8. Supports $select. Read-only.
            ## @param value Value to set for the resource_link property.
            ## @return a void
            ## 
            def resource_link=(value)
                @resource_link = value
            end
            ## 
            ## Gets the reviewedBy property value. The identifier of the reviewer.00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't reviewed. Supports $select. Read-only.
            ## @return a user_identity
            ## 
            def reviewed_by
                return @reviewed_by
            end
            ## 
            ## Sets the reviewedBy property value. The identifier of the reviewer.00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't reviewed. Supports $select. Read-only.
            ## @param value Value to set for the reviewed_by property.
            ## @return a void
            ## 
            def reviewed_by=(value)
                @reviewed_by = value
            end
            ## 
            ## Gets the reviewedDateTime property value. The timestamp when the review decision occurred. Supports $select. Read-only.
            ## @return a date_time
            ## 
            def reviewed_date_time
                return @reviewed_date_time
            end
            ## 
            ## Sets the reviewedDateTime property value. The timestamp when the review decision occurred. Supports $select. Read-only.
            ## @param value Value to set for the reviewed_date_time property.
            ## @return a void
            ## 
            def reviewed_date_time=(value)
                @reviewed_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("accessReviewId", @access_review_id)
                writer.write_object_value("appliedBy", @applied_by)
                writer.write_date_time_value("appliedDateTime", @applied_date_time)
                writer.write_string_value("applyResult", @apply_result)
                writer.write_string_value("decision", @decision)
                writer.write_string_value("justification", @justification)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalLink", @principal_link)
                writer.write_string_value("recommendation", @recommendation)
                writer.write_object_value("resource", @resource)
                writer.write_string_value("resourceLink", @resource_link)
                writer.write_object_value("reviewedBy", @reviewed_by)
                writer.write_date_time_value("reviewedDateTime", @reviewed_date_time)
            end
        end
    end
end
