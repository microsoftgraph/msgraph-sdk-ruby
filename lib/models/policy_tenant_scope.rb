require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PolicyTenantScope < MicrosoftGraph::Models::PolicyScopeBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the users and groups included in or excluded from this tenant-level policy scope.
            @policy_scope
            ## 
            ## Instantiates a new PolicyTenantScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.policyTenantScope"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a policy_tenant_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PolicyTenantScope.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "policyScope" => lambda {|n| @policy_scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PolicyBinding.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policyScope property value. Specifies the users and groups included in or excluded from this tenant-level policy scope.
            ## @return a policy_binding
            ## 
            def policy_scope
                return @policy_scope
            end
            ## 
            ## Sets the policyScope property value. Specifies the users and groups included in or excluded from this tenant-level policy scope.
            ## @param value Value to set for the policyScope property.
            ## @return a void
            ## 
            def policy_scope=(value)
                @policy_scope = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("policyScope", @policy_scope)
            end
        end
    end
end
