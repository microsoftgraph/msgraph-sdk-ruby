require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Represents policy deployment summary per app.
        class ManagedAppPolicyDeploymentSummaryPerApp
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Number of users the policy is applied.
            @configuration_applied_user_count
            ## 
            # Deployment of an app.
            @mobile_app_identifier
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the configurationAppliedUserCount property value. Number of users the policy is applied.
            ## @return a integer
            ## 
            def configuration_applied_user_count
                return @configuration_applied_user_count
            end
            ## 
            ## Sets the configurationAppliedUserCount property value. Number of users the policy is applied.
            ## @param value Value to set for the configuration_applied_user_count property.
            ## @return a void
            ## 
            def configuration_applied_user_count=(value)
                @configuration_applied_user_count = value
            end
            ## 
            ## Instantiates a new managedAppPolicyDeploymentSummaryPerApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_policy_deployment_summary_per_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedAppPolicyDeploymentSummaryPerApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "configurationAppliedUserCount" => lambda {|n| @configuration_applied_user_count = n.get_number_value() },
                    "mobileAppIdentifier" => lambda {|n| @mobile_app_identifier = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MobileAppIdentifier.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the mobileAppIdentifier property value. Deployment of an app.
            ## @return a mobile_app_identifier
            ## 
            def mobile_app_identifier
                return @mobile_app_identifier
            end
            ## 
            ## Sets the mobileAppIdentifier property value. Deployment of an app.
            ## @param value Value to set for the mobile_app_identifier property.
            ## @return a void
            ## 
            def mobile_app_identifier=(value)
                @mobile_app_identifier = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("configurationAppliedUserCount", @configuration_applied_user_count)
                writer.write_object_value("mobileAppIdentifier", @mobile_app_identifier)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
