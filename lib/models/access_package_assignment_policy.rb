require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignmentPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Access package containing this policy. Read-only.
            @access_package
            ## 
            # Principals that can be assigned the access package through this policy. The possible values are: notSpecified, specificDirectoryUsers, specificConnectedOrganizationUsers, specificDirectoryServicePrincipals, allMemberUsers, allDirectoryUsers, allDirectoryServicePrincipals, allConfiguredConnectedOrganizationUsers, allExternalUsers, unknownFutureValue.
            @allowed_target_scope
            ## 
            # This property is only present for an auto assignment policy; if absent, this is a request-based policy.
            @automatic_request_settings
            ## 
            # Catalog of the access package containing this policy. Read-only.
            @catalog
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The description of the policy.
            @description
            ## 
            # The display name of the policy.
            @display_name
            ## 
            # The expiration date for assignments created in this policy.
            @expiration
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @modified_date_time
            ## 
            # Questions that are posed to the  requestor.
            @questions
            ## 
            # Specifies the settings for approval of requests for an access package assignment through this policy. For example, if approval is required for new requests.
            @request_approval_settings
            ## 
            # Provides additional settings to select who can create a request for an access package assignment through this policy, and what they can include in their request.
            @requestor_settings
            ## 
            # Settings for access reviews of assignments through this policy.
            @review_settings
            ## 
            # The principals that can be assigned access from an access package through this policy.
            @specific_allowed_targets
            ## 
            ## Gets the accessPackage property value. Access package containing this policy. Read-only.
            ## @return a access_package
            ## 
            def access_package
                return @access_package
            end
            ## 
            ## Sets the accessPackage property value. Access package containing this policy. Read-only.
            ## @param value Value to set for the access_package property.
            ## @return a void
            ## 
            def access_package=(value)
                @access_package = value
            end
            ## 
            ## Gets the allowedTargetScope property value. Principals that can be assigned the access package through this policy. The possible values are: notSpecified, specificDirectoryUsers, specificConnectedOrganizationUsers, specificDirectoryServicePrincipals, allMemberUsers, allDirectoryUsers, allDirectoryServicePrincipals, allConfiguredConnectedOrganizationUsers, allExternalUsers, unknownFutureValue.
            ## @return a allowed_target_scope
            ## 
            def allowed_target_scope
                return @allowed_target_scope
            end
            ## 
            ## Sets the allowedTargetScope property value. Principals that can be assigned the access package through this policy. The possible values are: notSpecified, specificDirectoryUsers, specificConnectedOrganizationUsers, specificDirectoryServicePrincipals, allMemberUsers, allDirectoryUsers, allDirectoryServicePrincipals, allConfiguredConnectedOrganizationUsers, allExternalUsers, unknownFutureValue.
            ## @param value Value to set for the allowed_target_scope property.
            ## @return a void
            ## 
            def allowed_target_scope=(value)
                @allowed_target_scope = value
            end
            ## 
            ## Gets the automaticRequestSettings property value. This property is only present for an auto assignment policy; if absent, this is a request-based policy.
            ## @return a access_package_automatic_request_settings
            ## 
            def automatic_request_settings
                return @automatic_request_settings
            end
            ## 
            ## Sets the automaticRequestSettings property value. This property is only present for an auto assignment policy; if absent, this is a request-based policy.
            ## @param value Value to set for the automatic_request_settings property.
            ## @return a void
            ## 
            def automatic_request_settings=(value)
                @automatic_request_settings = value
            end
            ## 
            ## Gets the catalog property value. Catalog of the access package containing this policy. Read-only.
            ## @return a access_package_catalog
            ## 
            def catalog
                return @catalog
            end
            ## 
            ## Sets the catalog property value. Catalog of the access package containing this policy. Read-only.
            ## @param value Value to set for the catalog property.
            ## @return a void
            ## 
            def catalog=(value)
                @catalog = value
            end
            ## 
            ## Instantiates a new accessPackageAssignmentPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentPolicy.new
            end
            ## 
            ## Gets the description property value. The description of the policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the policy.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the expiration property value. The expiration date for assignments created in this policy.
            ## @return a expiration_pattern
            ## 
            def expiration
                return @expiration
            end
            ## 
            ## Sets the expiration property value. The expiration date for assignments created in this policy.
            ## @param value Value to set for the expiration property.
            ## @return a void
            ## 
            def expiration=(value)
                @expiration = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessPackage" => lambda {|n| @access_package = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "allowedTargetScope" => lambda {|n| @allowed_target_scope = n.get_enum_value(MicrosoftGraph::Models::AllowedTargetScope) },
                    "automaticRequestSettings" => lambda {|n| @automatic_request_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageAutomaticRequestSettings.create_from_discriminator_value(pn) }) },
                    "catalog" => lambda {|n| @catalog = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageCatalog.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "expiration" => lambda {|n| @expiration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExpirationPattern.create_from_discriminator_value(pn) }) },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "questions" => lambda {|n| @questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageQuestion.create_from_discriminator_value(pn) }) },
                    "requestApprovalSettings" => lambda {|n| @request_approval_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignmentApprovalSettings.create_from_discriminator_value(pn) }) },
                    "requestorSettings" => lambda {|n| @requestor_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignmentRequestorSettings.create_from_discriminator_value(pn) }) },
                    "reviewSettings" => lambda {|n| @review_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignmentReviewSettings.create_from_discriminator_value(pn) }) },
                    "specificAllowedTargets" => lambda {|n| @specific_allowed_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the modified_date_time property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Gets the questions property value. Questions that are posed to the  requestor.
            ## @return a access_package_question
            ## 
            def questions
                return @questions
            end
            ## 
            ## Sets the questions property value. Questions that are posed to the  requestor.
            ## @param value Value to set for the questions property.
            ## @return a void
            ## 
            def questions=(value)
                @questions = value
            end
            ## 
            ## Gets the requestApprovalSettings property value. Specifies the settings for approval of requests for an access package assignment through this policy. For example, if approval is required for new requests.
            ## @return a access_package_assignment_approval_settings
            ## 
            def request_approval_settings
                return @request_approval_settings
            end
            ## 
            ## Sets the requestApprovalSettings property value. Specifies the settings for approval of requests for an access package assignment through this policy. For example, if approval is required for new requests.
            ## @param value Value to set for the request_approval_settings property.
            ## @return a void
            ## 
            def request_approval_settings=(value)
                @request_approval_settings = value
            end
            ## 
            ## Gets the requestorSettings property value. Provides additional settings to select who can create a request for an access package assignment through this policy, and what they can include in their request.
            ## @return a access_package_assignment_requestor_settings
            ## 
            def requestor_settings
                return @requestor_settings
            end
            ## 
            ## Sets the requestorSettings property value. Provides additional settings to select who can create a request for an access package assignment through this policy, and what they can include in their request.
            ## @param value Value to set for the requestor_settings property.
            ## @return a void
            ## 
            def requestor_settings=(value)
                @requestor_settings = value
            end
            ## 
            ## Gets the reviewSettings property value. Settings for access reviews of assignments through this policy.
            ## @return a access_package_assignment_review_settings
            ## 
            def review_settings
                return @review_settings
            end
            ## 
            ## Sets the reviewSettings property value. Settings for access reviews of assignments through this policy.
            ## @param value Value to set for the review_settings property.
            ## @return a void
            ## 
            def review_settings=(value)
                @review_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accessPackage", @access_package)
                writer.write_enum_value("allowedTargetScope", @allowed_target_scope)
                writer.write_object_value("automaticRequestSettings", @automatic_request_settings)
                writer.write_object_value("catalog", @catalog)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("expiration", @expiration)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_collection_of_object_values("questions", @questions)
                writer.write_object_value("requestApprovalSettings", @request_approval_settings)
                writer.write_object_value("requestorSettings", @requestor_settings)
                writer.write_object_value("reviewSettings", @review_settings)
                writer.write_collection_of_object_values("specificAllowedTargets", @specific_allowed_targets)
            end
            ## 
            ## Gets the specificAllowedTargets property value. The principals that can be assigned access from an access package through this policy.
            ## @return a subject_set
            ## 
            def specific_allowed_targets
                return @specific_allowed_targets
            end
            ## 
            ## Sets the specificAllowedTargets property value. The principals that can be assigned access from an access package through this policy.
            ## @param value Value to set for the specific_allowed_targets property.
            ## @return a void
            ## 
            def specific_allowed_targets=(value)
                @specific_allowed_targets = value
            end
        end
    end
end
