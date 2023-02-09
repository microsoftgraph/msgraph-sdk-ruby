require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PermissionScope
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A description of the delegated permissions, intended to be read by an administrator granting the permission on behalf of all users. This text appears in tenant-wide admin consent experiences.
            @admin_consent_description
            ## 
            # The permission's title, intended to be read by an administrator granting the permission on behalf of all users.
            @admin_consent_display_name
            ## 
            # Unique delegated permission identifier inside the collection of delegated permissions defined for a resource application.
            @id
            ## 
            # When creating or updating a permission, this property must be set to true (which is the default). To delete a permission, this property must first be set to false.  At that point, in a subsequent call, the permission may be removed.
            @is_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The origin property
            @origin
            ## 
            # The possible values are: User and Admin. Specifies whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator consent should always be required. While Microsoft Graph defines the default consent requirement for each permission, the tenant administrator may override the behavior in their organization (by allowing, restricting, or limiting user consent to this delegated permission). For more information, see Configure how users consent to applications.
            @type
            ## 
            # A description of the delegated permissions, intended to be read by a user granting the permission on their own behalf. This text appears in consent experiences where the user is consenting only on behalf of themselves.
            @user_consent_description
            ## 
            # A title for the permission, intended to be read by a user granting the permission on their own behalf. This text appears in consent experiences where the user is consenting only on behalf of themselves.
            @user_consent_display_name
            ## 
            # Specifies the value to include in the scp (scope) claim in access tokens. Must not exceed 120 characters in length. Allowed characters are : ! # $ % & ' ( ) * + , - . / : ;  =  ? @ [ ] ^ + _  {  } ~, as well as characters in the ranges 0-9, A-Z and a-z. Any other character, including the space character, are not allowed. May not begin with ..
            @value
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
            ## Gets the adminConsentDescription property value. A description of the delegated permissions, intended to be read by an administrator granting the permission on behalf of all users. This text appears in tenant-wide admin consent experiences.
            ## @return a string
            ## 
            def admin_consent_description
                return @admin_consent_description
            end
            ## 
            ## Sets the adminConsentDescription property value. A description of the delegated permissions, intended to be read by an administrator granting the permission on behalf of all users. This text appears in tenant-wide admin consent experiences.
            ## @param value Value to set for the admin_consent_description property.
            ## @return a void
            ## 
            def admin_consent_description=(value)
                @admin_consent_description = value
            end
            ## 
            ## Gets the adminConsentDisplayName property value. The permission's title, intended to be read by an administrator granting the permission on behalf of all users.
            ## @return a string
            ## 
            def admin_consent_display_name
                return @admin_consent_display_name
            end
            ## 
            ## Sets the adminConsentDisplayName property value. The permission's title, intended to be read by an administrator granting the permission on behalf of all users.
            ## @param value Value to set for the admin_consent_display_name property.
            ## @return a void
            ## 
            def admin_consent_display_name=(value)
                @admin_consent_display_name = value
            end
            ## 
            ## Instantiates a new permissionScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a permission_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionScope.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "adminConsentDescription" => lambda {|n| @admin_consent_description = n.get_string_value() },
                    "adminConsentDisplayName" => lambda {|n| @admin_consent_display_name = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "origin" => lambda {|n| @origin = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "userConsentDescription" => lambda {|n| @user_consent_description = n.get_string_value() },
                    "userConsentDisplayName" => lambda {|n| @user_consent_display_name = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Unique delegated permission identifier inside the collection of delegated permissions defined for a resource application.
            ## @return a guid
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Unique delegated permission identifier inside the collection of delegated permissions defined for a resource application.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the isEnabled property value. When creating or updating a permission, this property must be set to true (which is the default). To delete a permission, this property must first be set to false.  At that point, in a subsequent call, the permission may be removed.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. When creating or updating a permission, this property must be set to true (which is the default). To delete a permission, this property must first be set to false.  At that point, in a subsequent call, the permission may be removed.
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
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
            ## Gets the origin property value. The origin property
            ## @return a string
            ## 
            def origin
                return @origin
            end
            ## 
            ## Sets the origin property value. The origin property
            ## @param value Value to set for the origin property.
            ## @return a void
            ## 
            def origin=(value)
                @origin = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("adminConsentDescription", @admin_consent_description)
                writer.write_string_value("adminConsentDisplayName", @admin_consent_display_name)
                writer.write_guid_value("id", @id)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("origin", @origin)
                writer.write_string_value("type", @type)
                writer.write_string_value("userConsentDescription", @user_consent_description)
                writer.write_string_value("userConsentDisplayName", @user_consent_display_name)
                writer.write_string_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. The possible values are: User and Admin. Specifies whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator consent should always be required. While Microsoft Graph defines the default consent requirement for each permission, the tenant administrator may override the behavior in their organization (by allowing, restricting, or limiting user consent to this delegated permission). For more information, see Configure how users consent to applications.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The possible values are: User and Admin. Specifies whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator consent should always be required. While Microsoft Graph defines the default consent requirement for each permission, the tenant administrator may override the behavior in their organization (by allowing, restricting, or limiting user consent to this delegated permission). For more information, see Configure how users consent to applications.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the userConsentDescription property value. A description of the delegated permissions, intended to be read by a user granting the permission on their own behalf. This text appears in consent experiences where the user is consenting only on behalf of themselves.
            ## @return a string
            ## 
            def user_consent_description
                return @user_consent_description
            end
            ## 
            ## Sets the userConsentDescription property value. A description of the delegated permissions, intended to be read by a user granting the permission on their own behalf. This text appears in consent experiences where the user is consenting only on behalf of themselves.
            ## @param value Value to set for the user_consent_description property.
            ## @return a void
            ## 
            def user_consent_description=(value)
                @user_consent_description = value
            end
            ## 
            ## Gets the userConsentDisplayName property value. A title for the permission, intended to be read by a user granting the permission on their own behalf. This text appears in consent experiences where the user is consenting only on behalf of themselves.
            ## @return a string
            ## 
            def user_consent_display_name
                return @user_consent_display_name
            end
            ## 
            ## Sets the userConsentDisplayName property value. A title for the permission, intended to be read by a user granting the permission on their own behalf. This text appears in consent experiences where the user is consenting only on behalf of themselves.
            ## @param value Value to set for the user_consent_display_name property.
            ## @return a void
            ## 
            def user_consent_display_name=(value)
                @user_consent_display_name = value
            end
            ## 
            ## Gets the value property value. Specifies the value to include in the scp (scope) claim in access tokens. Must not exceed 120 characters in length. Allowed characters are : ! # $ % & ' ( ) * + , - . / : ;  =  ? @ [ ] ^ + _  {  } ~, as well as characters in the ranges 0-9, A-Z and a-z. Any other character, including the space character, are not allowed. May not begin with ..
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Specifies the value to include in the scp (scope) claim in access tokens. Must not exceed 120 characters in length. Allowed characters are : ! # $ % & ' ( ) * + , - . / : ;  =  ? @ [ ] ^ + _  {  } ~, as well as characters in the ranges 0-9, A-Z and a-z. Any other character, including the space character, are not allowed. May not begin with ..
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
