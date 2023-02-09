require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CrossTenantAccessPolicyConfigurationDefault < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines your default configuration for users from other organizations accessing your resources via Azure AD B2B collaboration.
            @b2b_collaboration_inbound
            ## 
            # Defines your default configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration.
            @b2b_collaboration_outbound
            ## 
            # Defines your default configuration for users from other organizations accessing your resources via Azure AD B2B direct connect.
            @b2b_direct_connect_inbound
            ## 
            # Defines your default configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect.
            @b2b_direct_connect_outbound
            ## 
            # Determines the default configuration for trusting other Conditional Access claims from external Azure AD organizations.
            @inbound_trust
            ## 
            # If true, the default configuration is set to the system default configuration. If false, the default settings have been customized.
            @is_service_default
            ## 
            ## Gets the b2bCollaborationInbound property value. Defines your default configuration for users from other organizations accessing your resources via Azure AD B2B collaboration.
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_collaboration_inbound
                return @b2b_collaboration_inbound
            end
            ## 
            ## Sets the b2bCollaborationInbound property value. Defines your default configuration for users from other organizations accessing your resources via Azure AD B2B collaboration.
            ## @param value Value to set for the b2b_collaboration_inbound property.
            ## @return a void
            ## 
            def b2b_collaboration_inbound=(value)
                @b2b_collaboration_inbound = value
            end
            ## 
            ## Gets the b2bCollaborationOutbound property value. Defines your default configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration.
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_collaboration_outbound
                return @b2b_collaboration_outbound
            end
            ## 
            ## Sets the b2bCollaborationOutbound property value. Defines your default configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B collaboration.
            ## @param value Value to set for the b2b_collaboration_outbound property.
            ## @return a void
            ## 
            def b2b_collaboration_outbound=(value)
                @b2b_collaboration_outbound = value
            end
            ## 
            ## Gets the b2bDirectConnectInbound property value. Defines your default configuration for users from other organizations accessing your resources via Azure AD B2B direct connect.
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_direct_connect_inbound
                return @b2b_direct_connect_inbound
            end
            ## 
            ## Sets the b2bDirectConnectInbound property value. Defines your default configuration for users from other organizations accessing your resources via Azure AD B2B direct connect.
            ## @param value Value to set for the b2b_direct_connect_inbound property.
            ## @return a void
            ## 
            def b2b_direct_connect_inbound=(value)
                @b2b_direct_connect_inbound = value
            end
            ## 
            ## Gets the b2bDirectConnectOutbound property value. Defines your default configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect.
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_direct_connect_outbound
                return @b2b_direct_connect_outbound
            end
            ## 
            ## Sets the b2bDirectConnectOutbound property value. Defines your default configuration for users in your organization going outbound to access resources in another organization via Azure AD B2B direct connect.
            ## @param value Value to set for the b2b_direct_connect_outbound property.
            ## @return a void
            ## 
            def b2b_direct_connect_outbound=(value)
                @b2b_direct_connect_outbound = value
            end
            ## 
            ## Instantiates a new crossTenantAccessPolicyConfigurationDefault and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a cross_tenant_access_policy_configuration_default
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CrossTenantAccessPolicyConfigurationDefault.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "b2bCollaborationInbound" => lambda {|n| @b2b_collaboration_inbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bCollaborationOutbound" => lambda {|n| @b2b_collaboration_outbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bDirectConnectInbound" => lambda {|n| @b2b_direct_connect_inbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bDirectConnectOutbound" => lambda {|n| @b2b_direct_connect_outbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "inboundTrust" => lambda {|n| @inbound_trust = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyInboundTrust.create_from_discriminator_value(pn) }) },
                    "isServiceDefault" => lambda {|n| @is_service_default = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the inboundTrust property value. Determines the default configuration for trusting other Conditional Access claims from external Azure AD organizations.
            ## @return a cross_tenant_access_policy_inbound_trust
            ## 
            def inbound_trust
                return @inbound_trust
            end
            ## 
            ## Sets the inboundTrust property value. Determines the default configuration for trusting other Conditional Access claims from external Azure AD organizations.
            ## @param value Value to set for the inbound_trust property.
            ## @return a void
            ## 
            def inbound_trust=(value)
                @inbound_trust = value
            end
            ## 
            ## Gets the isServiceDefault property value. If true, the default configuration is set to the system default configuration. If false, the default settings have been customized.
            ## @return a boolean
            ## 
            def is_service_default
                return @is_service_default
            end
            ## 
            ## Sets the isServiceDefault property value. If true, the default configuration is set to the system default configuration. If false, the default settings have been customized.
            ## @param value Value to set for the is_service_default property.
            ## @return a void
            ## 
            def is_service_default=(value)
                @is_service_default = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("b2bCollaborationInbound", @b2b_collaboration_inbound)
                writer.write_object_value("b2bCollaborationOutbound", @b2b_collaboration_outbound)
                writer.write_object_value("b2bDirectConnectInbound", @b2b_direct_connect_inbound)
                writer.write_object_value("b2bDirectConnectOutbound", @b2b_direct_connect_outbound)
                writer.write_object_value("inboundTrust", @inbound_trust)
                writer.write_boolean_value("isServiceDefault", @is_service_default)
            end
        end
    end
end
