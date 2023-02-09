require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessConditionSet
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Applications and user actions included in and excluded from the policy. Required.
            @applications
            ## 
            # Client application types included in the policy. Possible values are: all, browser, mobileAppsAndDesktopClients, exchangeActiveSync, easSupported, other. Required.
            @client_app_types
            ## 
            # Client applications (service principals and workload identities) included in and excluded from the policy. Either users or clientApplications is required.
            @client_applications
            ## 
            # Devices in the policy.
            @devices
            ## 
            # Locations included in and excluded from the policy.
            @locations
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Platforms included in and excluded from the policy.
            @platforms
            ## 
            # Service principal risk levels included in the policy. Possible values are: low, medium, high, none, unknownFutureValue.
            @service_principal_risk_levels
            ## 
            # Sign-in risk levels included in the policy. Possible values are: low, medium, high, hidden, none, unknownFutureValue. Required.
            @sign_in_risk_levels
            ## 
            # User risk levels included in the policy. Possible values are: low, medium, high, hidden, none, unknownFutureValue. Required.
            @user_risk_levels
            ## 
            # Users, groups, and roles included in and excluded from the policy. Either users or clientApplications is required.
            @users
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
            ## Gets the applications property value. Applications and user actions included in and excluded from the policy. Required.
            ## @return a conditional_access_applications
            ## 
            def applications
                return @applications
            end
            ## 
            ## Sets the applications property value. Applications and user actions included in and excluded from the policy. Required.
            ## @param value Value to set for the applications property.
            ## @return a void
            ## 
            def applications=(value)
                @applications = value
            end
            ## 
            ## Gets the clientAppTypes property value. Client application types included in the policy. Possible values are: all, browser, mobileAppsAndDesktopClients, exchangeActiveSync, easSupported, other. Required.
            ## @return a conditional_access_client_app
            ## 
            def client_app_types
                return @client_app_types
            end
            ## 
            ## Sets the clientAppTypes property value. Client application types included in the policy. Possible values are: all, browser, mobileAppsAndDesktopClients, exchangeActiveSync, easSupported, other. Required.
            ## @param value Value to set for the client_app_types property.
            ## @return a void
            ## 
            def client_app_types=(value)
                @client_app_types = value
            end
            ## 
            ## Gets the clientApplications property value. Client applications (service principals and workload identities) included in and excluded from the policy. Either users or clientApplications is required.
            ## @return a conditional_access_client_applications
            ## 
            def client_applications
                return @client_applications
            end
            ## 
            ## Sets the clientApplications property value. Client applications (service principals and workload identities) included in and excluded from the policy. Either users or clientApplications is required.
            ## @param value Value to set for the client_applications property.
            ## @return a void
            ## 
            def client_applications=(value)
                @client_applications = value
            end
            ## 
            ## Instantiates a new conditionalAccessConditionSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_condition_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessConditionSet.new
            end
            ## 
            ## Gets the devices property value. Devices in the policy.
            ## @return a conditional_access_devices
            ## 
            def devices
                return @devices
            end
            ## 
            ## Sets the devices property value. Devices in the policy.
            ## @param value Value to set for the devices property.
            ## @return a void
            ## 
            def devices=(value)
                @devices = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applications" => lambda {|n| @applications = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessApplications.create_from_discriminator_value(pn) }) },
                    "clientAppTypes" => lambda {|n| @client_app_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessClientApp.create_from_discriminator_value(pn) }) },
                    "clientApplications" => lambda {|n| @client_applications = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessClientApplications.create_from_discriminator_value(pn) }) },
                    "devices" => lambda {|n| @devices = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessDevices.create_from_discriminator_value(pn) }) },
                    "locations" => lambda {|n| @locations = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessLocations.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "platforms" => lambda {|n| @platforms = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessPlatforms.create_from_discriminator_value(pn) }) },
                    "servicePrincipalRiskLevels" => lambda {|n| @service_principal_risk_levels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskLevel.create_from_discriminator_value(pn) }) },
                    "signInRiskLevels" => lambda {|n| @sign_in_risk_levels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskLevel.create_from_discriminator_value(pn) }) },
                    "userRiskLevels" => lambda {|n| @user_risk_levels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskLevel.create_from_discriminator_value(pn) }) },
                    "users" => lambda {|n| @users = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessUsers.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the locations property value. Locations included in and excluded from the policy.
            ## @return a conditional_access_locations
            ## 
            def locations
                return @locations
            end
            ## 
            ## Sets the locations property value. Locations included in and excluded from the policy.
            ## @param value Value to set for the locations property.
            ## @return a void
            ## 
            def locations=(value)
                @locations = value
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
            ## Gets the platforms property value. Platforms included in and excluded from the policy.
            ## @return a conditional_access_platforms
            ## 
            def platforms
                return @platforms
            end
            ## 
            ## Sets the platforms property value. Platforms included in and excluded from the policy.
            ## @param value Value to set for the platforms property.
            ## @return a void
            ## 
            def platforms=(value)
                @platforms = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("applications", @applications)
                writer.write_collection_of_object_values("clientAppTypes", @client_app_types)
                writer.write_object_value("clientApplications", @client_applications)
                writer.write_object_value("devices", @devices)
                writer.write_object_value("locations", @locations)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("platforms", @platforms)
                writer.write_collection_of_object_values("servicePrincipalRiskLevels", @service_principal_risk_levels)
                writer.write_collection_of_object_values("signInRiskLevels", @sign_in_risk_levels)
                writer.write_collection_of_object_values("userRiskLevels", @user_risk_levels)
                writer.write_object_value("users", @users)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the servicePrincipalRiskLevels property value. Service principal risk levels included in the policy. Possible values are: low, medium, high, none, unknownFutureValue.
            ## @return a risk_level
            ## 
            def service_principal_risk_levels
                return @service_principal_risk_levels
            end
            ## 
            ## Sets the servicePrincipalRiskLevels property value. Service principal risk levels included in the policy. Possible values are: low, medium, high, none, unknownFutureValue.
            ## @param value Value to set for the service_principal_risk_levels property.
            ## @return a void
            ## 
            def service_principal_risk_levels=(value)
                @service_principal_risk_levels = value
            end
            ## 
            ## Gets the signInRiskLevels property value. Sign-in risk levels included in the policy. Possible values are: low, medium, high, hidden, none, unknownFutureValue. Required.
            ## @return a risk_level
            ## 
            def sign_in_risk_levels
                return @sign_in_risk_levels
            end
            ## 
            ## Sets the signInRiskLevels property value. Sign-in risk levels included in the policy. Possible values are: low, medium, high, hidden, none, unknownFutureValue. Required.
            ## @param value Value to set for the sign_in_risk_levels property.
            ## @return a void
            ## 
            def sign_in_risk_levels=(value)
                @sign_in_risk_levels = value
            end
            ## 
            ## Gets the userRiskLevels property value. User risk levels included in the policy. Possible values are: low, medium, high, hidden, none, unknownFutureValue. Required.
            ## @return a risk_level
            ## 
            def user_risk_levels
                return @user_risk_levels
            end
            ## 
            ## Sets the userRiskLevels property value. User risk levels included in the policy. Possible values are: low, medium, high, hidden, none, unknownFutureValue. Required.
            ## @param value Value to set for the user_risk_levels property.
            ## @return a void
            ## 
            def user_risk_levels=(value)
                @user_risk_levels = value
            end
            ## 
            ## Gets the users property value. Users, groups, and roles included in and excluded from the policy. Either users or clientApplications is required.
            ## @return a conditional_access_users
            ## 
            def users
                return @users
            end
            ## 
            ## Sets the users property value. Users, groups, and roles included in and excluded from the policy. Either users or clientApplications is required.
            ## @param value Value to set for the users property.
            ## @return a void
            ## 
            def users=(value)
                @users = value
            end
        end
    end
end
