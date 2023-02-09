require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class DirectRoutingLogRow
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # In addition to the SIP codes, Microsoft has own subcodes that indicate the specific issue.
                @call_end_sub_reason
                ## 
                # Call type and direction.
                @call_type
                ## 
                # Number of the user or bot who received the call. E.164 format, but may include additional data.
                @callee_number
                ## 
                # Number of the user or bot who made the call. E.164 format, but may include additional data.
                @caller_number
                ## 
                # Identifier for the call that you can use when calling Microsoft Support. GUID.
                @correlation_id
                ## 
                # Duration of the call in seconds.
                @duration
                ## 
                # Only exists for successful (fully established) calls. Time when call ended.
                @end_date_time
                ## 
                # Only exists for failed (not fully established) calls.
                @failure_date_time
                ## 
                # The code with which the call ended, RFC 3261.
                @final_sip_code
                ## 
                # Description of the SIP code and Microsoft subcode.
                @final_sip_code_phrase
                ## 
                # Unique call identifier. GUID.
                @id
                ## 
                # When the initial invite was sent.
                @invite_date_time
                ## 
                # Indicates if the trunk was enabled for media bypass or not.
                @media_bypass_enabled
                ## 
                # The datacenter used for media path in non-bypass call.
                @media_path_location
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The datacenter used for signaling for both bypass and non-bypass calls.
                @signaling_location
                ## 
                # Call start time.For failed and unanswered calls, this can be equal to invite or failure time.
                @start_date_time
                ## 
                # Success or attempt.
                @successful_call
                ## 
                # Fully qualified domain name of the session border controller.
                @trunk_fully_qualified_domain_name
                ## 
                # Display name of the user.
                @user_display_name
                ## 
                # Calling user's ID in Graph. This and other user info will be null/empty for bot call types. GUID.
                @user_id
                ## 
                # UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address.
                @user_principal_name
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
                ## Gets the callEndSubReason property value. In addition to the SIP codes, Microsoft has own subcodes that indicate the specific issue.
                ## @return a integer
                ## 
                def call_end_sub_reason
                    return @call_end_sub_reason
                end
                ## 
                ## Sets the callEndSubReason property value. In addition to the SIP codes, Microsoft has own subcodes that indicate the specific issue.
                ## @param value Value to set for the call_end_sub_reason property.
                ## @return a void
                ## 
                def call_end_sub_reason=(value)
                    @call_end_sub_reason = value
                end
                ## 
                ## Gets the callType property value. Call type and direction.
                ## @return a string
                ## 
                def call_type
                    return @call_type
                end
                ## 
                ## Sets the callType property value. Call type and direction.
                ## @param value Value to set for the call_type property.
                ## @return a void
                ## 
                def call_type=(value)
                    @call_type = value
                end
                ## 
                ## Gets the calleeNumber property value. Number of the user or bot who received the call. E.164 format, but may include additional data.
                ## @return a string
                ## 
                def callee_number
                    return @callee_number
                end
                ## 
                ## Sets the calleeNumber property value. Number of the user or bot who received the call. E.164 format, but may include additional data.
                ## @param value Value to set for the callee_number property.
                ## @return a void
                ## 
                def callee_number=(value)
                    @callee_number = value
                end
                ## 
                ## Gets the callerNumber property value. Number of the user or bot who made the call. E.164 format, but may include additional data.
                ## @return a string
                ## 
                def caller_number
                    return @caller_number
                end
                ## 
                ## Sets the callerNumber property value. Number of the user or bot who made the call. E.164 format, but may include additional data.
                ## @param value Value to set for the caller_number property.
                ## @return a void
                ## 
                def caller_number=(value)
                    @caller_number = value
                end
                ## 
                ## Instantiates a new directRoutingLogRow and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the correlationId property value. Identifier for the call that you can use when calling Microsoft Support. GUID.
                ## @return a string
                ## 
                def correlation_id
                    return @correlation_id
                end
                ## 
                ## Sets the correlationId property value. Identifier for the call that you can use when calling Microsoft Support. GUID.
                ## @param value Value to set for the correlation_id property.
                ## @return a void
                ## 
                def correlation_id=(value)
                    @correlation_id = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a direct_routing_log_row
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DirectRoutingLogRow.new
                end
                ## 
                ## Gets the duration property value. Duration of the call in seconds.
                ## @return a integer
                ## 
                def duration
                    return @duration
                end
                ## 
                ## Sets the duration property value. Duration of the call in seconds.
                ## @param value Value to set for the duration property.
                ## @return a void
                ## 
                def duration=(value)
                    @duration = value
                end
                ## 
                ## Gets the endDateTime property value. Only exists for successful (fully established) calls. Time when call ended.
                ## @return a date_time
                ## 
                def end_date_time
                    return @end_date_time
                end
                ## 
                ## Sets the endDateTime property value. Only exists for successful (fully established) calls. Time when call ended.
                ## @param value Value to set for the end_date_time property.
                ## @return a void
                ## 
                def end_date_time=(value)
                    @end_date_time = value
                end
                ## 
                ## Gets the failureDateTime property value. Only exists for failed (not fully established) calls.
                ## @return a date_time
                ## 
                def failure_date_time
                    return @failure_date_time
                end
                ## 
                ## Sets the failureDateTime property value. Only exists for failed (not fully established) calls.
                ## @param value Value to set for the failure_date_time property.
                ## @return a void
                ## 
                def failure_date_time=(value)
                    @failure_date_time = value
                end
                ## 
                ## Gets the finalSipCode property value. The code with which the call ended, RFC 3261.
                ## @return a integer
                ## 
                def final_sip_code
                    return @final_sip_code
                end
                ## 
                ## Sets the finalSipCode property value. The code with which the call ended, RFC 3261.
                ## @param value Value to set for the final_sip_code property.
                ## @return a void
                ## 
                def final_sip_code=(value)
                    @final_sip_code = value
                end
                ## 
                ## Gets the finalSipCodePhrase property value. Description of the SIP code and Microsoft subcode.
                ## @return a string
                ## 
                def final_sip_code_phrase
                    return @final_sip_code_phrase
                end
                ## 
                ## Sets the finalSipCodePhrase property value. Description of the SIP code and Microsoft subcode.
                ## @param value Value to set for the final_sip_code_phrase property.
                ## @return a void
                ## 
                def final_sip_code_phrase=(value)
                    @final_sip_code_phrase = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "callEndSubReason" => lambda {|n| @call_end_sub_reason = n.get_number_value() },
                        "callType" => lambda {|n| @call_type = n.get_string_value() },
                        "calleeNumber" => lambda {|n| @callee_number = n.get_string_value() },
                        "callerNumber" => lambda {|n| @caller_number = n.get_string_value() },
                        "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                        "duration" => lambda {|n| @duration = n.get_number_value() },
                        "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                        "failureDateTime" => lambda {|n| @failure_date_time = n.get_date_time_value() },
                        "finalSipCode" => lambda {|n| @final_sip_code = n.get_number_value() },
                        "finalSipCodePhrase" => lambda {|n| @final_sip_code_phrase = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "inviteDateTime" => lambda {|n| @invite_date_time = n.get_date_time_value() },
                        "mediaBypassEnabled" => lambda {|n| @media_bypass_enabled = n.get_boolean_value() },
                        "mediaPathLocation" => lambda {|n| @media_path_location = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "signalingLocation" => lambda {|n| @signaling_location = n.get_string_value() },
                        "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                        "successfulCall" => lambda {|n| @successful_call = n.get_boolean_value() },
                        "trunkFullyQualifiedDomainName" => lambda {|n| @trunk_fully_qualified_domain_name = n.get_string_value() },
                        "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                        "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Unique call identifier. GUID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Unique call identifier. GUID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the inviteDateTime property value. When the initial invite was sent.
                ## @return a date_time
                ## 
                def invite_date_time
                    return @invite_date_time
                end
                ## 
                ## Sets the inviteDateTime property value. When the initial invite was sent.
                ## @param value Value to set for the invite_date_time property.
                ## @return a void
                ## 
                def invite_date_time=(value)
                    @invite_date_time = value
                end
                ## 
                ## Gets the mediaBypassEnabled property value. Indicates if the trunk was enabled for media bypass or not.
                ## @return a boolean
                ## 
                def media_bypass_enabled
                    return @media_bypass_enabled
                end
                ## 
                ## Sets the mediaBypassEnabled property value. Indicates if the trunk was enabled for media bypass or not.
                ## @param value Value to set for the media_bypass_enabled property.
                ## @return a void
                ## 
                def media_bypass_enabled=(value)
                    @media_bypass_enabled = value
                end
                ## 
                ## Gets the mediaPathLocation property value. The datacenter used for media path in non-bypass call.
                ## @return a string
                ## 
                def media_path_location
                    return @media_path_location
                end
                ## 
                ## Sets the mediaPathLocation property value. The datacenter used for media path in non-bypass call.
                ## @param value Value to set for the media_path_location property.
                ## @return a void
                ## 
                def media_path_location=(value)
                    @media_path_location = value
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
                    writer.write_number_value("callEndSubReason", @call_end_sub_reason)
                    writer.write_string_value("callType", @call_type)
                    writer.write_string_value("calleeNumber", @callee_number)
                    writer.write_string_value("callerNumber", @caller_number)
                    writer.write_string_value("correlationId", @correlation_id)
                    writer.write_number_value("duration", @duration)
                    writer.write_date_time_value("endDateTime", @end_date_time)
                    writer.write_date_time_value("failureDateTime", @failure_date_time)
                    writer.write_number_value("finalSipCode", @final_sip_code)
                    writer.write_string_value("finalSipCodePhrase", @final_sip_code_phrase)
                    writer.write_string_value("id", @id)
                    writer.write_date_time_value("inviteDateTime", @invite_date_time)
                    writer.write_boolean_value("mediaBypassEnabled", @media_bypass_enabled)
                    writer.write_string_value("mediaPathLocation", @media_path_location)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("signalingLocation", @signaling_location)
                    writer.write_date_time_value("startDateTime", @start_date_time)
                    writer.write_boolean_value("successfulCall", @successful_call)
                    writer.write_string_value("trunkFullyQualifiedDomainName", @trunk_fully_qualified_domain_name)
                    writer.write_string_value("userDisplayName", @user_display_name)
                    writer.write_string_value("userId", @user_id)
                    writer.write_string_value("userPrincipalName", @user_principal_name)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the signalingLocation property value. The datacenter used for signaling for both bypass and non-bypass calls.
                ## @return a string
                ## 
                def signaling_location
                    return @signaling_location
                end
                ## 
                ## Sets the signalingLocation property value. The datacenter used for signaling for both bypass and non-bypass calls.
                ## @param value Value to set for the signaling_location property.
                ## @return a void
                ## 
                def signaling_location=(value)
                    @signaling_location = value
                end
                ## 
                ## Gets the startDateTime property value. Call start time.For failed and unanswered calls, this can be equal to invite or failure time.
                ## @return a date_time
                ## 
                def start_date_time
                    return @start_date_time
                end
                ## 
                ## Sets the startDateTime property value. Call start time.For failed and unanswered calls, this can be equal to invite or failure time.
                ## @param value Value to set for the start_date_time property.
                ## @return a void
                ## 
                def start_date_time=(value)
                    @start_date_time = value
                end
                ## 
                ## Gets the successfulCall property value. Success or attempt.
                ## @return a boolean
                ## 
                def successful_call
                    return @successful_call
                end
                ## 
                ## Sets the successfulCall property value. Success or attempt.
                ## @param value Value to set for the successful_call property.
                ## @return a void
                ## 
                def successful_call=(value)
                    @successful_call = value
                end
                ## 
                ## Gets the trunkFullyQualifiedDomainName property value. Fully qualified domain name of the session border controller.
                ## @return a string
                ## 
                def trunk_fully_qualified_domain_name
                    return @trunk_fully_qualified_domain_name
                end
                ## 
                ## Sets the trunkFullyQualifiedDomainName property value. Fully qualified domain name of the session border controller.
                ## @param value Value to set for the trunk_fully_qualified_domain_name property.
                ## @return a void
                ## 
                def trunk_fully_qualified_domain_name=(value)
                    @trunk_fully_qualified_domain_name = value
                end
                ## 
                ## Gets the userDisplayName property value. Display name of the user.
                ## @return a string
                ## 
                def user_display_name
                    return @user_display_name
                end
                ## 
                ## Sets the userDisplayName property value. Display name of the user.
                ## @param value Value to set for the user_display_name property.
                ## @return a void
                ## 
                def user_display_name=(value)
                    @user_display_name = value
                end
                ## 
                ## Gets the userId property value. Calling user's ID in Graph. This and other user info will be null/empty for bot call types. GUID.
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. Calling user's ID in Graph. This and other user info will be null/empty for bot call types. GUID.
                ## @param value Value to set for the user_id property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
                ## 
                ## Gets the userPrincipalName property value. UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address.
                ## @return a string
                ## 
                def user_principal_name
                    return @user_principal_name
                end
                ## 
                ## Sets the userPrincipalName property value. UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address.
                ## @param value Value to set for the user_principal_name property.
                ## @return a void
                ## 
                def user_principal_name=(value)
                    @user_principal_name = value
                end
            end
        end
    end
end
