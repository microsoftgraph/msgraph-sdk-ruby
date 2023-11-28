require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CrossTenantAccessPolicyInboundTrust
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies whether compliant devices from external Microsoft Entra organizations are trusted.
            @is_compliant_device_accepted
            ## 
            # Specifies whether Microsoft Entra hybrid joined devices from external Microsoft Entra organizations are trusted.
            @is_hybrid_azure_a_d_joined_device_accepted
            ## 
            # Specifies whether MFA from external Microsoft Entra organizations is trusted.
            @is_mfa_accepted
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new crossTenantAccessPolicyInboundTrust and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cross_tenant_access_policy_inbound_trust
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CrossTenantAccessPolicyInboundTrust.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isCompliantDeviceAccepted" => lambda {|n| @is_compliant_device_accepted = n.get_boolean_value() },
                    "isHybridAzureADJoinedDeviceAccepted" => lambda {|n| @is_hybrid_azure_a_d_joined_device_accepted = n.get_boolean_value() },
                    "isMfaAccepted" => lambda {|n| @is_mfa_accepted = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isCompliantDeviceAccepted property value. Specifies whether compliant devices from external Microsoft Entra organizations are trusted.
            ## @return a boolean
            ## 
            def is_compliant_device_accepted
                return @is_compliant_device_accepted
            end
            ## 
            ## Sets the isCompliantDeviceAccepted property value. Specifies whether compliant devices from external Microsoft Entra organizations are trusted.
            ## @param value Value to set for the isCompliantDeviceAccepted property.
            ## @return a void
            ## 
            def is_compliant_device_accepted=(value)
                @is_compliant_device_accepted = value
            end
            ## 
            ## Gets the isHybridAzureADJoinedDeviceAccepted property value. Specifies whether Microsoft Entra hybrid joined devices from external Microsoft Entra organizations are trusted.
            ## @return a boolean
            ## 
            def is_hybrid_azure_a_d_joined_device_accepted
                return @is_hybrid_azure_a_d_joined_device_accepted
            end
            ## 
            ## Sets the isHybridAzureADJoinedDeviceAccepted property value. Specifies whether Microsoft Entra hybrid joined devices from external Microsoft Entra organizations are trusted.
            ## @param value Value to set for the isHybridAzureADJoinedDeviceAccepted property.
            ## @return a void
            ## 
            def is_hybrid_azure_a_d_joined_device_accepted=(value)
                @is_hybrid_azure_a_d_joined_device_accepted = value
            end
            ## 
            ## Gets the isMfaAccepted property value. Specifies whether MFA from external Microsoft Entra organizations is trusted.
            ## @return a boolean
            ## 
            def is_mfa_accepted
                return @is_mfa_accepted
            end
            ## 
            ## Sets the isMfaAccepted property value. Specifies whether MFA from external Microsoft Entra organizations is trusted.
            ## @param value Value to set for the isMfaAccepted property.
            ## @return a void
            ## 
            def is_mfa_accepted=(value)
                @is_mfa_accepted = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_boolean_value("isCompliantDeviceAccepted", @is_compliant_device_accepted)
                writer.write_boolean_value("isHybridAzureADJoinedDeviceAccepted", @is_hybrid_azure_a_d_joined_device_accepted)
                writer.write_boolean_value("isMfaAccepted", @is_mfa_accepted)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
