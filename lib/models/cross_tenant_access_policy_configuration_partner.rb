require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CrossTenantAccessPolicyConfigurationPartner
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Determines the partner-specific configuration for automatic user consent settings. Unless specifically configured, the inboundAllowed and outboundAllowed properties are null and inherit from the default settings, which is always false.
            @automatic_user_consent_settings
            ## 
            # Defines your partner-specific configuration for users from other organizations accessing your resources via Azure AD B2B collaboration.
            @b2b_collaboration_inbound
            ## 
            # Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration.
            @b2b_collaboration_outbound
            ## 
            # Defines your partner-specific configuration for users from other organizations accessing your resources via Azure B2B direct connect.
            @b2b_direct_connect_inbound
            ## 
            # Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect.
            @b2b_direct_connect_outbound
            ## 
            # Defines the cross-tenant policy for the synchronization of users from a partner tenant. Use this user synchronization policy to streamline collaboration between users in a multi-tenant organization by automating the creation, update, and deletion of users from one tenant to another.
            @identity_synchronization
            ## 
            # Determines the partner-specific configuration for trusting other Conditional Access claims from external Azure AD organizations.
            @inbound_trust
            ## 
            # Identifies whether the partner-specific configuration is a Cloud Service Provider for your organization.
            @is_service_provider
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The tenant identifier for the partner Azure AD organization. Read-only. Key.
            @tenant_id
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
            ## Gets the automaticUserConsentSettings property value. Determines the partner-specific configuration for automatic user consent settings. Unless specifically configured, the inboundAllowed and outboundAllowed properties are null and inherit from the default settings, which is always false.
            ## @return a inbound_outbound_policy_configuration
            ## 
            def automatic_user_consent_settings
                return @automatic_user_consent_settings
            end
            ## 
            ## Sets the automaticUserConsentSettings property value. Determines the partner-specific configuration for automatic user consent settings. Unless specifically configured, the inboundAllowed and outboundAllowed properties are null and inherit from the default settings, which is always false.
            ## @param value Value to set for the automatic_user_consent_settings property.
            ## @return a void
            ## 
            def automatic_user_consent_settings=(value)
                @automatic_user_consent_settings = value
            end
            ## 
            ## Gets the b2bCollaborationInbound property value. Defines your partner-specific configuration for users from other organizations accessing your resources via Azure AD B2B collaboration.
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_collaboration_inbound
                return @b2b_collaboration_inbound
            end
            ## 
            ## Sets the b2bCollaborationInbound property value. Defines your partner-specific configuration for users from other organizations accessing your resources via Azure AD B2B collaboration.
            ## @param value Value to set for the b2b_collaboration_inbound property.
            ## @return a void
            ## 
            def b2b_collaboration_inbound=(value)
                @b2b_collaboration_inbound = value
            end
            ## 
            ## Gets the b2bCollaborationOutbound property value. Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration.
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_collaboration_outbound
                return @b2b_collaboration_outbound
            end
            ## 
            ## Sets the b2bCollaborationOutbound property value. Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration.
            ## @param value Value to set for the b2b_collaboration_outbound property.
            ## @return a void
            ## 
            def b2b_collaboration_outbound=(value)
                @b2b_collaboration_outbound = value
            end
            ## 
            ## Gets the b2bDirectConnectInbound property value. Defines your partner-specific configuration for users from other organizations accessing your resources via Azure B2B direct connect.
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_direct_connect_inbound
                return @b2b_direct_connect_inbound
            end
            ## 
            ## Sets the b2bDirectConnectInbound property value. Defines your partner-specific configuration for users from other organizations accessing your resources via Azure B2B direct connect.
            ## @param value Value to set for the b2b_direct_connect_inbound property.
            ## @return a void
            ## 
            def b2b_direct_connect_inbound=(value)
                @b2b_direct_connect_inbound = value
            end
            ## 
            ## Gets the b2bDirectConnectOutbound property value. Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect.
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_direct_connect_outbound
                return @b2b_direct_connect_outbound
            end
            ## 
            ## Sets the b2bDirectConnectOutbound property value. Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect.
            ## @param value Value to set for the b2b_direct_connect_outbound property.
            ## @return a void
            ## 
            def b2b_direct_connect_outbound=(value)
                @b2b_direct_connect_outbound = value
            end
            ## 
            ## Instantiates a new crossTenantAccessPolicyConfigurationPartner and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cross_tenant_access_policy_configuration_partner
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CrossTenantAccessPolicyConfigurationPartner.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "automaticUserConsentSettings" => lambda {|n| @automatic_user_consent_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::InboundOutboundPolicyConfiguration.create_from_discriminator_value(pn) }) },
                    "b2bCollaborationInbound" => lambda {|n| @b2b_collaboration_inbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bCollaborationOutbound" => lambda {|n| @b2b_collaboration_outbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bDirectConnectInbound" => lambda {|n| @b2b_direct_connect_inbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bDirectConnectOutbound" => lambda {|n| @b2b_direct_connect_outbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "identitySynchronization" => lambda {|n| @identity_synchronization = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantIdentitySyncPolicyPartner.create_from_discriminator_value(pn) }) },
                    "inboundTrust" => lambda {|n| @inbound_trust = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyInboundTrust.create_from_discriminator_value(pn) }) },
                    "isServiceProvider" => lambda {|n| @is_service_provider = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the identitySynchronization property value. Defines the cross-tenant policy for the synchronization of users from a partner tenant. Use this user synchronization policy to streamline collaboration between users in a multi-tenant organization by automating the creation, update, and deletion of users from one tenant to another.
            ## @return a cross_tenant_identity_sync_policy_partner
            ## 
            def identity_synchronization
                return @identity_synchronization
            end
            ## 
            ## Sets the identitySynchronization property value. Defines the cross-tenant policy for the synchronization of users from a partner tenant. Use this user synchronization policy to streamline collaboration between users in a multi-tenant organization by automating the creation, update, and deletion of users from one tenant to another.
            ## @param value Value to set for the identity_synchronization property.
            ## @return a void
            ## 
            def identity_synchronization=(value)
                @identity_synchronization = value
            end
            ## 
            ## Gets the inboundTrust property value. Determines the partner-specific configuration for trusting other Conditional Access claims from external Azure AD organizations.
            ## @return a cross_tenant_access_policy_inbound_trust
            ## 
            def inbound_trust
                return @inbound_trust
            end
            ## 
            ## Sets the inboundTrust property value. Determines the partner-specific configuration for trusting other Conditional Access claims from external Azure AD organizations.
            ## @param value Value to set for the inbound_trust property.
            ## @return a void
            ## 
            def inbound_trust=(value)
                @inbound_trust = value
            end
            ## 
            ## Gets the isServiceProvider property value. Identifies whether the partner-specific configuration is a Cloud Service Provider for your organization.
            ## @return a boolean
            ## 
            def is_service_provider
                return @is_service_provider
            end
            ## 
            ## Sets the isServiceProvider property value. Identifies whether the partner-specific configuration is a Cloud Service Provider for your organization.
            ## @param value Value to set for the is_service_provider property.
            ## @return a void
            ## 
            def is_service_provider=(value)
                @is_service_provider = value
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
                writer.write_object_value("automaticUserConsentSettings", @automatic_user_consent_settings)
                writer.write_object_value("b2bCollaborationInbound", @b2b_collaboration_inbound)
                writer.write_object_value("b2bCollaborationOutbound", @b2b_collaboration_outbound)
                writer.write_object_value("b2bDirectConnectInbound", @b2b_direct_connect_inbound)
                writer.write_object_value("b2bDirectConnectOutbound", @b2b_direct_connect_outbound)
                writer.write_object_value("identitySynchronization", @identity_synchronization)
                writer.write_object_value("inboundTrust", @inbound_trust)
                writer.write_boolean_value("isServiceProvider", @is_service_provider)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tenantId property value. The tenant identifier for the partner Azure AD organization. Read-only. Key.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenant identifier for the partner Azure AD organization. Read-only. Key.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
