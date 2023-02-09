require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityProtectionRoot
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Risk detection in Azure AD Identity Protection and the associated information about the detection.
            @risk_detections
            ## 
            # Azure AD service principals that are at risk.
            @risky_service_principals
            ## 
            # Users that are flagged as at-risk by Azure AD Identity Protection.
            @risky_users
            ## 
            # Represents information about detected at-risk service principals in an Azure AD tenant.
            @service_principal_risk_detections
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
            ## Instantiates a new IdentityProtectionRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_protection_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityProtectionRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "riskDetections" => lambda {|n| @risk_detections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskDetection.create_from_discriminator_value(pn) }) },
                    "riskyServicePrincipals" => lambda {|n| @risky_service_principals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskyServicePrincipal.create_from_discriminator_value(pn) }) },
                    "riskyUsers" => lambda {|n| @risky_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskyUser.create_from_discriminator_value(pn) }) },
                    "servicePrincipalRiskDetections" => lambda {|n| @service_principal_risk_detections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServicePrincipalRiskDetection.create_from_discriminator_value(pn) }) },
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
            ## Gets the riskDetections property value. Risk detection in Azure AD Identity Protection and the associated information about the detection.
            ## @return a risk_detection
            ## 
            def risk_detections
                return @risk_detections
            end
            ## 
            ## Sets the riskDetections property value. Risk detection in Azure AD Identity Protection and the associated information about the detection.
            ## @param value Value to set for the risk_detections property.
            ## @return a void
            ## 
            def risk_detections=(value)
                @risk_detections = value
            end
            ## 
            ## Gets the riskyServicePrincipals property value. Azure AD service principals that are at risk.
            ## @return a risky_service_principal
            ## 
            def risky_service_principals
                return @risky_service_principals
            end
            ## 
            ## Sets the riskyServicePrincipals property value. Azure AD service principals that are at risk.
            ## @param value Value to set for the risky_service_principals property.
            ## @return a void
            ## 
            def risky_service_principals=(value)
                @risky_service_principals = value
            end
            ## 
            ## Gets the riskyUsers property value. Users that are flagged as at-risk by Azure AD Identity Protection.
            ## @return a risky_user
            ## 
            def risky_users
                return @risky_users
            end
            ## 
            ## Sets the riskyUsers property value. Users that are flagged as at-risk by Azure AD Identity Protection.
            ## @param value Value to set for the risky_users property.
            ## @return a void
            ## 
            def risky_users=(value)
                @risky_users = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("riskDetections", @risk_detections)
                writer.write_collection_of_object_values("riskyServicePrincipals", @risky_service_principals)
                writer.write_collection_of_object_values("riskyUsers", @risky_users)
                writer.write_collection_of_object_values("servicePrincipalRiskDetections", @service_principal_risk_detections)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the servicePrincipalRiskDetections property value. Represents information about detected at-risk service principals in an Azure AD tenant.
            ## @return a service_principal_risk_detection
            ## 
            def service_principal_risk_detections
                return @service_principal_risk_detections
            end
            ## 
            ## Sets the servicePrincipalRiskDetections property value. Represents information about detected at-risk service principals in an Azure AD tenant.
            ## @param value Value to set for the service_principal_risk_detections property.
            ## @return a void
            ## 
            def service_principal_risk_detections=(value)
                @service_principal_risk_detections = value
            end
        end
    end
end
