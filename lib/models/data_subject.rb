require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DataSubject
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Email of the data subject.
            @email
            ## 
            # First name of the data subject.
            @first_name
            ## 
            # Last Name of the data subject.
            @last_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The country/region of residency. The residency information is uesed only for internal reporting but not for the content search.
            @residency
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
            ## Instantiates a new dataSubject and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a data_subject
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DataSubject.new
            end
            ## 
            ## Gets the email property value. Email of the data subject.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. Email of the data subject.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## Gets the firstName property value. First name of the data subject.
            ## @return a string
            ## 
            def first_name
                return @first_name
            end
            ## 
            ## Sets the firstName property value. First name of the data subject.
            ## @param value Value to set for the first_name property.
            ## @return a void
            ## 
            def first_name=(value)
                @first_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "firstName" => lambda {|n| @first_name = n.get_string_value() },
                    "lastName" => lambda {|n| @last_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "residency" => lambda {|n| @residency = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastName property value. Last Name of the data subject.
            ## @return a string
            ## 
            def last_name
                return @last_name
            end
            ## 
            ## Sets the lastName property value. Last Name of the data subject.
            ## @param value Value to set for the last_name property.
            ## @return a void
            ## 
            def last_name=(value)
                @last_name = value
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
            ## Gets the residency property value. The country/region of residency. The residency information is uesed only for internal reporting but not for the content search.
            ## @return a string
            ## 
            def residency
                return @residency
            end
            ## 
            ## Sets the residency property value. The country/region of residency. The residency information is uesed only for internal reporting but not for the content search.
            ## @param value Value to set for the residency property.
            ## @return a void
            ## 
            def residency=(value)
                @residency = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("email", @email)
                writer.write_string_value("firstName", @first_name)
                writer.write_string_value("lastName", @last_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("residency", @residency)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
