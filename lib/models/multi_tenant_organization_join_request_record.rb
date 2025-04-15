require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MultiTenantOrganizationJoinRequestRecord < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Tenant ID of the Microsoft Entra tenant that added a tenant to the multitenant organization. To reset a failed join request, set addedByTenantId to 00000000-0000-0000-0000-000000000000. Required.
            @added_by_tenant_id
            ## 
            # State of the tenant in the multitenant organization. The possible values are: pending, active, removed, unknownFutureValue. Tenants in the pending state must join the multitenant organization to participate in the multitenant organization. Tenants in the active state can participate in the multitenant organization. Tenants in the removed state are in the process of being removed from the multitenant organization. Read-only.
            @member_state
            ## 
            # Role of the tenant in the multitenant organization. The possible values are: owner, member (default), unknownFutureValue. Tenants with the owner role can manage the multitenant organization. There can be multiple tenants with the owner role in a multitenant organization. Tenants with the member role can participate in a multitenant organization.
            @role
            ## 
            # Details of the processing status for a tenant joining a multitenant organization. Read-only.
            @transition_details
            ## 
            ## Gets the addedByTenantId property value. Tenant ID of the Microsoft Entra tenant that added a tenant to the multitenant organization. To reset a failed join request, set addedByTenantId to 00000000-0000-0000-0000-000000000000. Required.
            ## @return a string
            ## 
            def added_by_tenant_id
                return @added_by_tenant_id
            end
            ## 
            ## Sets the addedByTenantId property value. Tenant ID of the Microsoft Entra tenant that added a tenant to the multitenant organization. To reset a failed join request, set addedByTenantId to 00000000-0000-0000-0000-000000000000. Required.
            ## @param value Value to set for the addedByTenantId property.
            ## @return a void
            ## 
            def added_by_tenant_id=(value)
                @added_by_tenant_id = value
            end
            ## 
            ## Instantiates a new MultiTenantOrganizationJoinRequestRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a multi_tenant_organization_join_request_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MultiTenantOrganizationJoinRequestRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "addedByTenantId" => lambda {|n| @added_by_tenant_id = n.get_string_value() },
                    "memberState" => lambda {|n| @member_state = n.get_enum_value(MicrosoftGraph::Models::MultiTenantOrganizationMemberState) },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraph::Models::MultiTenantOrganizationMemberRole) },
                    "transitionDetails" => lambda {|n| @transition_details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MultiTenantOrganizationJoinRequestTransitionDetails.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the memberState property value. State of the tenant in the multitenant organization. The possible values are: pending, active, removed, unknownFutureValue. Tenants in the pending state must join the multitenant organization to participate in the multitenant organization. Tenants in the active state can participate in the multitenant organization. Tenants in the removed state are in the process of being removed from the multitenant organization. Read-only.
            ## @return a multi_tenant_organization_member_state
            ## 
            def member_state
                return @member_state
            end
            ## 
            ## Sets the memberState property value. State of the tenant in the multitenant organization. The possible values are: pending, active, removed, unknownFutureValue. Tenants in the pending state must join the multitenant organization to participate in the multitenant organization. Tenants in the active state can participate in the multitenant organization. Tenants in the removed state are in the process of being removed from the multitenant organization. Read-only.
            ## @param value Value to set for the memberState property.
            ## @return a void
            ## 
            def member_state=(value)
                @member_state = value
            end
            ## 
            ## Gets the role property value. Role of the tenant in the multitenant organization. The possible values are: owner, member (default), unknownFutureValue. Tenants with the owner role can manage the multitenant organization. There can be multiple tenants with the owner role in a multitenant organization. Tenants with the member role can participate in a multitenant organization.
            ## @return a multi_tenant_organization_member_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. Role of the tenant in the multitenant organization. The possible values are: owner, member (default), unknownFutureValue. Tenants with the owner role can manage the multitenant organization. There can be multiple tenants with the owner role in a multitenant organization. Tenants with the member role can participate in a multitenant organization.
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("addedByTenantId", @added_by_tenant_id)
                writer.write_enum_value("memberState", @member_state)
                writer.write_enum_value("role", @role)
                writer.write_object_value("transitionDetails", @transition_details)
            end
            ## 
            ## Gets the transitionDetails property value. Details of the processing status for a tenant joining a multitenant organization. Read-only.
            ## @return a multi_tenant_organization_join_request_transition_details
            ## 
            def transition_details
                return @transition_details
            end
            ## 
            ## Sets the transitionDetails property value. Details of the processing status for a tenant joining a multitenant organization. Read-only.
            ## @param value Value to set for the transitionDetails property.
            ## @return a void
            ## 
            def transition_details=(value)
                @transition_details = value
            end
        end
    end
end
