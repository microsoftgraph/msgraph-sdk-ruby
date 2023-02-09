require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RiskyUser < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activity related to user risk level change
            @history
            ## 
            # Indicates whether the user is deleted. Possible values are: true, false.
            @is_deleted
            ## 
            # Indicates whether a user's risky state is being processed by the backend.
            @is_processing
            ## 
            # Details of the detected risk. Possible values are: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, hidden, adminConfirmedUserCompromised, unknownFutureValue.
            @risk_detail
            ## 
            # The date and time that the risky user was last updated.  The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @risk_last_updated_date_time
            ## 
            # Level of the detected risky user. Possible values are: low, medium, high, hidden, none, unknownFutureValue.
            @risk_level
            ## 
            # State of the user's risk. Possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue.
            @risk_state
            ## 
            # Risky user display name.
            @user_display_name
            ## 
            # Risky user principal name.
            @user_principal_name
            ## 
            ## Instantiates a new riskyUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a risky_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.riskyUserHistoryItem"
                            return RiskyUserHistoryItem.new
                    end
                end
                return RiskyUser.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "history" => lambda {|n| @history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RiskyUserHistoryItem.create_from_discriminator_value(pn) }) },
                    "isDeleted" => lambda {|n| @is_deleted = n.get_boolean_value() },
                    "isProcessing" => lambda {|n| @is_processing = n.get_boolean_value() },
                    "riskDetail" => lambda {|n| @risk_detail = n.get_enum_value(MicrosoftGraph::Models::RiskDetail) },
                    "riskLastUpdatedDateTime" => lambda {|n| @risk_last_updated_date_time = n.get_date_time_value() },
                    "riskLevel" => lambda {|n| @risk_level = n.get_enum_value(MicrosoftGraph::Models::RiskLevel) },
                    "riskState" => lambda {|n| @risk_state = n.get_enum_value(MicrosoftGraph::Models::RiskState) },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the history property value. The activity related to user risk level change
            ## @return a risky_user_history_item
            ## 
            def history
                return @history
            end
            ## 
            ## Sets the history property value. The activity related to user risk level change
            ## @param value Value to set for the history property.
            ## @return a void
            ## 
            def history=(value)
                @history = value
            end
            ## 
            ## Gets the isDeleted property value. Indicates whether the user is deleted. Possible values are: true, false.
            ## @return a boolean
            ## 
            def is_deleted
                return @is_deleted
            end
            ## 
            ## Sets the isDeleted property value. Indicates whether the user is deleted. Possible values are: true, false.
            ## @param value Value to set for the is_deleted property.
            ## @return a void
            ## 
            def is_deleted=(value)
                @is_deleted = value
            end
            ## 
            ## Gets the isProcessing property value. Indicates whether a user's risky state is being processed by the backend.
            ## @return a boolean
            ## 
            def is_processing
                return @is_processing
            end
            ## 
            ## Sets the isProcessing property value. Indicates whether a user's risky state is being processed by the backend.
            ## @param value Value to set for the is_processing property.
            ## @return a void
            ## 
            def is_processing=(value)
                @is_processing = value
            end
            ## 
            ## Gets the riskDetail property value. Details of the detected risk. Possible values are: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, hidden, adminConfirmedUserCompromised, unknownFutureValue.
            ## @return a risk_detail
            ## 
            def risk_detail
                return @risk_detail
            end
            ## 
            ## Sets the riskDetail property value. Details of the detected risk. Possible values are: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, hidden, adminConfirmedUserCompromised, unknownFutureValue.
            ## @param value Value to set for the risk_detail property.
            ## @return a void
            ## 
            def risk_detail=(value)
                @risk_detail = value
            end
            ## 
            ## Gets the riskLastUpdatedDateTime property value. The date and time that the risky user was last updated.  The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def risk_last_updated_date_time
                return @risk_last_updated_date_time
            end
            ## 
            ## Sets the riskLastUpdatedDateTime property value. The date and time that the risky user was last updated.  The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the risk_last_updated_date_time property.
            ## @return a void
            ## 
            def risk_last_updated_date_time=(value)
                @risk_last_updated_date_time = value
            end
            ## 
            ## Gets the riskLevel property value. Level of the detected risky user. Possible values are: low, medium, high, hidden, none, unknownFutureValue.
            ## @return a risk_level
            ## 
            def risk_level
                return @risk_level
            end
            ## 
            ## Sets the riskLevel property value. Level of the detected risky user. Possible values are: low, medium, high, hidden, none, unknownFutureValue.
            ## @param value Value to set for the risk_level property.
            ## @return a void
            ## 
            def risk_level=(value)
                @risk_level = value
            end
            ## 
            ## Gets the riskState property value. State of the user's risk. Possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue.
            ## @return a risk_state
            ## 
            def risk_state
                return @risk_state
            end
            ## 
            ## Sets the riskState property value. State of the user's risk. Possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue.
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
                writer.write_collection_of_object_values("history", @history)
                writer.write_boolean_value("isDeleted", @is_deleted)
                writer.write_boolean_value("isProcessing", @is_processing)
                writer.write_enum_value("riskDetail", @risk_detail)
                writer.write_date_time_value("riskLastUpdatedDateTime", @risk_last_updated_date_time)
                writer.write_enum_value("riskLevel", @risk_level)
                writer.write_enum_value("riskState", @risk_state)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the userDisplayName property value. Risky user display name.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. Risky user display name.
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. Risky user principal name.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. Risky user principal name.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
