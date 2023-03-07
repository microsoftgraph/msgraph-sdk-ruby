require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/drive_recipient'
require_relative '../../../../drives'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './invite'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Invite
                        class InvitePostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The expirationDateTime property
                            @expiration_date_time
                            ## 
                            # The message property
                            @message
                            ## 
                            # The password property
                            @password
                            ## 
                            # The recipients property
                            @recipients
                            ## 
                            # The requireSignIn property
                            @require_sign_in
                            ## 
                            # The retainInheritedPermissions property
                            @retain_inherited_permissions
                            ## 
                            # The roles property
                            @roles
                            ## 
                            # The sendInvitation property
                            @send_invitation
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
                            ## Instantiates a new invitePostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a invite_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return InvitePostRequestBody.new
                            end
                            ## 
                            ## Gets the expirationDateTime property value. The expirationDateTime property
                            ## @return a string
                            ## 
                            def expiration_date_time
                                return @expiration_date_time
                            end
                            ## 
                            ## Sets the expirationDateTime property value. The expirationDateTime property
                            ## @param value Value to set for the expiration_date_time property.
                            ## @return a void
                            ## 
                            def expiration_date_time=(value)
                                @expiration_date_time = value
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_string_value() },
                                    "message" => lambda {|n| @message = n.get_string_value() },
                                    "password" => lambda {|n| @password = n.get_string_value() },
                                    "recipients" => lambda {|n| @recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveRecipient.create_from_discriminator_value(pn) }) },
                                    "requireSignIn" => lambda {|n| @require_sign_in = n.get_boolean_value() },
                                    "retainInheritedPermissions" => lambda {|n| @retain_inherited_permissions = n.get_boolean_value() },
                                    "roles" => lambda {|n| @roles = n.get_collection_of_primitive_values(String) },
                                    "sendInvitation" => lambda {|n| @send_invitation = n.get_boolean_value() },
                                }
                            end
                            ## 
                            ## Gets the message property value. The message property
                            ## @return a string
                            ## 
                            def message
                                return @message
                            end
                            ## 
                            ## Sets the message property value. The message property
                            ## @param value Value to set for the message property.
                            ## @return a void
                            ## 
                            def message=(value)
                                @message = value
                            end
                            ## 
                            ## Gets the password property value. The password property
                            ## @return a string
                            ## 
                            def password
                                return @password
                            end
                            ## 
                            ## Sets the password property value. The password property
                            ## @param value Value to set for the password property.
                            ## @return a void
                            ## 
                            def password=(value)
                                @password = value
                            end
                            ## 
                            ## Gets the recipients property value. The recipients property
                            ## @return a drive_recipient
                            ## 
                            def recipients
                                return @recipients
                            end
                            ## 
                            ## Sets the recipients property value. The recipients property
                            ## @param value Value to set for the recipients property.
                            ## @return a void
                            ## 
                            def recipients=(value)
                                @recipients = value
                            end
                            ## 
                            ## Gets the requireSignIn property value. The requireSignIn property
                            ## @return a boolean
                            ## 
                            def require_sign_in
                                return @require_sign_in
                            end
                            ## 
                            ## Sets the requireSignIn property value. The requireSignIn property
                            ## @param value Value to set for the require_sign_in property.
                            ## @return a void
                            ## 
                            def require_sign_in=(value)
                                @require_sign_in = value
                            end
                            ## 
                            ## Gets the retainInheritedPermissions property value. The retainInheritedPermissions property
                            ## @return a boolean
                            ## 
                            def retain_inherited_permissions
                                return @retain_inherited_permissions
                            end
                            ## 
                            ## Sets the retainInheritedPermissions property value. The retainInheritedPermissions property
                            ## @param value Value to set for the retain_inherited_permissions property.
                            ## @return a void
                            ## 
                            def retain_inherited_permissions=(value)
                                @retain_inherited_permissions = value
                            end
                            ## 
                            ## Gets the roles property value. The roles property
                            ## @return a string
                            ## 
                            def roles
                                return @roles
                            end
                            ## 
                            ## Sets the roles property value. The roles property
                            ## @param value Value to set for the roles property.
                            ## @return a void
                            ## 
                            def roles=(value)
                                @roles = value
                            end
                            ## 
                            ## Gets the sendInvitation property value. The sendInvitation property
                            ## @return a boolean
                            ## 
                            def send_invitation
                                return @send_invitation
                            end
                            ## 
                            ## Sets the sendInvitation property value. The sendInvitation property
                            ## @param value Value to set for the send_invitation property.
                            ## @return a void
                            ## 
                            def send_invitation=(value)
                                @send_invitation = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("expirationDateTime", @expiration_date_time)
                                writer.write_string_value("message", @message)
                                writer.write_string_value("password", @password)
                                writer.write_collection_of_object_values("recipients", @recipients)
                                writer.write_boolean_value("requireSignIn", @require_sign_in)
                                writer.write_boolean_value("retainInheritedPermissions", @retain_inherited_permissions)
                                writer.write_collection_of_primitive_values("roles", @roles)
                                writer.write_boolean_value("sendInvitation", @send_invitation)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
