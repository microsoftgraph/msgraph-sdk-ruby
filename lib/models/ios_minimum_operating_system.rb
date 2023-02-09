require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties of the minimum operating system required for an iOS mobile app.
        class IosMinimumOperatingSystem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # When TRUE, only Version 10.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v10_0
            ## 
            # When TRUE, only Version 11.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v11_0
            ## 
            # When TRUE, only Version 12.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v12_0
            ## 
            # When TRUE, only Version 13.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v13_0
            ## 
            # When TRUE, only Version 14.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v14_0
            ## 
            # When TRUE, only Version 15.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v15_0
            ## 
            # When TRUE, only Version 8.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v8_0
            ## 
            # When TRUE, only Version 9.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v9_0
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
            ## Instantiates a new iosMinimumOperatingSystem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_minimum_operating_system
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosMinimumOperatingSystem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "v10_0" => lambda {|n| @v10_0 = n.get_boolean_value() },
                    "v11_0" => lambda {|n| @v11_0 = n.get_boolean_value() },
                    "v12_0" => lambda {|n| @v12_0 = n.get_boolean_value() },
                    "v13_0" => lambda {|n| @v13_0 = n.get_boolean_value() },
                    "v14_0" => lambda {|n| @v14_0 = n.get_boolean_value() },
                    "v15_0" => lambda {|n| @v15_0 = n.get_boolean_value() },
                    "v8_0" => lambda {|n| @v8_0 = n.get_boolean_value() },
                    "v9_0" => lambda {|n| @v9_0 = n.get_boolean_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("v10_0", @v10_0)
                writer.write_boolean_value("v11_0", @v11_0)
                writer.write_boolean_value("v12_0", @v12_0)
                writer.write_boolean_value("v13_0", @v13_0)
                writer.write_boolean_value("v14_0", @v14_0)
                writer.write_boolean_value("v15_0", @v15_0)
                writer.write_boolean_value("v8_0", @v8_0)
                writer.write_boolean_value("v9_0", @v9_0)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the v10_0 property value. When TRUE, only Version 10.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v10_0
                return @v10_0
            end
            ## 
            ## Sets the v10_0 property value. When TRUE, only Version 10.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v10_0 property.
            ## @return a void
            ## 
            def v10_0=(value)
                @v10_0 = value
            end
            ## 
            ## Gets the v11_0 property value. When TRUE, only Version 11.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v11_0
                return @v11_0
            end
            ## 
            ## Sets the v11_0 property value. When TRUE, only Version 11.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v11_0 property.
            ## @return a void
            ## 
            def v11_0=(value)
                @v11_0 = value
            end
            ## 
            ## Gets the v12_0 property value. When TRUE, only Version 12.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v12_0
                return @v12_0
            end
            ## 
            ## Sets the v12_0 property value. When TRUE, only Version 12.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v12_0 property.
            ## @return a void
            ## 
            def v12_0=(value)
                @v12_0 = value
            end
            ## 
            ## Gets the v13_0 property value. When TRUE, only Version 13.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v13_0
                return @v13_0
            end
            ## 
            ## Sets the v13_0 property value. When TRUE, only Version 13.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v13_0 property.
            ## @return a void
            ## 
            def v13_0=(value)
                @v13_0 = value
            end
            ## 
            ## Gets the v14_0 property value. When TRUE, only Version 14.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v14_0
                return @v14_0
            end
            ## 
            ## Sets the v14_0 property value. When TRUE, only Version 14.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v14_0 property.
            ## @return a void
            ## 
            def v14_0=(value)
                @v14_0 = value
            end
            ## 
            ## Gets the v15_0 property value. When TRUE, only Version 15.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v15_0
                return @v15_0
            end
            ## 
            ## Sets the v15_0 property value. When TRUE, only Version 15.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v15_0 property.
            ## @return a void
            ## 
            def v15_0=(value)
                @v15_0 = value
            end
            ## 
            ## Gets the v8_0 property value. When TRUE, only Version 8.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v8_0
                return @v8_0
            end
            ## 
            ## Sets the v8_0 property value. When TRUE, only Version 8.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v8_0 property.
            ## @return a void
            ## 
            def v8_0=(value)
                @v8_0 = value
            end
            ## 
            ## Gets the v9_0 property value. When TRUE, only Version 9.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v9_0
                return @v9_0
            end
            ## 
            ## Sets the v9_0 property value. When TRUE, only Version 9.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v9_0 property.
            ## @return a void
            ## 
            def v9_0=(value)
                @v9_0 = value
            end
        end
    end
end
