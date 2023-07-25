require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class UserAccount
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # The displayed name of the user account.
                @account_name
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The user object identifier in Azure Active Directory (Azure AD).
                @azure_ad_user_id
                ## 
                # The user display name in Azure AD.
                @display_name
                ## 
                # The name of the Active Directory domain of which the user is a member.
                @domain_name
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The user principal name of the account in Azure AD.
                @user_principal_name
                ## 
                # The local security identifier of the user account.
                @user_sid
                ## 
                ## Gets the accountName property value. The displayed name of the user account.
                ## @return a string
                ## 
                def account_name
                    return @account_name
                end
                ## 
                ## Sets the accountName property value. The displayed name of the user account.
                ## @param value Value to set for the accountName property.
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
                ## @param value Value to set for the additionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the azureAdUserId property value. The user object identifier in Azure Active Directory (Azure AD).
                ## @return a string
                ## 
                def azure_ad_user_id
                    return @azure_ad_user_id
                end
                ## 
                ## Sets the azureAdUserId property value. The user object identifier in Azure Active Directory (Azure AD).
                ## @param value Value to set for the azureAdUserId property.
                ## @return a void
                ## 
                def azure_ad_user_id=(value)
                    @azure_ad_user_id = value
                end
                ## 
                ## Instantiates a new userAccount and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a user_account
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UserAccount.new
                end
                ## 
                ## Gets the displayName property value. The user display name in Azure AD.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The user display name in Azure AD.
                ## @param value Value to set for the displayName property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## Gets the domainName property value. The name of the Active Directory domain of which the user is a member.
                ## @return a string
                ## 
                def domain_name
                    return @domain_name
                end
                ## 
                ## Sets the domainName property value. The name of the Active Directory domain of which the user is a member.
                ## @param value Value to set for the domainName property.
                ## @return a void
                ## 
                def domain_name=(value)
                    @domain_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "accountName" => lambda {|n| @account_name = n.get_string_value() },
                        "azureAdUserId" => lambda {|n| @azure_ad_user_id = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                        "userSid" => lambda {|n| @user_sid = n.get_string_value() },
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
                ## @param value Value to set for the @odata.type property.
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
                    writer.write_string_value("accountName", @account_name)
                    writer.write_string_value("azureAdUserId", @azure_ad_user_id)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("domainName", @domain_name)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("userPrincipalName", @user_principal_name)
                    writer.write_string_value("userSid", @user_sid)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the userPrincipalName property value. The user principal name of the account in Azure AD.
                ## @return a string
                ## 
                def user_principal_name
                    return @user_principal_name
                end
                ## 
                ## Sets the userPrincipalName property value. The user principal name of the account in Azure AD.
                ## @param value Value to set for the userPrincipalName property.
                ## @return a void
                ## 
                def user_principal_name=(value)
                    @user_principal_name = value
                end
                ## 
                ## Gets the userSid property value. The local security identifier of the user account.
                ## @return a string
                ## 
                def user_sid
                    return @user_sid
                end
                ## 
                ## Sets the userSid property value. The local security identifier of the user account.
                ## @param value Value to set for the userSid property.
                ## @return a void
                ## 
                def user_sid=(value)
                    @user_sid = value
                end
            end
        end
    end
end
