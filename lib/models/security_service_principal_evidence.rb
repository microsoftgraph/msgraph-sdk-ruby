require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityServicePrincipalEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appId property
            @app_id
            ## 
            # The appOwnerTenantId property
            @app_owner_tenant_id
            ## 
            # The servicePrincipalName property
            @service_principal_name
            ## 
            # The servicePrincipalObjectId property
            @service_principal_object_id
            ## 
            # The servicePrincipalType property
            @service_principal_type
            ## 
            # The tenantId property
            @tenant_id
            ## 
            ## Gets the appId property value. The appId property
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The appId property
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appOwnerTenantId property value. The appOwnerTenantId property
            ## @return a string
            ## 
            def app_owner_tenant_id
                return @app_owner_tenant_id
            end
            ## 
            ## Sets the appOwnerTenantId property value. The appOwnerTenantId property
            ## @param value Value to set for the appOwnerTenantId property.
            ## @return a void
            ## 
            def app_owner_tenant_id=(value)
                @app_owner_tenant_id = value
            end
            ## 
            ## Instantiates a new SecurityServicePrincipalEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.servicePrincipalEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_service_principal_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityServicePrincipalEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appOwnerTenantId" => lambda {|n| @app_owner_tenant_id = n.get_string_value() },
                    "servicePrincipalName" => lambda {|n| @service_principal_name = n.get_string_value() },
                    "servicePrincipalObjectId" => lambda {|n| @service_principal_object_id = n.get_string_value() },
                    "servicePrincipalType" => lambda {|n| @service_principal_type = n.get_enum_value(MicrosoftGraph::Models::SecurityServicePrincipalType) },
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
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("appOwnerTenantId", @app_owner_tenant_id)
                writer.write_string_value("servicePrincipalName", @service_principal_name)
                writer.write_string_value("servicePrincipalObjectId", @service_principal_object_id)
                writer.write_enum_value("servicePrincipalType", @service_principal_type)
                writer.write_string_value("tenantId", @tenant_id)
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
            ## Gets the servicePrincipalObjectId property value. The servicePrincipalObjectId property
            ## @return a string
            ## 
            def service_principal_object_id
                return @service_principal_object_id
            end
            ## 
            ## Sets the servicePrincipalObjectId property value. The servicePrincipalObjectId property
            ## @param value Value to set for the servicePrincipalObjectId property.
            ## @return a void
            ## 
            def service_principal_object_id=(value)
                @service_principal_object_id = value
            end
            ## 
            ## Gets the servicePrincipalType property value. The servicePrincipalType property
            ## @return a security_service_principal_type
            ## 
            def service_principal_type
                return @service_principal_type
            end
            ## 
            ## Sets the servicePrincipalType property value. The servicePrincipalType property
            ## @param value Value to set for the servicePrincipalType property.
            ## @return a void
            ## 
            def service_principal_type=(value)
                @service_principal_type = value
            end
            ## 
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
