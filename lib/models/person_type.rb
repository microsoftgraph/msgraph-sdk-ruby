require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PersonType
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of data source, such as Person.
            @class_escaped
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The secondary type of data source, such as OrganizationUser.
            @subclass
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
            ## Gets the class property value. The type of data source, such as Person.
            ## @return a string
            ## 
            def class_escaped
                return @class_escaped
            end
            ## 
            ## Sets the class property value. The type of data source, such as Person.
            ## @param value Value to set for the class property.
            ## @return a void
            ## 
            def class_escaped=(value)
                @class_escaped = value
            end
            ## 
            ## Instantiates a new personType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a person_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PersonType.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "class" => lambda {|n| @class_escaped = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "subclass" => lambda {|n| @subclass = n.get_string_value() },
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
                writer.write_string_value("class", @class_escaped)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("subclass", @subclass)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the subclass property value. The secondary type of data source, such as OrganizationUser.
            ## @return a string
            ## 
            def subclass
                return @subclass
            end
            ## 
            ## Sets the subclass property value. The secondary type of data source, such as OrganizationUser.
            ## @param value Value to set for the subclass property.
            ## @return a void
            ## 
            def subclass=(value)
                @subclass = value
            end
        end
    end
end
