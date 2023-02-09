require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentitySecurityDefaultsEnforcementPolicy < MicrosoftGraph::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If set to true, Azure Active Directory security defaults is enabled for the tenant.
            @is_enabled
            ## 
            ## Instantiates a new IdentitySecurityDefaultsEnforcementPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.identitySecurityDefaultsEnforcementPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_security_defaults_enforcement_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentitySecurityDefaultsEnforcementPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isEnabled property value. If set to true, Azure Active Directory security defaults is enabled for the tenant.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. If set to true, Azure Active Directory security defaults is enabled for the tenant.
            ## @param value Value to set for the is_enabled property.
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
                writer.write_boolean_value("isEnabled", @is_enabled)
            end
        end
    end
end
