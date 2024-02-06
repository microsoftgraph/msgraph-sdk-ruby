require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessGrantControls
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The authenticationStrength property
            @authentication_strength
            ## 
            # List of values of built-in controls required by the policy. Possible values: block, mfa, compliantDevice, domainJoinedDevice, approvedApplication, compliantApplication, passwordChange, unknownFutureValue.
            @built_in_controls
            ## 
            # List of custom controls IDs required by the policy. For more information, see Custom controls.
            @custom_authentication_factors
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Defines the relationship of the grant controls. Possible values: AND, OR.
            @operator
            ## 
            # List of terms of use IDs required by the policy.
            @terms_of_use
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the authenticationStrength property value. The authenticationStrength property
            ## @return a authentication_strength_policy
            ## 
            def authentication_strength
                return @authentication_strength
            end
            ## 
            ## Sets the authenticationStrength property value. The authenticationStrength property
            ## @param value Value to set for the authenticationStrength property.
            ## @return a void
            ## 
            def authentication_strength=(value)
                @authentication_strength = value
            end
            ## 
            ## Gets the builtInControls property value. List of values of built-in controls required by the policy. Possible values: block, mfa, compliantDevice, domainJoinedDevice, approvedApplication, compliantApplication, passwordChange, unknownFutureValue.
            ## @return a conditional_access_grant_control
            ## 
            def built_in_controls
                return @built_in_controls
            end
            ## 
            ## Sets the builtInControls property value. List of values of built-in controls required by the policy. Possible values: block, mfa, compliantDevice, domainJoinedDevice, approvedApplication, compliantApplication, passwordChange, unknownFutureValue.
            ## @param value Value to set for the builtInControls property.
            ## @return a void
            ## 
            def built_in_controls=(value)
                @built_in_controls = value
            end
            ## 
            ## Instantiates a new conditionalAccessGrantControls and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_grant_controls
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessGrantControls.new
            end
            ## 
            ## Gets the customAuthenticationFactors property value. List of custom controls IDs required by the policy. For more information, see Custom controls.
            ## @return a string
            ## 
            def custom_authentication_factors
                return @custom_authentication_factors
            end
            ## 
            ## Sets the customAuthenticationFactors property value. List of custom controls IDs required by the policy. For more information, see Custom controls.
            ## @param value Value to set for the customAuthenticationFactors property.
            ## @return a void
            ## 
            def custom_authentication_factors=(value)
                @custom_authentication_factors = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authenticationStrength" => lambda {|n| @authentication_strength = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthenticationStrengthPolicy.create_from_discriminator_value(pn) }) },
                    "builtInControls" => lambda {|n| @built_in_controls = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessGrantControl.create_from_discriminator_value(pn) }) },
                    "customAuthenticationFactors" => lambda {|n| @custom_authentication_factors = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operator" => lambda {|n| @operator = n.get_string_value() },
                    "termsOfUse" => lambda {|n| @terms_of_use = n.get_collection_of_primitive_values(String) },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the operator property value. Defines the relationship of the grant controls. Possible values: AND, OR.
            ## @return a string
            ## 
            def operator
                return @operator
            end
            ## 
            ## Sets the operator property value. Defines the relationship of the grant controls. Possible values: AND, OR.
            ## @param value Value to set for the operator property.
            ## @return a void
            ## 
            def operator=(value)
                @operator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("authenticationStrength", @authentication_strength) unless @authentication_strength.nil?
                writer.write_collection_of_object_values("builtInControls", @built_in_controls) unless @built_in_controls.nil?
                writer.write_collection_of_primitive_values("customAuthenticationFactors", @custom_authentication_factors) unless @custom_authentication_factors.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_string_value("operator", @operator) unless @operator.nil?
                writer.write_collection_of_primitive_values("termsOfUse", @terms_of_use) unless @terms_of_use.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the termsOfUse property value. List of terms of use IDs required by the policy.
            ## @return a string
            ## 
            def terms_of_use
                return @terms_of_use
            end
            ## 
            ## Sets the termsOfUse property value. List of terms of use IDs required by the policy.
            ## @param value Value to set for the termsOfUse property.
            ## @return a void
            ## 
            def terms_of_use=(value)
                @terms_of_use = value
            end
        end
    end
end
