require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class SelfServiceSignUpAuthenticationFlowConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Indicates whether self-service sign-up flow is enabled or disabled. The default value is false. This property is not a key. Required.
        @is_enabled
        ## 
        # The OdataType property
        @odata_type
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
        ## Instantiates a new selfServiceSignUpAuthenticationFlowConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a self_service_sign_up_authentication_flow_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SelfServiceSignUpAuthenticationFlowConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the isEnabled property value. Indicates whether self-service sign-up flow is enabled or disabled. The default value is false. This property is not a key. Required.
        ## @return a boolean
        ## 
        def is_enabled
            return @is_enabled
        end
        ## 
        ## Sets the isEnabled property value. Indicates whether self-service sign-up flow is enabled or disabled. The default value is false. This property is not a key. Required.
        ## @param value Value to set for the isEnabled property.
        ## @return a void
        ## 
        def is_enabled=(value)
            @is_enabled = value
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_boolean_value("isEnabled", @is_enabled)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
