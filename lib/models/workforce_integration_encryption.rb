require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkforceIntegrationEncryption
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Possible values are: sharedSecret, unknownFutureValue.
            @protocol
            ## 
            # Encryption shared secret.
            @secret
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
            ## Instantiates a new workforceIntegrationEncryption and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workforce_integration_encryption
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkforceIntegrationEncryption.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "protocol" => lambda {|n| @protocol = n.get_enum_value(MicrosoftGraph::Models::WorkforceIntegrationEncryptionProtocol) },
                    "secret" => lambda {|n| @secret = n.get_string_value() },
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
            ## Gets the protocol property value. Possible values are: sharedSecret, unknownFutureValue.
            ## @return a workforce_integration_encryption_protocol
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. Possible values are: sharedSecret, unknownFutureValue.
            ## @param value Value to set for the protocol property.
            ## @return a void
            ## 
            def protocol=(value)
                @protocol = value
            end
            ## 
            ## Gets the secret property value. Encryption shared secret.
            ## @return a string
            ## 
            def secret
                return @secret
            end
            ## 
            ## Sets the secret property value. Encryption shared secret.
            ## @param value Value to set for the secret property.
            ## @return a void
            ## 
            def secret=(value)
                @secret = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("protocol", @protocol)
                writer.write_string_value("secret", @secret)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
