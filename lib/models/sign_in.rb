require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SignIn < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # App name displayed in the Azure Portal. Supports $filter (eq and startsWith operators only).
            @app_display_name
            ## 
            # Unique GUID representing the app ID in the Azure Active Directory. Supports $filter (eq operator only).
            @app_id
            ## 
            # Provides a list of conditional access policies that are triggered by the corresponding sign-in activity.
            @applied_conditional_access_policies
            ## 
            # Identifies the client used for the sign-in activity. Modern authentication clients include Browser and modern clients. Legacy authentication clients include Exchange ActiveSync, IMAP, MAPI, SMTP, POP, and other clients. Supports $filter (eq operator only).
            @client_app_used
            ## 
            # Reports status of an activated conditional access policy. Possible values are: success, failure, notApplied, and unknownFutureValue. Supports $filter (eq operator only).
            @conditional_access_status
            ## 
            # The request ID sent from the client when the sign-in is initiated; used to troubleshoot sign-in activity. Supports $filter (eq operator only).
            @correlation_id
            ## 
            # Date and time (UTC) the sign-in was initiated. Example: midnight on Jan 1, 2014 is reported as 2014-01-01T00:00:00Z. Supports $orderby and $filter (eq, le, and ge operators only).
            @created_date_time
            ## 
            # Device information from where the sign-in occurred; includes device ID, operating system, and browser. Supports $filter (eq and startsWith operators only) on browser and operatingSytem properties.
            @device_detail
            ## 
            # IP address of the client used to sign in. Supports $filter (eq and startsWith operators only).
            @ip_address
            ## 
            # Indicates if a sign-in is interactive or not.
            @is_interactive
            ## 
            # Provides the city, state, and country code where the sign-in originated. Supports $filter (eq and startsWith operators only) on city, state, and countryOrRegion properties.
            @location
            ## 
            # Name of the resource the user signed into. Supports $filter (eq operator only).
            @resource_display_name
            ## 
            # ID of the resource that the user signed into. Supports $filter (eq operator only).
            @resource_id
            ## 
            # Provides the 'reason' behind a specific state of a risky user, sign-in or a risk event. The possible values are: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, unknownFutureValue. The value none means that no action has been performed on the user or sign-in so far.  Supports $filter (eq operator only).Note: Details for this property require an Azure AD Premium P2 license. Other licenses return the value hidden.
            @risk_detail
            ## 
            # Risk event types associated with the sign-in. The possible values are: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, and unknownFutureValue. Supports $filter (eq operator only).
            @risk_event_types
            ## 
            # The list of risk event types associated with the sign-in. Possible values: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, or unknownFutureValue. Supports $filter (eq and startsWith operators only).
            @risk_event_types_v2
            ## 
            # Aggregated risk level. The possible values are: none, low, medium, high, hidden, and unknownFutureValue. The value hidden means the user or sign-in was not enabled for Azure AD Identity Protection. Supports $filter (eq operator only).  Note: Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned hidden.
            @risk_level_aggregated
            ## 
            # Risk level during sign-in. The possible values are: none, low, medium, high, hidden, and unknownFutureValue. The value hidden means the user or sign-in was not enabled for Azure AD Identity Protection.  Supports $filter (eq operator only). Note: Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned hidden.
            @risk_level_during_sign_in
            ## 
            # Reports status of the risky user, sign-in, or a risk event. The possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue. Supports $filter (eq operator only).
            @risk_state
            ## 
            # Sign-in status. Includes the error code and description of the error (in case of a sign-in failure). Supports $filter (eq operator only) on errorCode property.
            @status
            ## 
            # Display name of the user that initiated the sign-in. Supports $filter (eq and startsWith operators only).
            @user_display_name
            ## 
            # ID of the user that initiated the sign-in. Supports $filter (eq operator only).
            @user_id
            ## 
            # User principal name of the user that initiated the sign-in. Supports $filter (eq and startsWith operators only).
            @user_principal_name
            ## 
            ## Gets the appDisplayName property value. App name displayed in the Azure Portal. Supports $filter (eq and startsWith operators only).
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. App name displayed in the Azure Portal. Supports $filter (eq and startsWith operators only).
            ## @param value Value to set for the app_display_name property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Gets the appId property value. Unique GUID representing the app ID in the Azure Active Directory. Supports $filter (eq operator only).
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. Unique GUID representing the app ID in the Azure Active Directory. Supports $filter (eq operator only).
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appliedConditionalAccessPolicies property value. Provides a list of conditional access policies that are triggered by the corresponding sign-in activity.
            ## @return a applied_conditional_access_policy
            ## 
            def applied_conditional_access_policies
                return @applied_conditional_access_policies
            end
            ## 
            ## Sets the appliedConditionalAccessPolicies property value. Provides a list of conditional access policies that are triggered by the corresponding sign-in activity.
            ## @param value Value to set for the applied_conditional_access_policies property.
            ## @return a void
            ## 
            def applied_conditional_access_policies=(value)
                @applied_conditional_access_policies = value
            end
            ## 
            ## Gets the clientAppUsed property value. Identifies the client used for the sign-in activity. Modern authentication clients include Browser and modern clients. Legacy authentication clients include Exchange ActiveSync, IMAP, MAPI, SMTP, POP, and other clients. Supports $filter (eq operator only).
            ## @return a string
            ## 
            def client_app_used
                return @client_app_used
            end
            ## 
            ## Sets the clientAppUsed property value. Identifies the client used for the sign-in activity. Modern authentication clients include Browser and modern clients. Legacy authentication clients include Exchange ActiveSync, IMAP, MAPI, SMTP, POP, and other clients. Supports $filter (eq operator only).
            ## @param value Value to set for the client_app_used property.
            ## @return a void
            ## 
            def client_app_used=(value)
                @client_app_used = value
            end
            ## 
            ## Gets the conditionalAccessStatus property value. Reports status of an activated conditional access policy. Possible values are: success, failure, notApplied, and unknownFutureValue. Supports $filter (eq operator only).
            ## @return a conditional_access_status
            ## 
            def conditional_access_status
                return @conditional_access_status
            end
            ## 
            ## Sets the conditionalAccessStatus property value. Reports status of an activated conditional access policy. Possible values are: success, failure, notApplied, and unknownFutureValue. Supports $filter (eq operator only).
            ## @param value Value to set for the conditional_access_status property.
            ## @return a void
            ## 
            def conditional_access_status=(value)
                @conditional_access_status = value
            end
            ## 
            ## Instantiates a new signIn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. The request ID sent from the client when the sign-in is initiated; used to troubleshoot sign-in activity. Supports $filter (eq operator only).
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. The request ID sent from the client when the sign-in is initiated; used to troubleshoot sign-in activity. Supports $filter (eq operator only).
            ## @param value Value to set for the correlation_id property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time (UTC) the sign-in was initiated. Example: midnight on Jan 1, 2014 is reported as 2014-01-01T00:00:00Z. Supports $orderby and $filter (eq, le, and ge operators only).
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time (UTC) the sign-in was initiated. Example: midnight on Jan 1, 2014 is reported as 2014-01-01T00:00:00Z. Supports $orderby and $filter (eq, le, and ge operators only).
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sign_in
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignIn.new
            end
            ## 
            ## Gets the deviceDetail property value. Device information from where the sign-in occurred; includes device ID, operating system, and browser. Supports $filter (eq and startsWith operators only) on browser and operatingSytem properties.
            ## @return a device_detail
            ## 
            def device_detail
                return @device_detail
            end
            ## 
            ## Sets the deviceDetail property value. Device information from where the sign-in occurred; includes device ID, operating system, and browser. Supports $filter (eq and startsWith operators only) on browser and operatingSytem properties.
            ## @param value Value to set for the device_detail property.
            ## @return a void
            ## 
            def device_detail=(value)
                @device_detail = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appliedConditionalAccessPolicies" => lambda {|n| @applied_conditional_access_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppliedConditionalAccessPolicy.create_from_discriminator_value(pn) }) },
                    "clientAppUsed" => lambda {|n| @client_app_used = n.get_string_value() },
                    "conditionalAccessStatus" => lambda {|n| @conditional_access_status = n.get_enum_value(MicrosoftGraph::Models::ConditionalAccessStatus) },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deviceDetail" => lambda {|n| @device_detail = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceDetail.create_from_discriminator_value(pn) }) },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "isInteractive" => lambda {|n| @is_interactive = n.get_boolean_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SignInLocation.create_from_discriminator_value(pn) }) },
                    "resourceDisplayName" => lambda {|n| @resource_display_name = n.get_string_value() },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "riskDetail" => lambda {|n| @risk_detail = n.get_enum_value(MicrosoftGraph::Models::RiskDetail) },
                    "riskEventTypes" => lambda {|n| @risk_event_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskEventType.create_from_discriminator_value(pn) }) },
                    "riskEventTypes_v2" => lambda {|n| @risk_event_types_v2 = n.get_collection_of_primitive_values(String) },
                    "riskLevelAggregated" => lambda {|n| @risk_level_aggregated = n.get_enum_value(MicrosoftGraph::Models::RiskLevel) },
                    "riskLevelDuringSignIn" => lambda {|n| @risk_level_during_sign_in = n.get_enum_value(MicrosoftGraph::Models::RiskLevel) },
                    "riskState" => lambda {|n| @risk_state = n.get_enum_value(MicrosoftGraph::Models::RiskState) },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SignInStatus.create_from_discriminator_value(pn) }) },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the ipAddress property value. IP address of the client used to sign in. Supports $filter (eq and startsWith operators only).
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. IP address of the client used to sign in. Supports $filter (eq and startsWith operators only).
            ## @param value Value to set for the ip_address property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the isInteractive property value. Indicates if a sign-in is interactive or not.
            ## @return a boolean
            ## 
            def is_interactive
                return @is_interactive
            end
            ## 
            ## Sets the isInteractive property value. Indicates if a sign-in is interactive or not.
            ## @param value Value to set for the is_interactive property.
            ## @return a void
            ## 
            def is_interactive=(value)
                @is_interactive = value
            end
            ## 
            ## Gets the location property value. Provides the city, state, and country code where the sign-in originated. Supports $filter (eq and startsWith operators only) on city, state, and countryOrRegion properties.
            ## @return a sign_in_location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. Provides the city, state, and country code where the sign-in originated. Supports $filter (eq and startsWith operators only) on city, state, and countryOrRegion properties.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the resourceDisplayName property value. Name of the resource the user signed into. Supports $filter (eq operator only).
            ## @return a string
            ## 
            def resource_display_name
                return @resource_display_name
            end
            ## 
            ## Sets the resourceDisplayName property value. Name of the resource the user signed into. Supports $filter (eq operator only).
            ## @param value Value to set for the resource_display_name property.
            ## @return a void
            ## 
            def resource_display_name=(value)
                @resource_display_name = value
            end
            ## 
            ## Gets the resourceId property value. ID of the resource that the user signed into. Supports $filter (eq operator only).
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. ID of the resource that the user signed into. Supports $filter (eq operator only).
            ## @param value Value to set for the resource_id property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Gets the riskDetail property value. Provides the 'reason' behind a specific state of a risky user, sign-in or a risk event. The possible values are: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, unknownFutureValue. The value none means that no action has been performed on the user or sign-in so far.  Supports $filter (eq operator only).Note: Details for this property require an Azure AD Premium P2 license. Other licenses return the value hidden.
            ## @return a risk_detail
            ## 
            def risk_detail
                return @risk_detail
            end
            ## 
            ## Sets the riskDetail property value. Provides the 'reason' behind a specific state of a risky user, sign-in or a risk event. The possible values are: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, unknownFutureValue. The value none means that no action has been performed on the user or sign-in so far.  Supports $filter (eq operator only).Note: Details for this property require an Azure AD Premium P2 license. Other licenses return the value hidden.
            ## @param value Value to set for the risk_detail property.
            ## @return a void
            ## 
            def risk_detail=(value)
                @risk_detail = value
            end
            ## 
            ## Gets the riskEventTypes property value. Risk event types associated with the sign-in. The possible values are: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, and unknownFutureValue. Supports $filter (eq operator only).
            ## @return a risk_event_type
            ## 
            def risk_event_types
                return @risk_event_types
            end
            ## 
            ## Sets the riskEventTypes property value. Risk event types associated with the sign-in. The possible values are: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, and unknownFutureValue. Supports $filter (eq operator only).
            ## @param value Value to set for the risk_event_types property.
            ## @return a void
            ## 
            def risk_event_types=(value)
                @risk_event_types = value
            end
            ## 
            ## Gets the riskEventTypes_v2 property value. The list of risk event types associated with the sign-in. Possible values: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, or unknownFutureValue. Supports $filter (eq and startsWith operators only).
            ## @return a string
            ## 
            def risk_event_types_v2
                return @risk_event_types_v2
            end
            ## 
            ## Sets the riskEventTypes_v2 property value. The list of risk event types associated with the sign-in. Possible values: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, or unknownFutureValue. Supports $filter (eq and startsWith operators only).
            ## @param value Value to set for the risk_event_types_v2 property.
            ## @return a void
            ## 
            def risk_event_types_v2=(value)
                @risk_event_types_v2 = value
            end
            ## 
            ## Gets the riskLevelAggregated property value. Aggregated risk level. The possible values are: none, low, medium, high, hidden, and unknownFutureValue. The value hidden means the user or sign-in was not enabled for Azure AD Identity Protection. Supports $filter (eq operator only).  Note: Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned hidden.
            ## @return a risk_level
            ## 
            def risk_level_aggregated
                return @risk_level_aggregated
            end
            ## 
            ## Sets the riskLevelAggregated property value. Aggregated risk level. The possible values are: none, low, medium, high, hidden, and unknownFutureValue. The value hidden means the user or sign-in was not enabled for Azure AD Identity Protection. Supports $filter (eq operator only).  Note: Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned hidden.
            ## @param value Value to set for the risk_level_aggregated property.
            ## @return a void
            ## 
            def risk_level_aggregated=(value)
                @risk_level_aggregated = value
            end
            ## 
            ## Gets the riskLevelDuringSignIn property value. Risk level during sign-in. The possible values are: none, low, medium, high, hidden, and unknownFutureValue. The value hidden means the user or sign-in was not enabled for Azure AD Identity Protection.  Supports $filter (eq operator only). Note: Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned hidden.
            ## @return a risk_level
            ## 
            def risk_level_during_sign_in
                return @risk_level_during_sign_in
            end
            ## 
            ## Sets the riskLevelDuringSignIn property value. Risk level during sign-in. The possible values are: none, low, medium, high, hidden, and unknownFutureValue. The value hidden means the user or sign-in was not enabled for Azure AD Identity Protection.  Supports $filter (eq operator only). Note: Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned hidden.
            ## @param value Value to set for the risk_level_during_sign_in property.
            ## @return a void
            ## 
            def risk_level_during_sign_in=(value)
                @risk_level_during_sign_in = value
            end
            ## 
            ## Gets the riskState property value. Reports status of the risky user, sign-in, or a risk event. The possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue. Supports $filter (eq operator only).
            ## @return a risk_state
            ## 
            def risk_state
                return @risk_state
            end
            ## 
            ## Sets the riskState property value. Reports status of the risky user, sign-in, or a risk event. The possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue. Supports $filter (eq operator only).
            ## @param value Value to set for the risk_state property.
            ## @return a void
            ## 
            def risk_state=(value)
                @risk_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appId", @app_id)
                writer.write_collection_of_object_values("appliedConditionalAccessPolicies", @applied_conditional_access_policies)
                writer.write_string_value("clientAppUsed", @client_app_used)
                writer.write_enum_value("conditionalAccessStatus", @conditional_access_status)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("deviceDetail", @device_detail)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_boolean_value("isInteractive", @is_interactive)
                writer.write_object_value("location", @location)
                writer.write_string_value("resourceDisplayName", @resource_display_name)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_enum_value("riskDetail", @risk_detail)
                writer.write_collection_of_object_values("riskEventTypes", @risk_event_types)
                writer.write_collection_of_primitive_values("riskEventTypes_v2", @risk_event_types_v2)
                writer.write_enum_value("riskLevelAggregated", @risk_level_aggregated)
                writer.write_enum_value("riskLevelDuringSignIn", @risk_level_during_sign_in)
                writer.write_enum_value("riskState", @risk_state)
                writer.write_object_value("status", @status)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the status property value. Sign-in status. Includes the error code and description of the error (in case of a sign-in failure). Supports $filter (eq operator only) on errorCode property.
            ## @return a sign_in_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Sign-in status. Includes the error code and description of the error (in case of a sign-in failure). Supports $filter (eq operator only) on errorCode property.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the userDisplayName property value. Display name of the user that initiated the sign-in. Supports $filter (eq and startsWith operators only).
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. Display name of the user that initiated the sign-in. Supports $filter (eq and startsWith operators only).
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userId property value. ID of the user that initiated the sign-in. Supports $filter (eq operator only).
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. ID of the user that initiated the sign-in. Supports $filter (eq operator only).
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. User principal name of the user that initiated the sign-in. Supports $filter (eq and startsWith operators only).
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User principal name of the user that initiated the sign-in. Supports $filter (eq and startsWith operators only).
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
