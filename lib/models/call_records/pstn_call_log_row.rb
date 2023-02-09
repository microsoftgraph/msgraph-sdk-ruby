require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class PstnCallLogRow
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is operator. Otherwise, the value is microsoft.
                @call_duration_source
                ## 
                # Call identifier. Not guaranteed to be unique.
                @call_id
                ## 
                # Whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.
                @call_type
                ## 
                # Number dialed in E.164 format.
                @callee_number
                ## 
                # Number that received the call for inbound calls or the number dialed for outbound calls. E.164 format.
                @caller_number
                ## 
                # Amount of money or cost of the call that is charged to your account.
                @charge
                ## 
                # ID of the audio conference.
                @conference_id
                ## 
                # Connection fee price.
                @connection_charge
                ## 
                # Type of currency used to calculate the cost of the call. For details, see (ISO 4217.
                @currency
                ## 
                # Whether the call was domestic (within a country or region) or international (outside a country or region) based on the user's location.
                @destination_context
                ## 
                # Country or region dialed.
                @destination_name
                ## 
                # How long the call was connected, in seconds.
                @duration
                ## 
                # Call end time.
                @end_date_time
                ## 
                # Unique call identifier. GUID.
                @id
                ## 
                # User's phone number type, such as a service of toll-free number.
                @inventory_type
                ## 
                # The license used for the call.
                @license_capability
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The telecommunications operator which provided PSTN services for this call. This may be Microsoft, or it may be a third-party operator via the Operator Connect Program.
                @operator
                ## 
                # Call start time.
                @start_date_time
                ## 
                # Country code of the tenant. For details, see ISO 3166-1 alpha-2.
                @tenant_country_code
                ## 
                # Country code of the user. For details, see ISO 3166-1 alpha-2.
                @usage_country_code
                ## 
                # Display name of the user.
                @user_display_name
                ## 
                # Calling user's ID in Graph. GUID. This and other user info will be null/empty for bot call types (ucap_in, ucap_out).
                @user_id
                ## 
                # The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.
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
                ## Gets the callDurationSource property value. The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is operator. Otherwise, the value is microsoft.
                ## @return a pstn_call_duration_source
                ## 
                def call_duration_source
                    return @call_duration_source
                end
                ## 
                ## Sets the callDurationSource property value. The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is operator. Otherwise, the value is microsoft.
                ## @param value Value to set for the call_duration_source property.
                ## @return a void
                ## 
                def call_duration_source=(value)
                    @call_duration_source = value
                end
                ## 
                ## Gets the callId property value. Call identifier. Not guaranteed to be unique.
                ## @return a string
                ## 
                def call_id
                    return @call_id
                end
                ## 
                ## Sets the callId property value. Call identifier. Not guaranteed to be unique.
                ## @param value Value to set for the call_id property.
                ## @return a void
                ## 
                def call_id=(value)
                    @call_id = value
                end
                ## 
                ## Gets the callType property value. Whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.
                ## @return a string
                ## 
                def call_type
                    return @call_type
                end
                ## 
                ## Sets the callType property value. Whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.
                ## @param value Value to set for the call_type property.
                ## @return a void
                ## 
                def call_type=(value)
                    @call_type = value
                end
                ## 
                ## Gets the calleeNumber property value. Number dialed in E.164 format.
                ## @return a string
                ## 
                def callee_number
                    return @callee_number
                end
                ## 
                ## Sets the calleeNumber property value. Number dialed in E.164 format.
                ## @param value Value to set for the callee_number property.
                ## @return a void
                ## 
                def callee_number=(value)
                    @callee_number = value
                end
                ## 
                ## Gets the callerNumber property value. Number that received the call for inbound calls or the number dialed for outbound calls. E.164 format.
                ## @return a string
                ## 
                def caller_number
                    return @caller_number
                end
                ## 
                ## Sets the callerNumber property value. Number that received the call for inbound calls or the number dialed for outbound calls. E.164 format.
                ## @param value Value to set for the caller_number property.
                ## @return a void
                ## 
                def caller_number=(value)
                    @caller_number = value
                end
                ## 
                ## Gets the charge property value. Amount of money or cost of the call that is charged to your account.
                ## @return a decimal
                ## 
                def charge
                    return @charge
                end
                ## 
                ## Sets the charge property value. Amount of money or cost of the call that is charged to your account.
                ## @param value Value to set for the charge property.
                ## @return a void
                ## 
                def charge=(value)
                    @charge = value
                end
                ## 
                ## Gets the conferenceId property value. ID of the audio conference.
                ## @return a string
                ## 
                def conference_id
                    return @conference_id
                end
                ## 
                ## Sets the conferenceId property value. ID of the audio conference.
                ## @param value Value to set for the conference_id property.
                ## @return a void
                ## 
                def conference_id=(value)
                    @conference_id = value
                end
                ## 
                ## Gets the connectionCharge property value. Connection fee price.
                ## @return a decimal
                ## 
                def connection_charge
                    return @connection_charge
                end
                ## 
                ## Sets the connectionCharge property value. Connection fee price.
                ## @param value Value to set for the connection_charge property.
                ## @return a void
                ## 
                def connection_charge=(value)
                    @connection_charge = value
                end
                ## 
                ## Instantiates a new pstnCallLogRow and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a pstn_call_log_row
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return PstnCallLogRow.new
                end
                ## 
                ## Gets the currency property value. Type of currency used to calculate the cost of the call. For details, see (ISO 4217.
                ## @return a string
                ## 
                def currency
                    return @currency
                end
                ## 
                ## Sets the currency property value. Type of currency used to calculate the cost of the call. For details, see (ISO 4217.
                ## @param value Value to set for the currency property.
                ## @return a void
                ## 
                def currency=(value)
                    @currency = value
                end
                ## 
                ## Gets the destinationContext property value. Whether the call was domestic (within a country or region) or international (outside a country or region) based on the user's location.
                ## @return a string
                ## 
                def destination_context
                    return @destination_context
                end
                ## 
                ## Sets the destinationContext property value. Whether the call was domestic (within a country or region) or international (outside a country or region) based on the user's location.
                ## @param value Value to set for the destination_context property.
                ## @return a void
                ## 
                def destination_context=(value)
                    @destination_context = value
                end
                ## 
                ## Gets the destinationName property value. Country or region dialed.
                ## @return a string
                ## 
                def destination_name
                    return @destination_name
                end
                ## 
                ## Sets the destinationName property value. Country or region dialed.
                ## @param value Value to set for the destination_name property.
                ## @return a void
                ## 
                def destination_name=(value)
                    @destination_name = value
                end
                ## 
                ## Gets the duration property value. How long the call was connected, in seconds.
                ## @return a integer
                ## 
                def duration
                    return @duration
                end
                ## 
                ## Sets the duration property value. How long the call was connected, in seconds.
                ## @param value Value to set for the duration property.
                ## @return a void
                ## 
                def duration=(value)
                    @duration = value
                end
                ## 
                ## Gets the endDateTime property value. Call end time.
                ## @return a date_time
                ## 
                def end_date_time
                    return @end_date_time
                end
                ## 
                ## Sets the endDateTime property value. Call end time.
                ## @param value Value to set for the end_date_time property.
                ## @return a void
                ## 
                def end_date_time=(value)
                    @end_date_time = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "callDurationSource" => lambda {|n| @call_duration_source = n.get_enum_value(MicrosoftGraph::Models::CallRecords::PstnCallDurationSource) },
                        "callId" => lambda {|n| @call_id = n.get_string_value() },
                        "callType" => lambda {|n| @call_type = n.get_string_value() },
                        "calleeNumber" => lambda {|n| @callee_number = n.get_string_value() },
                        "callerNumber" => lambda {|n| @caller_number = n.get_string_value() },
                        "charge" => lambda {|n| @charge = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                        "conferenceId" => lambda {|n| @conference_id = n.get_string_value() },
                        "connectionCharge" => lambda {|n| @connection_charge = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                        "currency" => lambda {|n| @currency = n.get_string_value() },
                        "destinationContext" => lambda {|n| @destination_context = n.get_string_value() },
                        "destinationName" => lambda {|n| @destination_name = n.get_string_value() },
                        "duration" => lambda {|n| @duration = n.get_number_value() },
                        "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "inventoryType" => lambda {|n| @inventory_type = n.get_string_value() },
                        "licenseCapability" => lambda {|n| @license_capability = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "operator" => lambda {|n| @operator = n.get_string_value() },
                        "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                        "tenantCountryCode" => lambda {|n| @tenant_country_code = n.get_string_value() },
                        "usageCountryCode" => lambda {|n| @usage_country_code = n.get_string_value() },
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
                ## Gets the inventoryType property value. User's phone number type, such as a service of toll-free number.
                ## @return a string
                ## 
                def inventory_type
                    return @inventory_type
                end
                ## 
                ## Sets the inventoryType property value. User's phone number type, such as a service of toll-free number.
                ## @param value Value to set for the inventory_type property.
                ## @return a void
                ## 
                def inventory_type=(value)
                    @inventory_type = value
                end
                ## 
                ## Gets the licenseCapability property value. The license used for the call.
                ## @return a string
                ## 
                def license_capability
                    return @license_capability
                end
                ## 
                ## Sets the licenseCapability property value. The license used for the call.
                ## @param value Value to set for the license_capability property.
                ## @return a void
                ## 
                def license_capability=(value)
                    @license_capability = value
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
                ## Gets the operator property value. The telecommunications operator which provided PSTN services for this call. This may be Microsoft, or it may be a third-party operator via the Operator Connect Program.
                ## @return a string
                ## 
                def operator
                    return @operator
                end
                ## 
                ## Sets the operator property value. The telecommunications operator which provided PSTN services for this call. This may be Microsoft, or it may be a third-party operator via the Operator Connect Program.
                ## @param value Value to set for the operator property.
                ## @return a void
                ## 
                def operator=(value)
                    @operator = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("callDurationSource", @call_duration_source)
                    writer.write_string_value("callId", @call_id)
                    writer.write_string_value("callType", @call_type)
                    writer.write_string_value("calleeNumber", @callee_number)
                    writer.write_string_value("callerNumber", @caller_number)
                    writer.write_object_value("charge", @charge)
                    writer.write_string_value("conferenceId", @conference_id)
                    writer.write_object_value("connectionCharge", @connection_charge)
                    writer.write_string_value("currency", @currency)
                    writer.write_string_value("destinationContext", @destination_context)
                    writer.write_string_value("destinationName", @destination_name)
                    writer.write_number_value("duration", @duration)
                    writer.write_date_time_value("endDateTime", @end_date_time)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("inventoryType", @inventory_type)
                    writer.write_string_value("licenseCapability", @license_capability)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("operator", @operator)
                    writer.write_date_time_value("startDateTime", @start_date_time)
                    writer.write_string_value("tenantCountryCode", @tenant_country_code)
                    writer.write_string_value("usageCountryCode", @usage_country_code)
                    writer.write_string_value("userDisplayName", @user_display_name)
                    writer.write_string_value("userId", @user_id)
                    writer.write_string_value("userPrincipalName", @user_principal_name)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the startDateTime property value. Call start time.
                ## @return a date_time
                ## 
                def start_date_time
                    return @start_date_time
                end
                ## 
                ## Sets the startDateTime property value. Call start time.
                ## @param value Value to set for the start_date_time property.
                ## @return a void
                ## 
                def start_date_time=(value)
                    @start_date_time = value
                end
                ## 
                ## Gets the tenantCountryCode property value. Country code of the tenant. For details, see ISO 3166-1 alpha-2.
                ## @return a string
                ## 
                def tenant_country_code
                    return @tenant_country_code
                end
                ## 
                ## Sets the tenantCountryCode property value. Country code of the tenant. For details, see ISO 3166-1 alpha-2.
                ## @param value Value to set for the tenant_country_code property.
                ## @return a void
                ## 
                def tenant_country_code=(value)
                    @tenant_country_code = value
                end
                ## 
                ## Gets the usageCountryCode property value. Country code of the user. For details, see ISO 3166-1 alpha-2.
                ## @return a string
                ## 
                def usage_country_code
                    return @usage_country_code
                end
                ## 
                ## Sets the usageCountryCode property value. Country code of the user. For details, see ISO 3166-1 alpha-2.
                ## @param value Value to set for the usage_country_code property.
                ## @return a void
                ## 
                def usage_country_code=(value)
                    @usage_country_code = value
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
                ## Gets the userId property value. Calling user's ID in Graph. GUID. This and other user info will be null/empty for bot call types (ucap_in, ucap_out).
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. Calling user's ID in Graph. GUID. This and other user info will be null/empty for bot call types (ucap_in, ucap_out).
                ## @param value Value to set for the user_id property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
                ## 
                ## Gets the userPrincipalName property value. The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.
                ## @return a string
                ## 
                def user_principal_name
                    return @user_principal_name
                end
                ## 
                ## Sets the userPrincipalName property value. The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.
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
