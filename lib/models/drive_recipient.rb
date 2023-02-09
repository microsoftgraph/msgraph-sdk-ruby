require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DriveRecipient
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The alias of the domain object, for cases where an email address is unavailable (e.g. security groups).
            @alias_escaped
            ## 
            # The email address for the recipient, if the recipient has an associated email address.
            @email
            ## 
            # The unique identifier for the recipient in the directory.
            @object_id
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
            ## Gets the alias property value. The alias of the domain object, for cases where an email address is unavailable (e.g. security groups).
            ## @return a string
            ## 
            def alias_escaped
                return @alias_escaped
            end
            ## 
            ## Sets the alias property value. The alias of the domain object, for cases where an email address is unavailable (e.g. security groups).
            ## @param value Value to set for the alias property.
            ## @return a void
            ## 
            def alias_escaped=(value)
                @alias_escaped = value
            end
            ## 
            ## Instantiates a new driveRecipient and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a drive_recipient
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveRecipient.new
            end
            ## 
            ## Gets the email property value. The email address for the recipient, if the recipient has an associated email address.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email address for the recipient, if the recipient has an associated email address.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alias" => lambda {|n| @alias_escaped = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "objectId" => lambda {|n| @object_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the objectId property value. The unique identifier for the recipient in the directory.
            ## @return a string
            ## 
            def object_id
                return @object_id
            end
            ## 
            ## Sets the objectId property value. The unique identifier for the recipient in the directory.
            ## @param value Value to set for the object_id property.
            ## @return a void
            ## 
            def object_id=(value)
                @object_id = value
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
                writer.write_string_value("alias", @alias_escaped)
                writer.write_string_value("email", @email)
                writer.write_string_value("objectId", @object_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
