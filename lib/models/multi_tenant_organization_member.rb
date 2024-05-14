require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MultiTenantOrganizationMember < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Tenant ID of the tenant that added the tenant to the multitenant organization. Read-only.
            @added_by_tenant_id
            ## 
            # Date and time when the tenant was added to the multitenant organization. Read-only.
            @added_date_time
            ## 
            # Display name of the tenant added to the multitenant organization.
            @display_name
            ## 
            # Date and time when the tenant joined the multitenant organization. Read-only.
            @joined_date_time
            ## 
            # Role of the tenant in the multitenant organization. The possible values are: owner, member (default), unknownFutureValue. Tenants with the owner role can manage the multitenant organization but tenants with the member role can only participate in a multitenant organization. There can be multiple tenants with the owner role in a multitenant organization.
            @role
            ## 
            # State of the tenant in the multitenant organization. The possible values are: pending, active, removed, unknownFutureValue. Tenants in the pending state must join the multitenant organization to participate in the multitenant organization. Tenants in the active state can participate in the multitenant organization. Tenants in the removed state are in the process of being removed from the multitenant organization. Read-only.
            @state
            ## 
            # Tenant ID of the Microsoft Entra tenant added to the multitenant organization. Set at the time tenant is added.Supports $filter. Key.
            @tenant_id
            ## 
            # Details of the processing status for a tenant in a multitenant organization. Read-only. Nullable.
            @transition_details
            ## 
            ## Gets the addedByTenantId property value. Tenant ID of the tenant that added the tenant to the multitenant organization. Read-only.
            ## @return a guid
            ## 
            def added_by_tenant_id
                return @added_by_tenant_id
            end
            ## 
            ## Sets the addedByTenantId property value. Tenant ID of the tenant that added the tenant to the multitenant organization. Read-only.
            ## @param value Value to set for the addedByTenantId property.
            ## @return a void
            ## 
            def added_by_tenant_id=(value)
                @added_by_tenant_id = value
            end
            ## 
            ## Gets the addedDateTime property value. Date and time when the tenant was added to the multitenant organization. Read-only.
            ## @return a date_time
            ## 
            def added_date_time
                return @added_date_time
            end
            ## 
            ## Sets the addedDateTime property value. Date and time when the tenant was added to the multitenant organization. Read-only.
            ## @param value Value to set for the addedDateTime property.
            ## @return a void
            ## 
            def added_date_time=(value)
                @added_date_time = value
            end
            ## 
            ## Instantiates a new MultiTenantOrganizationMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.multiTenantOrganizationMember"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a multi_tenant_organization_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MultiTenantOrganizationMember.new
            end
            ## 
            ## Gets the displayName property value. Display name of the tenant added to the multitenant organization.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the tenant added to the multitenant organization.
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
                return super.merge({
                    "addedByTenantId" => lambda {|n| @added_by_tenant_id = n.get_guid_value() },
                    "addedDateTime" => lambda {|n| @added_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "joinedDateTime" => lambda {|n| @joined_date_time = n.get_date_time_value() },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraph::Models::MultiTenantOrganizationMemberRole) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::MultiTenantOrganizationMemberState) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "transitionDetails" => lambda {|n| @transition_details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MultiTenantOrganizationMemberTransitionDetails.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the joinedDateTime property value. Date and time when the tenant joined the multitenant organization. Read-only.
            ## @return a date_time
            ## 
            def joined_date_time
                return @joined_date_time
            end
            ## 
            ## Sets the joinedDateTime property value. Date and time when the tenant joined the multitenant organization. Read-only.
            ## @param value Value to set for the joinedDateTime property.
            ## @return a void
            ## 
            def joined_date_time=(value)
                @joined_date_time = value
            end
            ## 
            ## Gets the role property value. Role of the tenant in the multitenant organization. The possible values are: owner, member (default), unknownFutureValue. Tenants with the owner role can manage the multitenant organization but tenants with the member role can only participate in a multitenant organization. There can be multiple tenants with the owner role in a multitenant organization.
            ## @return a multi_tenant_organization_member_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. Role of the tenant in the multitenant organization. The possible values are: owner, member (default), unknownFutureValue. Tenants with the owner role can manage the multitenant organization but tenants with the member role can only participate in a multitenant organization. There can be multiple tenants with the owner role in a multitenant organization.
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
                writer.write_guid_value("addedByTenantId", @added_by_tenant_id)
                writer.write_date_time_value("addedDateTime", @added_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("joinedDateTime", @joined_date_time)
                writer.write_enum_value("role", @role)
                writer.write_enum_value("state", @state)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_object_value("transitionDetails", @transition_details)
            end
            ## 
            ## Gets the state property value. State of the tenant in the multitenant organization. The possible values are: pending, active, removed, unknownFutureValue. Tenants in the pending state must join the multitenant organization to participate in the multitenant organization. Tenants in the active state can participate in the multitenant organization. Tenants in the removed state are in the process of being removed from the multitenant organization. Read-only.
            ## @return a multi_tenant_organization_member_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. State of the tenant in the multitenant organization. The possible values are: pending, active, removed, unknownFutureValue. Tenants in the pending state must join the multitenant organization to participate in the multitenant organization. Tenants in the active state can participate in the multitenant organization. Tenants in the removed state are in the process of being removed from the multitenant organization. Read-only.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the tenantId property value. Tenant ID of the Microsoft Entra tenant added to the multitenant organization. Set at the time tenant is added.Supports $filter. Key.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. Tenant ID of the Microsoft Entra tenant added to the multitenant organization. Set at the time tenant is added.Supports $filter. Key.
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the transitionDetails property value. Details of the processing status for a tenant in a multitenant organization. Read-only. Nullable.
            ## @return a multi_tenant_organization_member_transition_details
            ## 
            def transition_details
                return @transition_details
            end
            ## 
            ## Sets the transitionDetails property value. Details of the processing status for a tenant in a multitenant organization. Read-only. Nullable.
            ## @param value Value to set for the transitionDetails property.
            ## @return a void
            ## 
            def transition_details=(value)
                @transition_details = value
            end
        end
    end
end
