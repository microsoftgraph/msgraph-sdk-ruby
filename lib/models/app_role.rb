require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppRole
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies whether this app role can be assigned to users and groups (by setting to ['User']), to other application's (by setting to ['Application'], or both (by setting to ['User', 'Application']). App roles supporting assignment to other applications' service principals are also known as application permissions. The 'Application' value is only supported for app roles defined on application entities.
            @allowed_member_types
            ## 
            # The description for the app role. This is displayed when the app role is being assigned and, if the app role functions as an application permission, during  consent experiences.
            @description
            ## 
            # Display name for the permission that appears in the app role assignment and consent experiences.
            @display_name
            ## 
            # Unique role identifier inside the appRoles collection. When creating a new app role, a new GUID identifier must be provided.
            @id
            ## 
            # When creating or updating an app role, this must be set to true (which is the default). To delete a role, this must first be set to false.  At that point, in a subsequent call, this role may be removed.
            @is_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies if the app role is defined on the application object or on the servicePrincipal entity. Must not be included in any POST or PATCH requests. Read-only.
            @origin
            ## 
            # Specifies the value to include in the roles claim in ID tokens and access tokens authenticating an assigned user or service principal. Must not exceed 120 characters in length. Allowed characters are : ! # $ % & ' ( ) * + , - . / : ;  =  ? @ [ ] ^ + _  {  } ~, as well as characters in the ranges 0-9, A-Z and a-z. Any other character, including the space character, are not allowed. May not begin with ..
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
            ## Gets the allowedMemberTypes property value. Specifies whether this app role can be assigned to users and groups (by setting to ['User']), to other application's (by setting to ['Application'], or both (by setting to ['User', 'Application']). App roles supporting assignment to other applications' service principals are also known as application permissions. The 'Application' value is only supported for app roles defined on application entities.
            ## @return a string
            ## 
            def allowed_member_types
                return @allowed_member_types
            end
            ## 
            ## Sets the allowedMemberTypes property value. Specifies whether this app role can be assigned to users and groups (by setting to ['User']), to other application's (by setting to ['Application'], or both (by setting to ['User', 'Application']). App roles supporting assignment to other applications' service principals are also known as application permissions. The 'Application' value is only supported for app roles defined on application entities.
            ## @param value Value to set for the allowed_member_types property.
            ## @return a void
            ## 
            def allowed_member_types=(value)
                @allowed_member_types = value
            end
            ## 
            ## Instantiates a new appRole and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a app_role
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppRole.new
            end
            ## 
            ## Gets the description property value. The description for the app role. This is displayed when the app role is being assigned and, if the app role functions as an application permission, during  consent experiences.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for the app role. This is displayed when the app role is being assigned and, if the app role functions as an application permission, during  consent experiences.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name for the permission that appears in the app role assignment and consent experiences.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for the permission that appears in the app role assignment and consent experiences.
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
                return {
                    "allowedMemberTypes" => lambda {|n| @allowed_member_types = n.get_collection_of_primitive_values(String) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "origin" => lambda {|n| @origin = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Unique role identifier inside the appRoles collection. When creating a new app role, a new GUID identifier must be provided.
            ## @return a guid
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Unique role identifier inside the appRoles collection. When creating a new app role, a new GUID identifier must be provided.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the isEnabled property value. When creating or updating an app role, this must be set to true (which is the default). To delete a role, this must first be set to false.  At that point, in a subsequent call, this role may be removed.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. When creating or updating an app role, this must be set to true (which is the default). To delete a role, this must first be set to false.  At that point, in a subsequent call, this role may be removed.
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
            ## Gets the origin property value. Specifies if the app role is defined on the application object or on the servicePrincipal entity. Must not be included in any POST or PATCH requests. Read-only.
            ## @return a string
            ## 
            def origin
                return @origin
            end
            ## 
            ## Sets the origin property value. Specifies if the app role is defined on the application object or on the servicePrincipal entity. Must not be included in any POST or PATCH requests. Read-only.
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
                writer.write_collection_of_primitive_values("allowedMemberTypes", @allowed_member_types)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_guid_value("id", @id)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("origin", @origin)
                writer.write_string_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the value property value. Specifies the value to include in the roles claim in ID tokens and access tokens authenticating an assigned user or service principal. Must not exceed 120 characters in length. Allowed characters are : ! # $ % & ' ( ) * + , - . / : ;  =  ? @ [ ] ^ + _  {  } ~, as well as characters in the ranges 0-9, A-Z and a-z. Any other character, including the space character, are not allowed. May not begin with ..
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Specifies the value to include in the roles claim in ID tokens and access tokens authenticating an assigned user or service principal. Must not exceed 120 characters in length. Allowed characters are : ! # $ % & ' ( ) * + , - . / : ;  =  ? @ [ ] ^ + _  {  } ~, as well as characters in the ranges 0-9, A-Z and a-z. Any other character, including the space character, are not allowed. May not begin with ..
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
