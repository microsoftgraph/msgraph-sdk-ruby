require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EmailSender
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The name of the sender.
                @display_name
                ## 
                # Sender domain.
                @domain_name
                ## 
                # Sender email address.
                @email_address
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
                ## Instantiates a new emailSender and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a email_sender
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EmailSender.new
                end
                ## 
                ## Gets the displayName property value. The name of the sender.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The name of the sender.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## Gets the domainName property value. Sender domain.
                ## @return a string
                ## 
                def domain_name
                    return @domain_name
                end
                ## 
                ## Sets the domainName property value. Sender domain.
                ## @param value Value to set for the domain_name property.
                ## @return a void
                ## 
                def domain_name=(value)
                    @domain_name = value
                end
                ## 
                ## Gets the emailAddress property value. Sender email address.
                ## @return a string
                ## 
                def email_address
                    return @email_address
                end
                ## 
                ## Sets the emailAddress property value. Sender email address.
                ## @param value Value to set for the email_address property.
                ## @return a void
                ## 
                def email_address=(value)
                    @email_address = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                        "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("domainName", @domain_name)
                    writer.write_string_value("emailAddress", @email_address)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
