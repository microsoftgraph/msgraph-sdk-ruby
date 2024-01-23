require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceModelModelModelModelModelModel
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessReviews property
            @access_reviews
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The appConsent property
            @app_consent
            ## 
            # The entitlementManagement property
            @entitlement_management
            ## 
            # The lifecycleWorkflows property
            @lifecycle_workflows
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The privilegedAccess property
            @privileged_access
            ## 
            # The termsOfUse property
            @terms_of_use
            ## 
            ## Gets the accessReviews property value. The accessReviews property
            ## @return a access_review_set
            ## 
            def access_reviews
                return @access_reviews
            end
            ## 
            ## Sets the accessReviews property value. The accessReviews property
            ## @param value Value to set for the accessReviews property.
            ## @return a void
            ## 
            def access_reviews=(value)
                @access_reviews = value
            end
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the appConsent property value. The appConsent property
            ## @return a app_consent_approval_route
            ## 
            def app_consent
                return @app_consent
            end
            ## 
            ## Sets the appConsent property value. The appConsent property
            ## @param value Value to set for the appConsent property.
            ## @return a void
            ## 
            def app_consent=(value)
                @app_consent = value
            end
            ## 
            ## Instantiates a new identityGovernanceModelModelModelModelModelModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_model_model_model_model_model_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceModelModelModelModelModelModel.new
            end
            ## 
            ## Gets the entitlementManagement property value. The entitlementManagement property
            ## @return a entitlement_management
            ## 
            def entitlement_management
                return @entitlement_management
            end
            ## 
            ## Sets the entitlementManagement property value. The entitlementManagement property
            ## @param value Value to set for the entitlementManagement property.
            ## @return a void
            ## 
            def entitlement_management=(value)
                @entitlement_management = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accessReviews" => lambda {|n| @access_reviews = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewSet.create_from_discriminator_value(pn) }) },
                    "appConsent" => lambda {|n| @app_consent = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppConsentApprovalRoute.create_from_discriminator_value(pn) }) },
                    "entitlementManagement" => lambda {|n| @entitlement_management = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EntitlementManagement.create_from_discriminator_value(pn) }) },
                    "lifecycleWorkflows" => lambda {|n| @lifecycle_workflows = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceLifecycleWorkflowsContainer.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "privilegedAccess" => lambda {|n| @privileged_access = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrivilegedAccessRoot.create_from_discriminator_value(pn) }) },
                    "termsOfUse" => lambda {|n| @terms_of_use = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermsOfUseContainer.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the lifecycleWorkflows property value. The lifecycleWorkflows property
            ## @return a identity_governance_lifecycle_workflows_container
            ## 
            def lifecycle_workflows
                return @lifecycle_workflows
            end
            ## 
            ## Sets the lifecycleWorkflows property value. The lifecycleWorkflows property
            ## @param value Value to set for the lifecycleWorkflows property.
            ## @return a void
            ## 
            def lifecycle_workflows=(value)
                @lifecycle_workflows = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the privilegedAccess property value. The privilegedAccess property
            ## @return a privileged_access_root
            ## 
            def privileged_access
                return @privileged_access
            end
            ## 
            ## Sets the privilegedAccess property value. The privilegedAccess property
            ## @param value Value to set for the privilegedAccess property.
            ## @return a void
            ## 
            def privileged_access=(value)
                @privileged_access = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("accessReviews", @access_reviews)
                writer.write_object_value("appConsent", @app_consent)
                writer.write_object_value("entitlementManagement", @entitlement_management)
                writer.write_object_value("lifecycleWorkflows", @lifecycle_workflows)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("privilegedAccess", @privileged_access)
                writer.write_object_value("termsOfUse", @terms_of_use)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the termsOfUse property value. The termsOfUse property
            ## @return a terms_of_use_container
            ## 
            def terms_of_use
                return @terms_of_use
            end
            ## 
            ## Sets the termsOfUse property value. The termsOfUse property
            ## @param value Value to set for the termsOfUse property.
            ## @return a void
            ## 
            def terms_of_use=(value)
                @terms_of_use = value
            end
        end
    end
end
