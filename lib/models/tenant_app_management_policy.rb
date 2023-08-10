require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TenantAppManagementPolicy < MicrosoftGraph::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Restrictions that apply as default to all application objects in the tenant.
            @application_restrictions
            ## 
            # Denotes whether the policy is enabled. Default value is false.
            @is_enabled
            ## 
            # Restrictions that apply as default to all service principal objects in the tenant.
            @service_principal_restrictions
            ## 
            ## Gets the applicationRestrictions property value. Restrictions that apply as default to all application objects in the tenant.
            ## @return a app_management_configuration
            ## 
            def application_restrictions
                return @application_restrictions
            end
            ## 
            ## Sets the applicationRestrictions property value. Restrictions that apply as default to all application objects in the tenant.
            ## @param value Value to set for the applicationRestrictions property.
            ## @return a void
            ## 
            def application_restrictions=(value)
                @application_restrictions = value
            end
            ## 
            ## Instantiates a new tenantAppManagementPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.tenantAppManagementPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a tenant_app_management_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TenantAppManagementPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationRestrictions" => lambda {|n| @application_restrictions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppManagementConfiguration.create_from_discriminator_value(pn) }) },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "servicePrincipalRestrictions" => lambda {|n| @service_principal_restrictions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppManagementConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isEnabled property value. Denotes whether the policy is enabled. Default value is false.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Denotes whether the policy is enabled. Default value is false.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("applicationRestrictions", @application_restrictions)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_object_value("servicePrincipalRestrictions", @service_principal_restrictions)
            end
            ## 
            ## Gets the servicePrincipalRestrictions property value. Restrictions that apply as default to all service principal objects in the tenant.
            ## @return a app_management_configuration
            ## 
            def service_principal_restrictions
                return @service_principal_restrictions
            end
            ## 
            ## Sets the servicePrincipalRestrictions property value. Restrictions that apply as default to all service principal objects in the tenant.
            ## @param value Value to set for the servicePrincipalRestrictions property.
            ## @return a void
            ## 
            def service_principal_restrictions=(value)
                @service_principal_restrictions = value
            end
        end
    end
end
