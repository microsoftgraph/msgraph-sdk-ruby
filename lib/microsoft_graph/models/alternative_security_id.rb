require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class AlternativeSecurityId
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # For internal use only
        @identity_provider
        ## 
        # For internal use only
        @key
        ## 
        # The OdataType property
        @odata_type
        ## 
        # For internal use only
        @type
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
        ## Instantiates a new alternativeSecurityId and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a alternative_security_id
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AlternativeSecurityId.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "identityProvider" => lambda {|n| @identity_provider = n.get_string_value() },
                "key" => lambda {|n| @key = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_number_value() },
            }
        end
        ## 
        ## Gets the identityProvider property value. For internal use only
        ## @return a string
        ## 
        def identity_provider
            return @identity_provider
        end
        ## 
        ## Sets the identityProvider property value. For internal use only
        ## @param value Value to set for the identityProvider property.
        ## @return a void
        ## 
        def identity_provider=(value)
            @identity_provider = value
        end
        ## 
        ## Gets the key property value. For internal use only
        ## @return a binary
        ## 
        def key
            return @key
        end
        ## 
        ## Sets the key property value. For internal use only
        ## @param value Value to set for the key property.
        ## @return a void
        ## 
        def key=(value)
            @key = value
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
            writer.write_string_value("identityProvider", @identity_provider)
            writer.write_object_value("key", @key)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("type", @type)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the type property value. For internal use only
        ## @return a integer
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. For internal use only
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
    end
end
