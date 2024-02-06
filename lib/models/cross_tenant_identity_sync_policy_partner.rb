require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CrossTenantIdentitySyncPolicyPartner
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Display name for the cross-tenant user synchronization policy. Use the name of the partner Azure AD (Azure Active Directory) tenant to easily identify the policy. Optional.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Tenant identifier for the partner Azure AD organization. Read-only.
            @tenant_id
            ## 
            # Defines whether users can be synchronized from the partner tenant. Key.
            @user_sync_inbound
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
            ## Instantiates a new crossTenantIdentitySyncPolicyPartner and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cross_tenant_identity_sync_policy_partner
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CrossTenantIdentitySyncPolicyPartner.new
            end
            ## 
            ## Gets the displayName property value. Display name for the cross-tenant user synchronization policy. Use the name of the partner Azure AD (Azure Active Directory) tenant to easily identify the policy. Optional.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for the cross-tenant user synchronization policy. Use the name of the partner Azure AD (Azure Active Directory) tenant to easily identify the policy. Optional.
            ## @param value Value to set for the displayName property.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "userSyncInbound" => lambda {|n| @user_sync_inbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantUserSyncInbound.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("displayName", @display_name) unless @display_name.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_string_value("tenantId", @tenant_id) unless @tenant_id.nil?
                writer.write_object_value("userSyncInbound", @user_sync_inbound) unless @user_sync_inbound.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the tenantId property value. Tenant identifier for the partner Azure AD organization. Read-only.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. Tenant identifier for the partner Azure AD organization. Read-only.
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the userSyncInbound property value. Defines whether users can be synchronized from the partner tenant. Key.
            ## @return a cross_tenant_user_sync_inbound
            ## 
            def user_sync_inbound
                return @user_sync_inbound
            end
            ## 
            ## Sets the userSyncInbound property value. Defines whether users can be synchronized from the partner tenant. Key.
            ## @param value Value to set for the userSyncInbound property.
            ## @return a void
            ## 
            def user_sync_inbound=(value)
                @user_sync_inbound = value
            end
        end
    end
end
