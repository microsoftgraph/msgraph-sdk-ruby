require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class CrossCloudAzureActiveDirectoryTenant < MicrosoftGraph::Models::IdentitySource
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The cloudInstance property
        @cloud_instance
        ## 
        # The displayName property
        @display_name
        ## 
        # The tenantId property
        @tenant_id
        ## 
        ## Gets the cloudInstance property value. The cloudInstance property
        ## @return a string
        ## 
        def cloud_instance
            return @cloud_instance
        end
        ## 
        ## Sets the cloudInstance property value. The cloudInstance property
        ## @param value Value to set for the cloudInstance property.
        ## @return a void
        ## 
        def cloud_instance=(value)
            @cloud_instance = value
        end
        ## 
        ## Instantiates a new CrossCloudAzureActiveDirectoryTenant and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.crossCloudAzureActiveDirectoryTenant"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cross_cloud_azure_active_directory_tenant
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CrossCloudAzureActiveDirectoryTenant.new
        end
        ## 
        ## Gets the displayName property value. The displayName property
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The displayName property
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
                "cloudInstance" => lambda {|n| @cloud_instance = n.get_string_value() },
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
            writer.write_string_value("cloudInstance", @cloud_instance)
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("tenantId", @tenant_id)
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
