require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserSecurityState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # AAD User object identifier (GUID) - represents the physical/multi-account user entity.
            @aad_user_id
            ## 
            # Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
            @account_name
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # NetBIOS/Active Directory domain of user account (that is, domain/account format).
            @domain_name
            ## 
            # For email-related alerts - user account's email 'role'. Possible values are: unknown, sender, recipient.
            @email_role
            ## 
            # Indicates whether the user logged on through a VPN.
            @is_vpn
            ## 
            # Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @logon_date_time
            ## 
            # User sign-in ID.
            @logon_id
            ## 
            # IP Address the sign-in request originated from.
            @logon_ip
            ## 
            # Location (by IP address mapping) associated with a user sign-in event by this user.
            @logon_location
            ## 
            # Method of user sign in. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.
            @logon_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Active Directory (on-premises) Security Identifier (SID) of the user.
            @on_premises_security_identifier
            ## 
            # Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
            @risk_score
            ## 
            # User account type (group membership), per Windows definition. Possible values are: unknown, standard, power, administrator.
            @user_account_type
            ## 
            # User sign-in name - internet format: (user account name)@(user account DNS domain name).
            @user_principal_name
            ## 
            ## Gets the aadUserId property value. AAD User object identifier (GUID) - represents the physical/multi-account user entity.
            ## @return a string
            ## 
            def aad_user_id
                return @aad_user_id
            end
            ## 
            ## Sets the aadUserId property value. AAD User object identifier (GUID) - represents the physical/multi-account user entity.
            ## @param value Value to set for the aad_user_id property.
            ## @return a void
            ## 
            def aad_user_id=(value)
                @aad_user_id = value
            end
            ## 
            ## Gets the accountName property value. Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
            ## @return a string
            ## 
            def account_name
                return @account_name
            end
            ## 
            ## Sets the accountName property value. Account name of user account (without Active Directory domain or DNS domain) - (also called mailNickName).
            ## @param value Value to set for the account_name property.
            ## @return a void
            ## 
            def account_name=(value)
                @account_name = value
            end
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
            ## Instantiates a new userSecurityState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_security_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSecurityState.new
            end
            ## 
            ## Gets the domainName property value. NetBIOS/Active Directory domain of user account (that is, domain/account format).
            ## @return a string
            ## 
            def domain_name
                return @domain_name
            end
            ## 
            ## Sets the domainName property value. NetBIOS/Active Directory domain of user account (that is, domain/account format).
            ## @param value Value to set for the domain_name property.
            ## @return a void
            ## 
            def domain_name=(value)
                @domain_name = value
            end
            ## 
            ## Gets the emailRole property value. For email-related alerts - user account's email 'role'. Possible values are: unknown, sender, recipient.
            ## @return a email_role
            ## 
            def email_role
                return @email_role
            end
            ## 
            ## Sets the emailRole property value. For email-related alerts - user account's email 'role'. Possible values are: unknown, sender, recipient.
            ## @param value Value to set for the email_role property.
            ## @return a void
            ## 
            def email_role=(value)
                @email_role = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "aadUserId" => lambda {|n| @aad_user_id = n.get_string_value() },
                    "accountName" => lambda {|n| @account_name = n.get_string_value() },
                    "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                    "emailRole" => lambda {|n| @email_role = n.get_enum_value(MicrosoftGraph::Models::EmailRole) },
                    "isVpn" => lambda {|n| @is_vpn = n.get_boolean_value() },
                    "logonDateTime" => lambda {|n| @logon_date_time = n.get_date_time_value() },
                    "logonId" => lambda {|n| @logon_id = n.get_string_value() },
                    "logonIp" => lambda {|n| @logon_ip = n.get_string_value() },
                    "logonLocation" => lambda {|n| @logon_location = n.get_string_value() },
                    "logonType" => lambda {|n| @logon_type = n.get_enum_value(MicrosoftGraph::Models::LogonType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onPremisesSecurityIdentifier" => lambda {|n| @on_premises_security_identifier = n.get_string_value() },
                    "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                    "userAccountType" => lambda {|n| @user_account_type = n.get_enum_value(MicrosoftGraph::Models::UserAccountSecurityType) },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isVpn property value. Indicates whether the user logged on through a VPN.
            ## @return a boolean
            ## 
            def is_vpn
                return @is_vpn
            end
            ## 
            ## Sets the isVpn property value. Indicates whether the user logged on through a VPN.
            ## @param value Value to set for the is_vpn property.
            ## @return a void
            ## 
            def is_vpn=(value)
                @is_vpn = value
            end
            ## 
            ## Gets the logonDateTime property value. Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def logon_date_time
                return @logon_date_time
            end
            ## 
            ## Sets the logonDateTime property value. Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the logon_date_time property.
            ## @return a void
            ## 
            def logon_date_time=(value)
                @logon_date_time = value
            end
            ## 
            ## Gets the logonId property value. User sign-in ID.
            ## @return a string
            ## 
            def logon_id
                return @logon_id
            end
            ## 
            ## Sets the logonId property value. User sign-in ID.
            ## @param value Value to set for the logon_id property.
            ## @return a void
            ## 
            def logon_id=(value)
                @logon_id = value
            end
            ## 
            ## Gets the logonIp property value. IP Address the sign-in request originated from.
            ## @return a string
            ## 
            def logon_ip
                return @logon_ip
            end
            ## 
            ## Sets the logonIp property value. IP Address the sign-in request originated from.
            ## @param value Value to set for the logon_ip property.
            ## @return a void
            ## 
            def logon_ip=(value)
                @logon_ip = value
            end
            ## 
            ## Gets the logonLocation property value. Location (by IP address mapping) associated with a user sign-in event by this user.
            ## @return a string
            ## 
            def logon_location
                return @logon_location
            end
            ## 
            ## Sets the logonLocation property value. Location (by IP address mapping) associated with a user sign-in event by this user.
            ## @param value Value to set for the logon_location property.
            ## @return a void
            ## 
            def logon_location=(value)
                @logon_location = value
            end
            ## 
            ## Gets the logonType property value. Method of user sign in. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.
            ## @return a logon_type
            ## 
            def logon_type
                return @logon_type
            end
            ## 
            ## Sets the logonType property value. Method of user sign in. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.
            ## @param value Value to set for the logon_type property.
            ## @return a void
            ## 
            def logon_type=(value)
                @logon_type = value
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
            ## Gets the onPremisesSecurityIdentifier property value. Active Directory (on-premises) Security Identifier (SID) of the user.
            ## @return a string
            ## 
            def on_premises_security_identifier
                return @on_premises_security_identifier
            end
            ## 
            ## Sets the onPremisesSecurityIdentifier property value. Active Directory (on-premises) Security Identifier (SID) of the user.
            ## @param value Value to set for the on_premises_security_identifier property.
            ## @return a void
            ## 
            def on_premises_security_identifier=(value)
                @on_premises_security_identifier = value
            end
            ## 
            ## Gets the riskScore property value. Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
            ## @return a string
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.
            ## @param value Value to set for the risk_score property.
            ## @return a void
            ## 
            def risk_score=(value)
                @risk_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("aadUserId", @aad_user_id)
                writer.write_string_value("accountName", @account_name)
                writer.write_string_value("domainName", @domain_name)
                writer.write_enum_value("emailRole", @email_role)
                writer.write_boolean_value("isVpn", @is_vpn)
                writer.write_date_time_value("logonDateTime", @logon_date_time)
                writer.write_string_value("logonId", @logon_id)
                writer.write_string_value("logonIp", @logon_ip)
                writer.write_string_value("logonLocation", @logon_location)
                writer.write_enum_value("logonType", @logon_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("onPremisesSecurityIdentifier", @on_premises_security_identifier)
                writer.write_string_value("riskScore", @risk_score)
                writer.write_enum_value("userAccountType", @user_account_type)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userAccountType property value. User account type (group membership), per Windows definition. Possible values are: unknown, standard, power, administrator.
            ## @return a user_account_security_type
            ## 
            def user_account_type
                return @user_account_type
            end
            ## 
            ## Sets the userAccountType property value. User account type (group membership), per Windows definition. Possible values are: unknown, standard, power, administrator.
            ## @param value Value to set for the user_account_type property.
            ## @return a void
            ## 
            def user_account_type=(value)
                @user_account_type = value
            end
            ## 
            ## Gets the userPrincipalName property value. User sign-in name - internet format: (user account name)@(user account DNS domain name).
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User sign-in name - internet format: (user account name)@(user account DNS domain name).
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
