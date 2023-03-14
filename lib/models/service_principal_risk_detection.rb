require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServicePrincipalRiskDetection < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the activity type the detected risk is linked to.  The possible values are: signin, servicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: servicePrincipal.
            @activity
            ## 
            # Date and time when the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @activity_date_time
            ## 
            # Additional information associated with the risk detection. This string value is represented as a JSON object with the quotations escaped.
            @additional_info
            ## 
            # The unique identifier for the associated application.
            @app_id
            ## 
            # Correlation ID of the sign-in activity associated with the risk detection. This property is null if the risk detection is not associated with a sign-in activity.
            @correlation_id
            ## 
            # Date and time when the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @detected_date_time
            ## 
            # Timing of the detected risk , whether real-time or offline. The possible values are: notDefined, realtime, nearRealtime, offline, unknownFutureValue.
            @detection_timing_type
            ## 
            # Provides the IP address of the client from where the risk occurred.
            @ip_address
            ## 
            # The unique identifier for the key credential associated with the risk detection.
            @key_ids
            ## 
            # Date and time when the risk detection was last updated.
            @last_updated_date_time
            ## 
            # Location from where the sign-in was initiated.
            @location
            ## 
            # Request identifier of the sign-in activity associated with the risk detection. This property is null if the risk detection is not associated with a sign-in activity. Supports $filter (eq).
            @request_id
            ## 
            # Details of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: none, hidden, adminConfirmedServicePrincipalCompromised, adminDismissedAllRiskForServicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: adminConfirmedServicePrincipalCompromised , adminDismissedAllRiskForServicePrincipal.
            @risk_detail
            ## 
            # The type of risk event detected. The possible values are: investigationsThreatIntelligence, generic, adminConfirmedServicePrincipalCompromised, suspiciousSignins, leakedCredentials, anomalousServicePrincipalActivity, maliciousApplication, suspiciousApplication.
            @risk_event_type
            ## 
            # Level of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: low, medium, high, hidden, none.
            @risk_level
            ## 
            # The state of a detected risky service principal or sign-in activity. The possible values are: none, dismissed, atRisk, confirmedCompromised.
            @risk_state
            ## 
            # The display name for the service principal.
            @service_principal_display_name
            ## 
            # The unique identifier for the service principal. Supports $filter (eq).
            @service_principal_id
            ## 
            # Source of the risk detection. For example, identityProtection.
            @source
            ## 
            # Indicates the type of token issuer for the detected sign-in risk. The possible values are: AzureAD.
            @token_issuer_type
            ## 
            ## Gets the activity property value. Indicates the activity type the detected risk is linked to.  The possible values are: signin, servicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: servicePrincipal.
            ## @return a activity_type
            ## 
            def activity
                return @activity
            end
            ## 
            ## Sets the activity property value. Indicates the activity type the detected risk is linked to.  The possible values are: signin, servicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: servicePrincipal.
            ## @param value Value to set for the activity property.
            ## @return a void
            ## 
            def activity=(value)
                @activity = value
            end
            ## 
            ## Gets the activityDateTime property value. Date and time when the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def activity_date_time
                return @activity_date_time
            end
            ## 
            ## Sets the activityDateTime property value. Date and time when the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the activity_date_time property.
            ## @return a void
            ## 
            def activity_date_time=(value)
                @activity_date_time = value
            end
            ## 
            ## Gets the additionalInfo property value. Additional information associated with the risk detection. This string value is represented as a JSON object with the quotations escaped.
            ## @return a string
            ## 
            def additional_info
                return @additional_info
            end
            ## 
            ## Sets the additionalInfo property value. Additional information associated with the risk detection. This string value is represented as a JSON object with the quotations escaped.
            ## @param value Value to set for the additional_info property.
            ## @return a void
            ## 
            def additional_info=(value)
                @additional_info = value
            end
            ## 
            ## Gets the appId property value. The unique identifier for the associated application.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The unique identifier for the associated application.
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new ServicePrincipalRiskDetection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. Correlation ID of the sign-in activity associated with the risk detection. This property is null if the risk detection is not associated with a sign-in activity.
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. Correlation ID of the sign-in activity associated with the risk detection. This property is null if the risk detection is not associated with a sign-in activity.
            ## @param value Value to set for the correlation_id property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_principal_risk_detection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServicePrincipalRiskDetection.new
            end
            ## 
            ## Gets the detectedDateTime property value. Date and time when the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def detected_date_time
                return @detected_date_time
            end
            ## 
            ## Sets the detectedDateTime property value. Date and time when the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the detected_date_time property.
            ## @return a void
            ## 
            def detected_date_time=(value)
                @detected_date_time = value
            end
            ## 
            ## Gets the detectionTimingType property value. Timing of the detected risk , whether real-time or offline. The possible values are: notDefined, realtime, nearRealtime, offline, unknownFutureValue.
            ## @return a risk_detection_timing_type
            ## 
            def detection_timing_type
                return @detection_timing_type
            end
            ## 
            ## Sets the detectionTimingType property value. Timing of the detected risk , whether real-time or offline. The possible values are: notDefined, realtime, nearRealtime, offline, unknownFutureValue.
            ## @param value Value to set for the detection_timing_type property.
            ## @return a void
            ## 
            def detection_timing_type=(value)
                @detection_timing_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activity" => lambda {|n| @activity = n.get_enum_value(MicrosoftGraph::Models::ActivityType) },
                    "activityDateTime" => lambda {|n| @activity_date_time = n.get_date_time_value() },
                    "additionalInfo" => lambda {|n| @additional_info = n.get_string_value() },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "detectedDateTime" => lambda {|n| @detected_date_time = n.get_date_time_value() },
                    "detectionTimingType" => lambda {|n| @detection_timing_type = n.get_enum_value(MicrosoftGraph::Models::RiskDetectionTimingType) },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "keyIds" => lambda {|n| @key_ids = n.get_collection_of_primitive_values(String) },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SignInLocation.create_from_discriminator_value(pn) }) },
                    "requestId" => lambda {|n| @request_id = n.get_string_value() },
                    "riskDetail" => lambda {|n| @risk_detail = n.get_enum_value(MicrosoftGraph::Models::RiskDetail) },
                    "riskEventType" => lambda {|n| @risk_event_type = n.get_string_value() },
                    "riskLevel" => lambda {|n| @risk_level = n.get_enum_value(MicrosoftGraph::Models::RiskLevel) },
                    "riskState" => lambda {|n| @risk_state = n.get_enum_value(MicrosoftGraph::Models::RiskState) },
                    "servicePrincipalDisplayName" => lambda {|n| @service_principal_display_name = n.get_string_value() },
                    "servicePrincipalId" => lambda {|n| @service_principal_id = n.get_string_value() },
                    "source" => lambda {|n| @source = n.get_string_value() },
                    "tokenIssuerType" => lambda {|n| @token_issuer_type = n.get_enum_value(MicrosoftGraph::Models::TokenIssuerType) },
                })
            end
            ## 
            ## Gets the ipAddress property value. Provides the IP address of the client from where the risk occurred.
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. Provides the IP address of the client from where the risk occurred.
            ## @param value Value to set for the ip_address property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the keyIds property value. The unique identifier for the key credential associated with the risk detection.
            ## @return a string
            ## 
            def key_ids
                return @key_ids
            end
            ## 
            ## Sets the keyIds property value. The unique identifier for the key credential associated with the risk detection.
            ## @param value Value to set for the key_ids property.
            ## @return a void
            ## 
            def key_ids=(value)
                @key_ids = value
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. Date and time when the risk detection was last updated.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. Date and time when the risk detection was last updated.
            ## @param value Value to set for the last_updated_date_time property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the location property value. Location from where the sign-in was initiated.
            ## @return a sign_in_location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. Location from where the sign-in was initiated.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the requestId property value. Request identifier of the sign-in activity associated with the risk detection. This property is null if the risk detection is not associated with a sign-in activity. Supports $filter (eq).
            ## @return a string
            ## 
            def request_id
                return @request_id
            end
            ## 
            ## Sets the requestId property value. Request identifier of the sign-in activity associated with the risk detection. This property is null if the risk detection is not associated with a sign-in activity. Supports $filter (eq).
            ## @param value Value to set for the request_id property.
            ## @return a void
            ## 
            def request_id=(value)
                @request_id = value
            end
            ## 
            ## Gets the riskDetail property value. Details of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: none, hidden, adminConfirmedServicePrincipalCompromised, adminDismissedAllRiskForServicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: adminConfirmedServicePrincipalCompromised , adminDismissedAllRiskForServicePrincipal.
            ## @return a risk_detail
            ## 
            def risk_detail
                return @risk_detail
            end
            ## 
            ## Sets the riskDetail property value. Details of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: none, hidden, adminConfirmedServicePrincipalCompromised, adminDismissedAllRiskForServicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: adminConfirmedServicePrincipalCompromised , adminDismissedAllRiskForServicePrincipal.
            ## @param value Value to set for the risk_detail property.
            ## @return a void
            ## 
            def risk_detail=(value)
                @risk_detail = value
            end
            ## 
            ## Gets the riskEventType property value. The type of risk event detected. The possible values are: investigationsThreatIntelligence, generic, adminConfirmedServicePrincipalCompromised, suspiciousSignins, leakedCredentials, anomalousServicePrincipalActivity, maliciousApplication, suspiciousApplication.
            ## @return a string
            ## 
            def risk_event_type
                return @risk_event_type
            end
            ## 
            ## Sets the riskEventType property value. The type of risk event detected. The possible values are: investigationsThreatIntelligence, generic, adminConfirmedServicePrincipalCompromised, suspiciousSignins, leakedCredentials, anomalousServicePrincipalActivity, maliciousApplication, suspiciousApplication.
            ## @param value Value to set for the risk_event_type property.
            ## @return a void
            ## 
            def risk_event_type=(value)
                @risk_event_type = value
            end
            ## 
            ## Gets the riskLevel property value. Level of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: low, medium, high, hidden, none.
            ## @return a risk_level
            ## 
            def risk_level
                return @risk_level
            end
            ## 
            ## Sets the riskLevel property value. Level of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: low, medium, high, hidden, none.
            ## @param value Value to set for the risk_level property.
            ## @return a void
            ## 
            def risk_level=(value)
                @risk_level = value
            end
            ## 
            ## Gets the riskState property value. The state of a detected risky service principal or sign-in activity. The possible values are: none, dismissed, atRisk, confirmedCompromised.
            ## @return a risk_state
            ## 
            def risk_state
                return @risk_state
            end
            ## 
            ## Sets the riskState property value. The state of a detected risky service principal or sign-in activity. The possible values are: none, dismissed, atRisk, confirmedCompromised.
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
                writer.write_enum_value("activity", @activity)
                writer.write_date_time_value("activityDateTime", @activity_date_time)
                writer.write_string_value("additionalInfo", @additional_info)
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_date_time_value("detectedDateTime", @detected_date_time)
                writer.write_enum_value("detectionTimingType", @detection_timing_type)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_collection_of_primitive_values("keyIds", @key_ids)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_object_value("location", @location)
                writer.write_string_value("requestId", @request_id)
                writer.write_enum_value("riskDetail", @risk_detail)
                writer.write_string_value("riskEventType", @risk_event_type)
                writer.write_enum_value("riskLevel", @risk_level)
                writer.write_enum_value("riskState", @risk_state)
                writer.write_string_value("servicePrincipalDisplayName", @service_principal_display_name)
                writer.write_string_value("servicePrincipalId", @service_principal_id)
                writer.write_string_value("source", @source)
                writer.write_enum_value("tokenIssuerType", @token_issuer_type)
            end
            ## 
            ## Gets the servicePrincipalDisplayName property value. The display name for the service principal.
            ## @return a string
            ## 
            def service_principal_display_name
                return @service_principal_display_name
            end
            ## 
            ## Sets the servicePrincipalDisplayName property value. The display name for the service principal.
            ## @param value Value to set for the service_principal_display_name property.
            ## @return a void
            ## 
            def service_principal_display_name=(value)
                @service_principal_display_name = value
            end
            ## 
            ## Gets the servicePrincipalId property value. The unique identifier for the service principal. Supports $filter (eq).
            ## @return a string
            ## 
            def service_principal_id
                return @service_principal_id
            end
            ## 
            ## Sets the servicePrincipalId property value. The unique identifier for the service principal. Supports $filter (eq).
            ## @param value Value to set for the service_principal_id property.
            ## @return a void
            ## 
            def service_principal_id=(value)
                @service_principal_id = value
            end
            ## 
            ## Gets the source property value. Source of the risk detection. For example, identityProtection.
            ## @return a string
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. Source of the risk detection. For example, identityProtection.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the tokenIssuerType property value. Indicates the type of token issuer for the detected sign-in risk. The possible values are: AzureAD.
            ## @return a token_issuer_type
            ## 
            def token_issuer_type
                return @token_issuer_type
            end
            ## 
            ## Sets the tokenIssuerType property value. Indicates the type of token issuer for the detected sign-in risk. The possible values are: AzureAD.
            ## @param value Value to set for the token_issuer_type property.
            ## @return a void
            ## 
            def token_issuer_type=(value)
                @token_issuer_type = value
            end
        end
    end
end
