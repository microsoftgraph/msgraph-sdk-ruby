require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CrossTenantAccessPolicyTargetConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines whether access is allowed or blocked. The possible values are: allowed, blocked, unknownFutureValue.
            @access_type
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies whether to target users, groups, or applications with this rule.
            @targets
            ## 
            ## Gets the accessType property value. Defines whether access is allowed or blocked. The possible values are: allowed, blocked, unknownFutureValue.
            ## @return a cross_tenant_access_policy_target_configuration_access_type
            ## 
            def access_type
                return @access_type
            end
            ## 
            ## Sets the accessType property value. Defines whether access is allowed or blocked. The possible values are: allowed, blocked, unknownFutureValue.
            ## @param value Value to set for the access_type property.
            ## @return a void
            ## 
            def access_type=(value)
                @access_type = value
            end
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new crossTenantAccessPolicyTargetConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a cross_tenant_access_policy_target_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CrossTenantAccessPolicyTargetConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accessType" => lambda {|n| @access_type = n.get_enum_value(MicrosoftGraph::Models::CrossTenantAccessPolicyTargetConfigurationAccessType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "targets" => lambda {|n| @targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyTarget.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("accessType", @access_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("targets", @targets)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the targets property value. Specifies whether to target users, groups, or applications with this rule.
            ## @return a cross_tenant_access_policy_target
            ## 
            def targets
                return @targets
            end
            ## 
            ## Sets the targets property value. Specifies whether to target users, groups, or applications with this rule.
            ## @param value Value to set for the targets property.
            ## @return a void
            ## 
            def targets=(value)
                @targets = value
            end
        end
    end
end
