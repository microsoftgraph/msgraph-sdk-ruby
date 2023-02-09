require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RelatedContact
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the user has been consented to access student data.
            @access_consent
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Name of the contact. Required.
            @display_name
            ## 
            # Primary email address of the contact. Required.
            @email_address
            ## 
            # Mobile phone number of the contact.
            @mobile_phone
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The relationship property
            @relationship
            ## 
            ## Gets the accessConsent property value. Indicates whether the user has been consented to access student data.
            ## @return a boolean
            ## 
            def access_consent
                return @access_consent
            end
            ## 
            ## Sets the accessConsent property value. Indicates whether the user has been consented to access student data.
            ## @param value Value to set for the access_consent property.
            ## @return a void
            ## 
            def access_consent=(value)
                @access_consent = value
            end
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
            ## Instantiates a new relatedContact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a related_contact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RelatedContact.new
            end
            ## 
            ## Gets the displayName property value. Name of the contact. Required.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the contact. Required.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the emailAddress property value. Primary email address of the contact. Required.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. Primary email address of the contact. Required.
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
                    "accessConsent" => lambda {|n| @access_consent = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "mobilePhone" => lambda {|n| @mobile_phone = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "relationship" => lambda {|n| @relationship = n.get_enum_value(MicrosoftGraph::Models::ContactRelationship) },
                }
            end
            ## 
            ## Gets the mobilePhone property value. Mobile phone number of the contact.
            ## @return a string
            ## 
            def mobile_phone
                return @mobile_phone
            end
            ## 
            ## Sets the mobilePhone property value. Mobile phone number of the contact.
            ## @param value Value to set for the mobile_phone property.
            ## @return a void
            ## 
            def mobile_phone=(value)
                @mobile_phone = value
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
            ## Gets the relationship property value. The relationship property
            ## @return a contact_relationship
            ## 
            def relationship
                return @relationship
            end
            ## 
            ## Sets the relationship property value. The relationship property
            ## @param value Value to set for the relationship property.
            ## @return a void
            ## 
            def relationship=(value)
                @relationship = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("accessConsent", @access_consent)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("emailAddress", @email_address)
                writer.write_string_value("mobilePhone", @mobile_phone)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("relationship", @relationship)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
