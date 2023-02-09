require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppliedConditionalAccessPolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Refers to the Name of the conditional access policy (example: 'Require MFA for Salesforce').
            @display_name
            ## 
            # Refers to the grant controls enforced by the conditional access policy (example: 'Require multi-factor authentication').
            @enforced_grant_controls
            ## 
            # Refers to the session controls enforced by the conditional access policy (example: 'Require app enforced controls').
            @enforced_session_controls
            ## 
            # An identifier of the conditional access policy.
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the result of the CA policy that was triggered. Possible values are: success, failure, notApplied (Policy isn't applied because policy conditions were not met),notEnabled (This is due to the policy in disabled state), unknown, unknownFutureValue.
            @result
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
            ## Instantiates a new appliedConditionalAccessPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a applied_conditional_access_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppliedConditionalAccessPolicy.new
            end
            ## 
            ## Gets the displayName property value. Refers to the Name of the conditional access policy (example: 'Require MFA for Salesforce').
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Refers to the Name of the conditional access policy (example: 'Require MFA for Salesforce').
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enforcedGrantControls property value. Refers to the grant controls enforced by the conditional access policy (example: 'Require multi-factor authentication').
            ## @return a string
            ## 
            def enforced_grant_controls
                return @enforced_grant_controls
            end
            ## 
            ## Sets the enforcedGrantControls property value. Refers to the grant controls enforced by the conditional access policy (example: 'Require multi-factor authentication').
            ## @param value Value to set for the enforced_grant_controls property.
            ## @return a void
            ## 
            def enforced_grant_controls=(value)
                @enforced_grant_controls = value
            end
            ## 
            ## Gets the enforcedSessionControls property value. Refers to the session controls enforced by the conditional access policy (example: 'Require app enforced controls').
            ## @return a string
            ## 
            def enforced_session_controls
                return @enforced_session_controls
            end
            ## 
            ## Sets the enforcedSessionControls property value. Refers to the session controls enforced by the conditional access policy (example: 'Require app enforced controls').
            ## @param value Value to set for the enforced_session_controls property.
            ## @return a void
            ## 
            def enforced_session_controls=(value)
                @enforced_session_controls = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enforcedGrantControls" => lambda {|n| @enforced_grant_controls = n.get_collection_of_primitive_values(String) },
                    "enforcedSessionControls" => lambda {|n| @enforced_session_controls = n.get_collection_of_primitive_values(String) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "result" => lambda {|n| @result = n.get_enum_value(MicrosoftGraph::Models::AppliedConditionalAccessPolicyResult) },
                }
            end
            ## 
            ## Gets the id property value. An identifier of the conditional access policy.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. An identifier of the conditional access policy.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## Gets the result property value. Indicates the result of the CA policy that was triggered. Possible values are: success, failure, notApplied (Policy isn't applied because policy conditions were not met),notEnabled (This is due to the policy in disabled state), unknown, unknownFutureValue.
            ## @return a applied_conditional_access_policy_result
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. Indicates the result of the CA policy that was triggered. Possible values are: success, failure, notApplied (Policy isn't applied because policy conditions were not met),notEnabled (This is due to the policy in disabled state), unknown, unknownFutureValue.
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_primitive_values("enforcedGrantControls", @enforced_grant_controls)
                writer.write_collection_of_primitive_values("enforcedSessionControls", @enforced_session_controls)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("result", @result)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
