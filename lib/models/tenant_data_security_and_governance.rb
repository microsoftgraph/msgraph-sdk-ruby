require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TenantDataSecurityAndGovernance < MicrosoftGraph::Models::DataSecurityAndGovernance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The protectionScopes property
            @protection_scopes
            ## 
            ## Instantiates a new TenantDataSecurityAndGovernance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.tenantDataSecurityAndGovernance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a tenant_data_security_and_governance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TenantDataSecurityAndGovernance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "protectionScopes" => lambda {|n| @protection_scopes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TenantProtectionScopeContainer.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the protectionScopes property value. The protectionScopes property
            ## @return a tenant_protection_scope_container
            ## 
            def protection_scopes
                return @protection_scopes
            end
            ## 
            ## Sets the protectionScopes property value. The protectionScopes property
            ## @param value Value to set for the protectionScopes property.
            ## @return a void
            ## 
            def protection_scopes=(value)
                @protection_scopes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("protectionScopes", @protection_scopes)
            end
        end
    end
end
