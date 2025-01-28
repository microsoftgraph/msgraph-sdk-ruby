require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MultiTenantOrganizationIdentitySyncPolicyTemplate < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The templateApplicationLevel property
            @template_application_level
            ## 
            # Defines whether users can be synchronized from the partner tenant.
            @user_sync_inbound
            ## 
            ## Instantiates a new MultiTenantOrganizationIdentitySyncPolicyTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a multi_tenant_organization_identity_sync_policy_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MultiTenantOrganizationIdentitySyncPolicyTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "templateApplicationLevel" => lambda {|n| @template_application_level = n.get_enum_values(MicrosoftGraph::Models::TemplateApplicationLevel) },
                    "userSyncInbound" => lambda {|n| @user_sync_inbound = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantUserSyncInbound.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("templateApplicationLevel", @template_application_level)
                writer.write_object_value("userSyncInbound", @user_sync_inbound)
            end
            ## 
            ## Gets the templateApplicationLevel property value. The templateApplicationLevel property
            ## @return a template_application_level
            ## 
            def template_application_level
                return @template_application_level
            end
            ## 
            ## Sets the templateApplicationLevel property value. The templateApplicationLevel property
            ## @param value Value to set for the templateApplicationLevel property.
            ## @return a void
            ## 
            def template_application_level=(value)
                @template_application_level = value
            end
            ## 
            ## Gets the userSyncInbound property value. Defines whether users can be synchronized from the partner tenant.
            ## @return a cross_tenant_user_sync_inbound
            ## 
            def user_sync_inbound
                return @user_sync_inbound
            end
            ## 
            ## Sets the userSyncInbound property value. Defines whether users can be synchronized from the partner tenant.
            ## @param value Value to set for the userSyncInbound property.
            ## @return a void
            ## 
            def user_sync_inbound=(value)
                @user_sync_inbound = value
            end
        end
    end
end
