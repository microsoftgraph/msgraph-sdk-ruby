require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DelegatedAdminCustomer < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Azure AD display name of the customer tenant. Read-only. Supports $orderBy.
            @display_name
            ## 
            # Contains the management details of a service in the customer tenant that's managed by delegated administration.
            @service_management_details
            ## 
            # The Azure AD-assigned tenant ID of the customer. Read-only.
            @tenant_id
            ## 
            ## Instantiates a new delegatedAdminCustomer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a delegated_admin_customer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DelegatedAdminCustomer.new
            end
            ## 
            ## Gets the displayName property value. The Azure AD display name of the customer tenant. Read-only. Supports $orderBy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The Azure AD display name of the customer tenant. Read-only. Supports $orderBy.
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
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "serviceManagementDetails" => lambda {|n| @service_management_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminServiceManagementDetail.create_from_discriminator_value(pn) }) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
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
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("serviceManagementDetails", @service_management_details)
                writer.write_string_value("tenantId", @tenant_id)
            end
            ## 
            ## Gets the serviceManagementDetails property value. Contains the management details of a service in the customer tenant that's managed by delegated administration.
            ## @return a delegated_admin_service_management_detail
            ## 
            def service_management_details
                return @service_management_details
            end
            ## 
            ## Sets the serviceManagementDetails property value. Contains the management details of a service in the customer tenant that's managed by delegated administration.
            ## @param value Value to set for the service_management_details property.
            ## @return a void
            ## 
            def service_management_details=(value)
                @service_management_details = value
            end
            ## 
            ## Gets the tenantId property value. The Azure AD-assigned tenant ID of the customer. Read-only.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The Azure AD-assigned tenant ID of the customer. Read-only.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
