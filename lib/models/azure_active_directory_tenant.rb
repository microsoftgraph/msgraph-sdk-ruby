require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AzureActiveDirectoryTenant < MicrosoftGraph::Models::IdentitySource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the Azure Active Directory tenant. Read only.
            @display_name
            ## 
            # The ID of the Azure Active Directory tenant. Read only.
            @tenant_id
            ## 
            ## Instantiates a new AzureActiveDirectoryTenant and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.azureActiveDirectoryTenant"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a azure_active_directory_tenant
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureActiveDirectoryTenant.new
            end
            ## 
            ## Gets the displayName property value. The name of the Azure Active Directory tenant. Read only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the Azure Active Directory tenant. Read only.
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
                writer.write_string_value("tenantId", @tenant_id)
            end
            ## 
            ## Gets the tenantId property value. The ID of the Azure Active Directory tenant. Read only.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The ID of the Azure Active Directory tenant. Read only.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
