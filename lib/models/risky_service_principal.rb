require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RiskyServicePrincipal < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The globally unique identifier for the associated application (its appId property), if any.
            @app_id
            ## 
            # The display name for the service principal.
            @display_name
            ## 
            # Represents the risk history of Azure AD service principals.
            @history
            ## 
            # true if the service principal account is enabled; otherwise, false.
            @is_enabled
            ## 
            # Indicates whether Azure AD is currently processing the service principal's risky state.
            @is_processing
            ## 
            # Details of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: none, hidden,  unknownFutureValue, adminConfirmedServicePrincipalCompromised, adminDismissedAllRiskForServicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: adminConfirmedServicePrincipalCompromised , adminDismissedAllRiskForServicePrincipal.
            @risk_detail
            ## 
            # The date and time that the risk state was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is 2021-01-01T00:00:00Z. Supports $filter (eq).
            @risk_last_updated_date_time
            ## 
            # Level of the detected risky workload identity. The possible values are: low, medium, high, hidden, none, unknownFutureValue. Supports $filter (eq).
            @risk_level
            ## 
            # State of the service principal's risk. The possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue.
            @risk_state
            ## 
            # Identifies whether the service principal represents an Application, a ManagedIdentity, or a legacy application (socialIdp). This is set by Azure AD internally and is inherited from servicePrincipal.
            @service_principal_type
            ## 
            ## Gets the appId property value. The globally unique identifier for the associated application (its appId property), if any.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The globally unique identifier for the associated application (its appId property), if any.
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new riskyServicePrincipal and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a risky_service_principal
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.riskyServicePrincipalHistoryItem"
                            return RiskyServicePrincipalHistoryItem.new
                    end
                end
                return RiskyServicePrincipal.new
            end
            ## 
            ## Gets the displayName property value. The display name for the service principal.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the service principal.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "history" => lambda {|n| @history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskyServicePrincipalHistoryItem.create_from_discriminator_value(pn) }) },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "isProcessing" => lambda {|n| @is_processing = n.get_boolean_value() },
                    "riskDetail" => lambda {|n| @risk_detail = n.get_enum_value(MicrosoftGraph::Models::RiskDetail) },
                    "riskLastUpdatedDateTime" => lambda {|n| @risk_last_updated_date_time = n.get_date_time_value() },
                    "riskLevel" => lambda {|n| @risk_level = n.get_enum_value(MicrosoftGraph::Models::RiskLevel) },
                    "riskState" => lambda {|n| @risk_state = n.get_enum_value(MicrosoftGraph::Models::RiskState) },
                    "servicePrincipalType" => lambda {|n| @service_principal_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the history property value. Represents the risk history of Azure AD service principals.
            ## @return a risky_service_principal_history_item
            ## 
            def history
                return @history
            end
            ## 
            ## Sets the history property value. Represents the risk history of Azure AD service principals.
            ## @param value Value to set for the history property.
            ## @return a void
            ## 
            def history=(value)
                @history = value
            end
            ## 
            ## Gets the isEnabled property value. true if the service principal account is enabled; otherwise, false.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. true if the service principal account is enabled; otherwise, false.
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the isProcessing property value. Indicates whether Azure AD is currently processing the service principal's risky state.
            ## @return a boolean
            ## 
            def is_processing
                return @is_processing
            end
            ## 
            ## Sets the isProcessing property value. Indicates whether Azure AD is currently processing the service principal's risky state.
            ## @param value Value to set for the is_processing property.
            ## @return a void
            ## 
            def is_processing=(value)
                @is_processing = value
            end
            ## 
            ## Gets the riskDetail property value. Details of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: none, hidden,  unknownFutureValue, adminConfirmedServicePrincipalCompromised, adminDismissedAllRiskForServicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: adminConfirmedServicePrincipalCompromised , adminDismissedAllRiskForServicePrincipal.
            ## @return a risk_detail
            ## 
            def risk_detail
                return @risk_detail
            end
            ## 
            ## Sets the riskDetail property value. Details of the detected risk. Note: Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned hidden. The possible values are: none, hidden,  unknownFutureValue, adminConfirmedServicePrincipalCompromised, adminDismissedAllRiskForServicePrincipal. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: adminConfirmedServicePrincipalCompromised , adminDismissedAllRiskForServicePrincipal.
            ## @param value Value to set for the risk_detail property.
            ## @return a void
            ## 
            def risk_detail=(value)
                @risk_detail = value
            end
            ## 
            ## Gets the riskLastUpdatedDateTime property value. The date and time that the risk state was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is 2021-01-01T00:00:00Z. Supports $filter (eq).
            ## @return a date_time
            ## 
            def risk_last_updated_date_time
                return @risk_last_updated_date_time
            end
            ## 
            ## Sets the riskLastUpdatedDateTime property value. The date and time that the risk state was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is 2021-01-01T00:00:00Z. Supports $filter (eq).
            ## @param value Value to set for the risk_last_updated_date_time property.
            ## @return a void
            ## 
            def risk_last_updated_date_time=(value)
                @risk_last_updated_date_time = value
            end
            ## 
            ## Gets the riskLevel property value. Level of the detected risky workload identity. The possible values are: low, medium, high, hidden, none, unknownFutureValue. Supports $filter (eq).
            ## @return a risk_level
            ## 
            def risk_level
                return @risk_level
            end
            ## 
            ## Sets the riskLevel property value. Level of the detected risky workload identity. The possible values are: low, medium, high, hidden, none, unknownFutureValue. Supports $filter (eq).
            ## @param value Value to set for the risk_level property.
            ## @return a void
            ## 
            def risk_level=(value)
                @risk_level = value
            end
            ## 
            ## Gets the riskState property value. State of the service principal's risk. The possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue.
            ## @return a risk_state
            ## 
            def risk_state
                return @risk_state
            end
            ## 
            ## Sets the riskState property value. State of the service principal's risk. The possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue.
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
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("history", @history)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_boolean_value("isProcessing", @is_processing)
                writer.write_enum_value("riskDetail", @risk_detail)
                writer.write_date_time_value("riskLastUpdatedDateTime", @risk_last_updated_date_time)
                writer.write_enum_value("riskLevel", @risk_level)
                writer.write_enum_value("riskState", @risk_state)
                writer.write_string_value("servicePrincipalType", @service_principal_type)
            end
            ## 
            ## Gets the servicePrincipalType property value. Identifies whether the service principal represents an Application, a ManagedIdentity, or a legacy application (socialIdp). This is set by Azure AD internally and is inherited from servicePrincipal.
            ## @return a string
            ## 
            def service_principal_type
                return @service_principal_type
            end
            ## 
            ## Sets the servicePrincipalType property value. Identifies whether the service principal represents an Application, a ManagedIdentity, or a legacy application (socialIdp). This is set by Azure AD internally and is inherited from servicePrincipal.
            ## @param value Value to set for the service_principal_type property.
            ## @return a void
            ## 
            def service_principal_type=(value)
                @service_principal_type = value
            end
        end
    end
end
