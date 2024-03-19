require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcAuditActor
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The applicationDisplayName property
            @application_display_name
            ## 
            # The applicationId property
            @application_id
            ## 
            # The ipAddress property
            @ip_address
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The remoteTenantId property
            @remote_tenant_id
            ## 
            # The remoteUserId property
            @remote_user_id
            ## 
            # The servicePrincipalName property
            @service_principal_name
            ## 
            # The userId property
            @user_id
            ## 
            # The userPermissions property
            @user_permissions
            ## 
            # The userPrincipalName property
            @user_principal_name
            ## 
            # The userRoleScopeTags property
            @user_role_scope_tags
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the applicationDisplayName property value. The applicationDisplayName property
            ## @return a string
            ## 
            def application_display_name
                return @application_display_name
            end
            ## 
            ## Sets the applicationDisplayName property value. The applicationDisplayName property
            ## @param value Value to set for the applicationDisplayName property.
            ## @return a void
            ## 
            def application_display_name=(value)
                @application_display_name = value
            end
            ## 
            ## Gets the applicationId property value. The applicationId property
            ## @return a string
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. The applicationId property
            ## @param value Value to set for the applicationId property.
            ## @return a void
            ## 
            def application_id=(value)
                @application_id = value
            end
            ## 
            ## Instantiates a new CloudPcAuditActor and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_audit_actor
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcAuditActor.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicationDisplayName" => lambda {|n| @application_display_name = n.get_string_value() },
                    "applicationId" => lambda {|n| @application_id = n.get_string_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "remoteTenantId" => lambda {|n| @remote_tenant_id = n.get_string_value() },
                    "remoteUserId" => lambda {|n| @remote_user_id = n.get_string_value() },
                    "servicePrincipalName" => lambda {|n| @service_principal_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPermissions" => lambda {|n| @user_permissions = n.get_collection_of_primitive_values(String) },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userRoleScopeTags" => lambda {|n| @user_role_scope_tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcUserRoleScopeTagInfo.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the ipAddress property value. The ipAddress property
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The ipAddress property
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
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
            ## Gets the remoteTenantId property value. The remoteTenantId property
            ## @return a string
            ## 
            def remote_tenant_id
                return @remote_tenant_id
            end
            ## 
            ## Sets the remoteTenantId property value. The remoteTenantId property
            ## @param value Value to set for the remoteTenantId property.
            ## @return a void
            ## 
            def remote_tenant_id=(value)
                @remote_tenant_id = value
            end
            ## 
            ## Gets the remoteUserId property value. The remoteUserId property
            ## @return a string
            ## 
            def remote_user_id
                return @remote_user_id
            end
            ## 
            ## Sets the remoteUserId property value. The remoteUserId property
            ## @param value Value to set for the remoteUserId property.
            ## @return a void
            ## 
            def remote_user_id=(value)
                @remote_user_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("applicationDisplayName", @application_display_name)
                writer.write_string_value("applicationId", @application_id)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("remoteTenantId", @remote_tenant_id)
                writer.write_string_value("remoteUserId", @remote_user_id)
                writer.write_string_value("servicePrincipalName", @service_principal_name)
                writer.write_string_value("userId", @user_id)
                writer.write_collection_of_primitive_values("userPermissions", @user_permissions)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_collection_of_object_values("userRoleScopeTags", @user_role_scope_tags)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the servicePrincipalName property value. The servicePrincipalName property
            ## @return a string
            ## 
            def service_principal_name
                return @service_principal_name
            end
            ## 
            ## Sets the servicePrincipalName property value. The servicePrincipalName property
            ## @param value Value to set for the servicePrincipalName property.
            ## @return a void
            ## 
            def service_principal_name=(value)
                @service_principal_name = value
            end
            ## 
            ## Gets the userId property value. The userId property
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The userId property
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPermissions property value. The userPermissions property
            ## @return a string
            ## 
            def user_permissions
                return @user_permissions
            end
            ## 
            ## Sets the userPermissions property value. The userPermissions property
            ## @param value Value to set for the userPermissions property.
            ## @return a void
            ## 
            def user_permissions=(value)
                @user_permissions = value
            end
            ## 
            ## Gets the userPrincipalName property value. The userPrincipalName property
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The userPrincipalName property
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userRoleScopeTags property value. The userRoleScopeTags property
            ## @return a cloud_pc_user_role_scope_tag_info
            ## 
            def user_role_scope_tags
                return @user_role_scope_tags
            end
            ## 
            ## Sets the userRoleScopeTags property value. The userRoleScopeTags property
            ## @param value Value to set for the userRoleScopeTags property.
            ## @return a void
            ## 
            def user_role_scope_tags=(value)
                @user_role_scope_tags = value
            end
        end
    end
end
