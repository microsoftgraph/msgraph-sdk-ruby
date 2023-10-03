require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityWhoisContact
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The physical address of the entity.
            @address
            ## 
            # The email of this WHOIS contact.
            @email
            ## 
            # The fax of this WHOIS contact. No format is guaranteed.
            @fax
            ## 
            # The name of this WHOIS contact.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The organization of this WHOIS contact.
            @organization
            ## 
            # The telephone of this WHOIS contact. No format is guaranteed.
            @telephone
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
            ## Gets the address property value. The physical address of the entity.
            ## @return a physical_address
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The physical address of the entity.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Instantiates a new securityWhoisContact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_whois_contact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityWhoisContact.new
            end
            ## 
            ## Gets the email property value. The email of this WHOIS contact.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email of this WHOIS contact.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## Gets the fax property value. The fax of this WHOIS contact. No format is guaranteed.
            ## @return a string
            ## 
            def fax
                return @fax
            end
            ## 
            ## Sets the fax property value. The fax of this WHOIS contact. No format is guaranteed.
            ## @param value Value to set for the fax property.
            ## @return a void
            ## 
            def fax=(value)
                @fax = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "fax" => lambda {|n| @fax = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organization" => lambda {|n| @organization = n.get_string_value() },
                    "telephone" => lambda {|n| @telephone = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. The name of this WHOIS contact.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of this WHOIS contact.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the organization property value. The organization of this WHOIS contact.
            ## @return a string
            ## 
            def organization
                return @organization
            end
            ## 
            ## Sets the organization property value. The organization of this WHOIS contact.
            ## @param value Value to set for the organization property.
            ## @return a void
            ## 
            def organization=(value)
                @organization = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("address", @address)
                writer.write_string_value("email", @email)
                writer.write_string_value("fax", @fax)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("organization", @organization)
                writer.write_string_value("telephone", @telephone)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the telephone property value. The telephone of this WHOIS contact. No format is guaranteed.
            ## @return a string
            ## 
            def telephone
                return @telephone
            end
            ## 
            ## Sets the telephone property value. The telephone of this WHOIS contact. No format is guaranteed.
            ## @param value Value to set for the telephone property.
            ## @return a void
            ## 
            def telephone=(value)
                @telephone = value
            end
        end
    end
end
