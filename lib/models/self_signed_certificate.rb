require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SelfSignedCertificate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The customKeyIdentifier property
            @custom_key_identifier
            ## 
            # The displayName property
            @display_name
            ## 
            # The endDateTime property
            @end_date_time
            ## 
            # The key property
            @key
            ## 
            # The keyId property
            @key_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            # The thumbprint property
            @thumbprint
            ## 
            # The type property
            @type
            ## 
            # The usage property
            @usage
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
            ## Instantiates a new SelfSignedCertificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a self_signed_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SelfSignedCertificate.new
            end
            ## 
            ## Gets the customKeyIdentifier property value. The customKeyIdentifier property
            ## @return a base64url
            ## 
            def custom_key_identifier
                return @custom_key_identifier
            end
            ## 
            ## Sets the customKeyIdentifier property value. The customKeyIdentifier property
            ## @param value Value to set for the custom_key_identifier property.
            ## @return a void
            ## 
            def custom_key_identifier=(value)
                @custom_key_identifier = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDateTime property value. The endDateTime property
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The endDateTime property
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "customKeyIdentifier" => lambda {|n| @custom_key_identifier = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "key" => lambda {|n| @key = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "keyId" => lambda {|n| @key_id = n.get_guid_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "thumbprint" => lambda {|n| @thumbprint = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "usage" => lambda {|n| @usage = n.get_string_value() },
                }
            end
            ## 
            ## Gets the key property value. The key property
            ## @return a base64url
            ## 
            def key
                return @key
            end
            ## 
            ## Sets the key property value. The key property
            ## @param value Value to set for the key property.
            ## @return a void
            ## 
            def key=(value)
                @key = value
            end
            ## 
            ## Gets the keyId property value. The keyId property
            ## @return a guid
            ## 
            def key_id
                return @key_id
            end
            ## 
            ## Sets the keyId property value. The keyId property
            ## @param value Value to set for the key_id property.
            ## @return a void
            ## 
            def key_id=(value)
                @key_id = value
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
                writer.write_object_value("customKeyIdentifier", @custom_key_identifier)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_object_value("key", @key)
                writer.write_guid_value("keyId", @key_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("thumbprint", @thumbprint)
                writer.write_string_value("type", @type)
                writer.write_string_value("usage", @usage)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDateTime property value. The startDateTime property
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The startDateTime property
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the thumbprint property value. The thumbprint property
            ## @return a string
            ## 
            def thumbprint
                return @thumbprint
            end
            ## 
            ## Sets the thumbprint property value. The thumbprint property
            ## @param value Value to set for the thumbprint property.
            ## @return a void
            ## 
            def thumbprint=(value)
                @thumbprint = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the usage property value. The usage property
            ## @return a string
            ## 
            def usage
                return @usage
            end
            ## 
            ## Sets the usage property value. The usage property
            ## @param value Value to set for the usage property.
            ## @return a void
            ## 
            def usage=(value)
                @usage = value
            end
        end
    end
end
