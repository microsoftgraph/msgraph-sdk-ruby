require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessPolicyDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The conditions property
            @conditions
            ## 
            # Represents grant controls that must be fulfilled for the policy.
            @grant_controls
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents a complex type of session controls that is enforced after sign-in.
            @session_controls
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
            ## Gets the conditions property value. The conditions property
            ## @return a conditional_access_condition_set
            ## 
            def conditions
                return @conditions
            end
            ## 
            ## Sets the conditions property value. The conditions property
            ## @param value Value to set for the conditions property.
            ## @return a void
            ## 
            def conditions=(value)
                @conditions = value
            end
            ## 
            ## Instantiates a new conditionalAccessPolicyDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_policy_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessPolicyDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "conditions" => lambda {|n| @conditions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessConditionSet.create_from_discriminator_value(pn) }) },
                    "grantControls" => lambda {|n| @grant_controls = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessGrantControls.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sessionControls" => lambda {|n| @session_controls = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessSessionControls.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the grantControls property value. Represents grant controls that must be fulfilled for the policy.
            ## @return a conditional_access_grant_controls
            ## 
            def grant_controls
                return @grant_controls
            end
            ## 
            ## Sets the grantControls property value. Represents grant controls that must be fulfilled for the policy.
            ## @param value Value to set for the grant_controls property.
            ## @return a void
            ## 
            def grant_controls=(value)
                @grant_controls = value
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
                writer.write_object_value("conditions", @conditions)
                writer.write_object_value("grantControls", @grant_controls)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("sessionControls", @session_controls)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sessionControls property value. Represents a complex type of session controls that is enforced after sign-in.
            ## @return a conditional_access_session_controls
            ## 
            def session_controls
                return @session_controls
            end
            ## 
            ## Sets the sessionControls property value. Represents a complex type of session controls that is enforced after sign-in.
            ## @param value Value to set for the session_controls property.
            ## @return a void
            ## 
            def session_controls=(value)
                @session_controls = value
            end
        end
    end
end
