require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Invitation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The URL the user can use to redeem their invitation. Read-only.
            @invite_redeem_url
            ## 
            # The URL the user should be redirected to once the invitation is redeemed. Required.
            @invite_redirect_url
            ## 
            # The user created as part of the invitation creation. Read-Only
            @invited_user
            ## 
            # The display name of the user being invited.
            @invited_user_display_name
            ## 
            # The email address of the user being invited. Required. The following special characters are not permitted in the email address:Tilde (~)Exclamation point (!)Number sign (#)Dollar sign ($)Percent (%)Circumflex (^)Ampersand (&)Asterisk (*)Parentheses (( ))Plus sign (+)Equal sign (=)Brackets ([ ])Braces ({ })Backslash (/)Slash mark (/)Pipe (/|)Semicolon (;)Colon (:)Quotation marks (')Angle brackets (< >)Question mark (?)Comma (,)However, the following exceptions apply:A period (.) or a hyphen (-) is permitted anywhere in the user name, except at the beginning or end of the name.An underscore (_) is permitted anywhere in the user name. This includes at the beginning or end of the name.
            @invited_user_email_address
            ## 
            # Additional configuration for the message being sent to the invited user, including customizing message text, language and cc recipient list.
            @invited_user_message_info
            ## 
            # The userType of the user being invited. By default, this is Guest. You can invite as Member if you are a company administrator.
            @invited_user_type
            ## 
            # Reset the user's redemption status and reinvite a user while retaining their user identifier, group memberships, and app assignments. This property allows you to enable a user to sign-in using a different email address from the one in the previous invitation. For more information about using this property, see Reset redemption status for a guest user.
            @reset_redemption
            ## 
            # Indicates whether an email should be sent to the user being invited. The default is false.
            @send_invitation_message
            ## 
            # The status of the invitation. Possible values are: PendingAcceptance, Completed, InProgress, and Error.
            @status
            ## 
            ## Instantiates a new Invitation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a invitation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Invitation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "inviteRedeemUrl" => lambda {|n| @invite_redeem_url = n.get_string_value() },
                    "inviteRedirectUrl" => lambda {|n| @invite_redirect_url = n.get_string_value() },
                    "invitedUser" => lambda {|n| @invited_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "invitedUserDisplayName" => lambda {|n| @invited_user_display_name = n.get_string_value() },
                    "invitedUserEmailAddress" => lambda {|n| @invited_user_email_address = n.get_string_value() },
                    "invitedUserMessageInfo" => lambda {|n| @invited_user_message_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::InvitedUserMessageInfo.create_from_discriminator_value(pn) }) },
                    "invitedUserType" => lambda {|n| @invited_user_type = n.get_string_value() },
                    "resetRedemption" => lambda {|n| @reset_redemption = n.get_boolean_value() },
                    "sendInvitationMessage" => lambda {|n| @send_invitation_message = n.get_boolean_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the inviteRedeemUrl property value. The URL the user can use to redeem their invitation. Read-only.
            ## @return a string
            ## 
            def invite_redeem_url
                return @invite_redeem_url
            end
            ## 
            ## Sets the inviteRedeemUrl property value. The URL the user can use to redeem their invitation. Read-only.
            ## @param value Value to set for the invite_redeem_url property.
            ## @return a void
            ## 
            def invite_redeem_url=(value)
                @invite_redeem_url = value
            end
            ## 
            ## Gets the inviteRedirectUrl property value. The URL the user should be redirected to once the invitation is redeemed. Required.
            ## @return a string
            ## 
            def invite_redirect_url
                return @invite_redirect_url
            end
            ## 
            ## Sets the inviteRedirectUrl property value. The URL the user should be redirected to once the invitation is redeemed. Required.
            ## @param value Value to set for the invite_redirect_url property.
            ## @return a void
            ## 
            def invite_redirect_url=(value)
                @invite_redirect_url = value
            end
            ## 
            ## Gets the invitedUser property value. The user created as part of the invitation creation. Read-Only
            ## @return a user
            ## 
            def invited_user
                return @invited_user
            end
            ## 
            ## Sets the invitedUser property value. The user created as part of the invitation creation. Read-Only
            ## @param value Value to set for the invited_user property.
            ## @return a void
            ## 
            def invited_user=(value)
                @invited_user = value
            end
            ## 
            ## Gets the invitedUserDisplayName property value. The display name of the user being invited.
            ## @return a string
            ## 
            def invited_user_display_name
                return @invited_user_display_name
            end
            ## 
            ## Sets the invitedUserDisplayName property value. The display name of the user being invited.
            ## @param value Value to set for the invited_user_display_name property.
            ## @return a void
            ## 
            def invited_user_display_name=(value)
                @invited_user_display_name = value
            end
            ## 
            ## Gets the invitedUserEmailAddress property value. The email address of the user being invited. Required. The following special characters are not permitted in the email address:Tilde (~)Exclamation point (!)Number sign (#)Dollar sign ($)Percent (%)Circumflex (^)Ampersand (&)Asterisk (*)Parentheses (( ))Plus sign (+)Equal sign (=)Brackets ([ ])Braces ({ })Backslash (/)Slash mark (/)Pipe (/|)Semicolon (;)Colon (:)Quotation marks (')Angle brackets (< >)Question mark (?)Comma (,)However, the following exceptions apply:A period (.) or a hyphen (-) is permitted anywhere in the user name, except at the beginning or end of the name.An underscore (_) is permitted anywhere in the user name. This includes at the beginning or end of the name.
            ## @return a string
            ## 
            def invited_user_email_address
                return @invited_user_email_address
            end
            ## 
            ## Sets the invitedUserEmailAddress property value. The email address of the user being invited. Required. The following special characters are not permitted in the email address:Tilde (~)Exclamation point (!)Number sign (#)Dollar sign ($)Percent (%)Circumflex (^)Ampersand (&)Asterisk (*)Parentheses (( ))Plus sign (+)Equal sign (=)Brackets ([ ])Braces ({ })Backslash (/)Slash mark (/)Pipe (/|)Semicolon (;)Colon (:)Quotation marks (')Angle brackets (< >)Question mark (?)Comma (,)However, the following exceptions apply:A period (.) or a hyphen (-) is permitted anywhere in the user name, except at the beginning or end of the name.An underscore (_) is permitted anywhere in the user name. This includes at the beginning or end of the name.
            ## @param value Value to set for the invited_user_email_address property.
            ## @return a void
            ## 
            def invited_user_email_address=(value)
                @invited_user_email_address = value
            end
            ## 
            ## Gets the invitedUserMessageInfo property value. Additional configuration for the message being sent to the invited user, including customizing message text, language and cc recipient list.
            ## @return a invited_user_message_info
            ## 
            def invited_user_message_info
                return @invited_user_message_info
            end
            ## 
            ## Sets the invitedUserMessageInfo property value. Additional configuration for the message being sent to the invited user, including customizing message text, language and cc recipient list.
            ## @param value Value to set for the invited_user_message_info property.
            ## @return a void
            ## 
            def invited_user_message_info=(value)
                @invited_user_message_info = value
            end
            ## 
            ## Gets the invitedUserType property value. The userType of the user being invited. By default, this is Guest. You can invite as Member if you are a company administrator.
            ## @return a string
            ## 
            def invited_user_type
                return @invited_user_type
            end
            ## 
            ## Sets the invitedUserType property value. The userType of the user being invited. By default, this is Guest. You can invite as Member if you are a company administrator.
            ## @param value Value to set for the invited_user_type property.
            ## @return a void
            ## 
            def invited_user_type=(value)
                @invited_user_type = value
            end
            ## 
            ## Gets the resetRedemption property value. Reset the user's redemption status and reinvite a user while retaining their user identifier, group memberships, and app assignments. This property allows you to enable a user to sign-in using a different email address from the one in the previous invitation. For more information about using this property, see Reset redemption status for a guest user.
            ## @return a boolean
            ## 
            def reset_redemption
                return @reset_redemption
            end
            ## 
            ## Sets the resetRedemption property value. Reset the user's redemption status and reinvite a user while retaining their user identifier, group memberships, and app assignments. This property allows you to enable a user to sign-in using a different email address from the one in the previous invitation. For more information about using this property, see Reset redemption status for a guest user.
            ## @param value Value to set for the reset_redemption property.
            ## @return a void
            ## 
            def reset_redemption=(value)
                @reset_redemption = value
            end
            ## 
            ## Gets the sendInvitationMessage property value. Indicates whether an email should be sent to the user being invited. The default is false.
            ## @return a boolean
            ## 
            def send_invitation_message
                return @send_invitation_message
            end
            ## 
            ## Sets the sendInvitationMessage property value. Indicates whether an email should be sent to the user being invited. The default is false.
            ## @param value Value to set for the send_invitation_message property.
            ## @return a void
            ## 
            def send_invitation_message=(value)
                @send_invitation_message = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("inviteRedeemUrl", @invite_redeem_url)
                writer.write_string_value("inviteRedirectUrl", @invite_redirect_url)
                writer.write_object_value("invitedUser", @invited_user)
                writer.write_string_value("invitedUserDisplayName", @invited_user_display_name)
                writer.write_string_value("invitedUserEmailAddress", @invited_user_email_address)
                writer.write_object_value("invitedUserMessageInfo", @invited_user_message_info)
                writer.write_string_value("invitedUserType", @invited_user_type)
                writer.write_boolean_value("resetRedemption", @reset_redemption)
                writer.write_boolean_value("sendInvitationMessage", @send_invitation_message)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the invitation. Possible values are: PendingAcceptance, Completed, InProgress, and Error.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the invitation. Possible values are: PendingAcceptance, Completed, InProgress, and Error.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
