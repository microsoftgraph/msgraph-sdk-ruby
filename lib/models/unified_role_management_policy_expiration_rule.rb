require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicyExpirationRule < MicrosoftGraph::Models::UnifiedRoleManagementPolicyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether expiration is required or if it's a permanently active assignment or eligibility.
            @is_expiration_required
            ## 
            # The maximum duration allowed for eligibility or assignment which is not permanent. Required when isExpirationRequired is true.
            @maximum_duration
            ## 
            ## Instantiates a new UnifiedRoleManagementPolicyExpirationRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy_expiration_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementPolicyExpirationRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isExpirationRequired" => lambda {|n| @is_expiration_required = n.get_boolean_value() },
                    "maximumDuration" => lambda {|n| @maximum_duration = n.get_duration_value() },
                })
            end
            ## 
            ## Gets the isExpirationRequired property value. Indicates whether expiration is required or if it's a permanently active assignment or eligibility.
            ## @return a boolean
            ## 
            def is_expiration_required
                return @is_expiration_required
            end
            ## 
            ## Sets the isExpirationRequired property value. Indicates whether expiration is required or if it's a permanently active assignment or eligibility.
            ## @param value Value to set for the is_expiration_required property.
            ## @return a void
            ## 
            def is_expiration_required=(value)
                @is_expiration_required = value
            end
            ## 
            ## Gets the maximumDuration property value. The maximum duration allowed for eligibility or assignment which is not permanent. Required when isExpirationRequired is true.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def maximum_duration
                return @maximum_duration
            end
            ## 
            ## Sets the maximumDuration property value. The maximum duration allowed for eligibility or assignment which is not permanent. Required when isExpirationRequired is true.
            ## @param value Value to set for the maximum_duration property.
            ## @return a void
            ## 
            def maximum_duration=(value)
                @maximum_duration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isExpirationRequired", @is_expiration_required)
                writer.write_duration_value("maximumDuration", @maximum_duration)
            end
        end
    end
end
