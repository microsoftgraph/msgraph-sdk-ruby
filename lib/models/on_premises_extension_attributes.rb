require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnPremisesExtensionAttributes
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # First customizable extension attribute.
            @extension_attribute1
            ## 
            # Tenth customizable extension attribute.
            @extension_attribute10
            ## 
            # Eleventh customizable extension attribute.
            @extension_attribute11
            ## 
            # Twelfth customizable extension attribute.
            @extension_attribute12
            ## 
            # Thirteenth customizable extension attribute.
            @extension_attribute13
            ## 
            # Fourteenth customizable extension attribute.
            @extension_attribute14
            ## 
            # Fifteenth customizable extension attribute.
            @extension_attribute15
            ## 
            # Second customizable extension attribute.
            @extension_attribute2
            ## 
            # Third customizable extension attribute.
            @extension_attribute3
            ## 
            # Fourth customizable extension attribute.
            @extension_attribute4
            ## 
            # Fifth customizable extension attribute.
            @extension_attribute5
            ## 
            # Sixth customizable extension attribute.
            @extension_attribute6
            ## 
            # Seventh customizable extension attribute.
            @extension_attribute7
            ## 
            # Eighth customizable extension attribute.
            @extension_attribute8
            ## 
            # Ninth customizable extension attribute.
            @extension_attribute9
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
            ## Instantiates a new onPremisesExtensionAttributes and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_extension_attributes
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesExtensionAttributes.new
            end
            ## 
            ## Gets the extensionAttribute1 property value. First customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute1
                return @extension_attribute1
            end
            ## 
            ## Sets the extensionAttribute1 property value. First customizable extension attribute.
            ## @param value Value to set for the extension_attribute1 property.
            ## @return a void
            ## 
            def extension_attribute1=(value)
                @extension_attribute1 = value
            end
            ## 
            ## Gets the extensionAttribute10 property value. Tenth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute10
                return @extension_attribute10
            end
            ## 
            ## Sets the extensionAttribute10 property value. Tenth customizable extension attribute.
            ## @param value Value to set for the extension_attribute10 property.
            ## @return a void
            ## 
            def extension_attribute10=(value)
                @extension_attribute10 = value
            end
            ## 
            ## Gets the extensionAttribute11 property value. Eleventh customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute11
                return @extension_attribute11
            end
            ## 
            ## Sets the extensionAttribute11 property value. Eleventh customizable extension attribute.
            ## @param value Value to set for the extension_attribute11 property.
            ## @return a void
            ## 
            def extension_attribute11=(value)
                @extension_attribute11 = value
            end
            ## 
            ## Gets the extensionAttribute12 property value. Twelfth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute12
                return @extension_attribute12
            end
            ## 
            ## Sets the extensionAttribute12 property value. Twelfth customizable extension attribute.
            ## @param value Value to set for the extension_attribute12 property.
            ## @return a void
            ## 
            def extension_attribute12=(value)
                @extension_attribute12 = value
            end
            ## 
            ## Gets the extensionAttribute13 property value. Thirteenth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute13
                return @extension_attribute13
            end
            ## 
            ## Sets the extensionAttribute13 property value. Thirteenth customizable extension attribute.
            ## @param value Value to set for the extension_attribute13 property.
            ## @return a void
            ## 
            def extension_attribute13=(value)
                @extension_attribute13 = value
            end
            ## 
            ## Gets the extensionAttribute14 property value. Fourteenth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute14
                return @extension_attribute14
            end
            ## 
            ## Sets the extensionAttribute14 property value. Fourteenth customizable extension attribute.
            ## @param value Value to set for the extension_attribute14 property.
            ## @return a void
            ## 
            def extension_attribute14=(value)
                @extension_attribute14 = value
            end
            ## 
            ## Gets the extensionAttribute15 property value. Fifteenth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute15
                return @extension_attribute15
            end
            ## 
            ## Sets the extensionAttribute15 property value. Fifteenth customizable extension attribute.
            ## @param value Value to set for the extension_attribute15 property.
            ## @return a void
            ## 
            def extension_attribute15=(value)
                @extension_attribute15 = value
            end
            ## 
            ## Gets the extensionAttribute2 property value. Second customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute2
                return @extension_attribute2
            end
            ## 
            ## Sets the extensionAttribute2 property value. Second customizable extension attribute.
            ## @param value Value to set for the extension_attribute2 property.
            ## @return a void
            ## 
            def extension_attribute2=(value)
                @extension_attribute2 = value
            end
            ## 
            ## Gets the extensionAttribute3 property value. Third customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute3
                return @extension_attribute3
            end
            ## 
            ## Sets the extensionAttribute3 property value. Third customizable extension attribute.
            ## @param value Value to set for the extension_attribute3 property.
            ## @return a void
            ## 
            def extension_attribute3=(value)
                @extension_attribute3 = value
            end
            ## 
            ## Gets the extensionAttribute4 property value. Fourth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute4
                return @extension_attribute4
            end
            ## 
            ## Sets the extensionAttribute4 property value. Fourth customizable extension attribute.
            ## @param value Value to set for the extension_attribute4 property.
            ## @return a void
            ## 
            def extension_attribute4=(value)
                @extension_attribute4 = value
            end
            ## 
            ## Gets the extensionAttribute5 property value. Fifth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute5
                return @extension_attribute5
            end
            ## 
            ## Sets the extensionAttribute5 property value. Fifth customizable extension attribute.
            ## @param value Value to set for the extension_attribute5 property.
            ## @return a void
            ## 
            def extension_attribute5=(value)
                @extension_attribute5 = value
            end
            ## 
            ## Gets the extensionAttribute6 property value. Sixth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute6
                return @extension_attribute6
            end
            ## 
            ## Sets the extensionAttribute6 property value. Sixth customizable extension attribute.
            ## @param value Value to set for the extension_attribute6 property.
            ## @return a void
            ## 
            def extension_attribute6=(value)
                @extension_attribute6 = value
            end
            ## 
            ## Gets the extensionAttribute7 property value. Seventh customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute7
                return @extension_attribute7
            end
            ## 
            ## Sets the extensionAttribute7 property value. Seventh customizable extension attribute.
            ## @param value Value to set for the extension_attribute7 property.
            ## @return a void
            ## 
            def extension_attribute7=(value)
                @extension_attribute7 = value
            end
            ## 
            ## Gets the extensionAttribute8 property value. Eighth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute8
                return @extension_attribute8
            end
            ## 
            ## Sets the extensionAttribute8 property value. Eighth customizable extension attribute.
            ## @param value Value to set for the extension_attribute8 property.
            ## @return a void
            ## 
            def extension_attribute8=(value)
                @extension_attribute8 = value
            end
            ## 
            ## Gets the extensionAttribute9 property value. Ninth customizable extension attribute.
            ## @return a string
            ## 
            def extension_attribute9
                return @extension_attribute9
            end
            ## 
            ## Sets the extensionAttribute9 property value. Ninth customizable extension attribute.
            ## @param value Value to set for the extension_attribute9 property.
            ## @return a void
            ## 
            def extension_attribute9=(value)
                @extension_attribute9 = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "extensionAttribute1" => lambda {|n| @extension_attribute1 = n.get_string_value() },
                    "extensionAttribute10" => lambda {|n| @extension_attribute10 = n.get_string_value() },
                    "extensionAttribute11" => lambda {|n| @extension_attribute11 = n.get_string_value() },
                    "extensionAttribute12" => lambda {|n| @extension_attribute12 = n.get_string_value() },
                    "extensionAttribute13" => lambda {|n| @extension_attribute13 = n.get_string_value() },
                    "extensionAttribute14" => lambda {|n| @extension_attribute14 = n.get_string_value() },
                    "extensionAttribute15" => lambda {|n| @extension_attribute15 = n.get_string_value() },
                    "extensionAttribute2" => lambda {|n| @extension_attribute2 = n.get_string_value() },
                    "extensionAttribute3" => lambda {|n| @extension_attribute3 = n.get_string_value() },
                    "extensionAttribute4" => lambda {|n| @extension_attribute4 = n.get_string_value() },
                    "extensionAttribute5" => lambda {|n| @extension_attribute5 = n.get_string_value() },
                    "extensionAttribute6" => lambda {|n| @extension_attribute6 = n.get_string_value() },
                    "extensionAttribute7" => lambda {|n| @extension_attribute7 = n.get_string_value() },
                    "extensionAttribute8" => lambda {|n| @extension_attribute8 = n.get_string_value() },
                    "extensionAttribute9" => lambda {|n| @extension_attribute9 = n.get_string_value() },
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
                writer.write_string_value("extensionAttribute1", @extension_attribute1)
                writer.write_string_value("extensionAttribute10", @extension_attribute10)
                writer.write_string_value("extensionAttribute11", @extension_attribute11)
                writer.write_string_value("extensionAttribute12", @extension_attribute12)
                writer.write_string_value("extensionAttribute13", @extension_attribute13)
                writer.write_string_value("extensionAttribute14", @extension_attribute14)
                writer.write_string_value("extensionAttribute15", @extension_attribute15)
                writer.write_string_value("extensionAttribute2", @extension_attribute2)
                writer.write_string_value("extensionAttribute3", @extension_attribute3)
                writer.write_string_value("extensionAttribute4", @extension_attribute4)
                writer.write_string_value("extensionAttribute5", @extension_attribute5)
                writer.write_string_value("extensionAttribute6", @extension_attribute6)
                writer.write_string_value("extensionAttribute7", @extension_attribute7)
                writer.write_string_value("extensionAttribute8", @extension_attribute8)
                writer.write_string_value("extensionAttribute9", @extension_attribute9)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
