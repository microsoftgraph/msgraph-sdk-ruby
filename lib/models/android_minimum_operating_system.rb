require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties for the minimum operating system required for an Android mobile app.
        class AndroidMinimumOperatingSystem
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
            # When TRUE, only Version 4.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v4_0
            ## 
            # When TRUE, only Version 4.0.3 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v4_0_3
            ## 
            # When TRUE, only Version 4.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v4_1
            ## 
            # When TRUE, only Version 4.2 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v4_2
            ## 
            # When TRUE, only Version 4.3 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v4_3
            ## 
            # When TRUE, only Version 4.4 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v4_4
            ## 
            # When TRUE, only Version 5.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v5_0
            ## 
            # When TRUE, only Version 5.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v5_1
            ## 
            # When TRUE, only Version 6.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v6_0
            ## 
            # When TRUE, only Version 7.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v7_0
            ## 
            # When TRUE, only Version 7.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v7_1
            ## 
            # When TRUE, only Version 8.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v8_0
            ## 
            # When TRUE, only Version 8.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            @v8_1
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
            ## Instantiates a new androidMinimumOperatingSystem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_minimum_operating_system
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidMinimumOperatingSystem.new
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
                    "v4_0" => lambda {|n| @v4_0 = n.get_boolean_value() },
                    "v4_0_3" => lambda {|n| @v4_0_3 = n.get_boolean_value() },
                    "v4_1" => lambda {|n| @v4_1 = n.get_boolean_value() },
                    "v4_2" => lambda {|n| @v4_2 = n.get_boolean_value() },
                    "v4_3" => lambda {|n| @v4_3 = n.get_boolean_value() },
                    "v4_4" => lambda {|n| @v4_4 = n.get_boolean_value() },
                    "v5_0" => lambda {|n| @v5_0 = n.get_boolean_value() },
                    "v5_1" => lambda {|n| @v5_1 = n.get_boolean_value() },
                    "v6_0" => lambda {|n| @v6_0 = n.get_boolean_value() },
                    "v7_0" => lambda {|n| @v7_0 = n.get_boolean_value() },
                    "v7_1" => lambda {|n| @v7_1 = n.get_boolean_value() },
                    "v8_0" => lambda {|n| @v8_0 = n.get_boolean_value() },
                    "v8_1" => lambda {|n| @v8_1 = n.get_boolean_value() },
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
                writer.write_boolean_value("v4_0", @v4_0)
                writer.write_boolean_value("v4_0_3", @v4_0_3)
                writer.write_boolean_value("v4_1", @v4_1)
                writer.write_boolean_value("v4_2", @v4_2)
                writer.write_boolean_value("v4_3", @v4_3)
                writer.write_boolean_value("v4_4", @v4_4)
                writer.write_boolean_value("v5_0", @v5_0)
                writer.write_boolean_value("v5_1", @v5_1)
                writer.write_boolean_value("v6_0", @v6_0)
                writer.write_boolean_value("v7_0", @v7_0)
                writer.write_boolean_value("v7_1", @v7_1)
                writer.write_boolean_value("v8_0", @v8_0)
                writer.write_boolean_value("v8_1", @v8_1)
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
            ## Gets the v4_0 property value. When TRUE, only Version 4.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v4_0
                return @v4_0
            end
            ## 
            ## Sets the v4_0 property value. When TRUE, only Version 4.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v4_0 property.
            ## @return a void
            ## 
            def v4_0=(value)
                @v4_0 = value
            end
            ## 
            ## Gets the v4_0_3 property value. When TRUE, only Version 4.0.3 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v4_0_3
                return @v4_0_3
            end
            ## 
            ## Sets the v4_0_3 property value. When TRUE, only Version 4.0.3 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v4_0_3 property.
            ## @return a void
            ## 
            def v4_0_3=(value)
                @v4_0_3 = value
            end
            ## 
            ## Gets the v4_1 property value. When TRUE, only Version 4.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v4_1
                return @v4_1
            end
            ## 
            ## Sets the v4_1 property value. When TRUE, only Version 4.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v4_1 property.
            ## @return a void
            ## 
            def v4_1=(value)
                @v4_1 = value
            end
            ## 
            ## Gets the v4_2 property value. When TRUE, only Version 4.2 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v4_2
                return @v4_2
            end
            ## 
            ## Sets the v4_2 property value. When TRUE, only Version 4.2 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v4_2 property.
            ## @return a void
            ## 
            def v4_2=(value)
                @v4_2 = value
            end
            ## 
            ## Gets the v4_3 property value. When TRUE, only Version 4.3 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v4_3
                return @v4_3
            end
            ## 
            ## Sets the v4_3 property value. When TRUE, only Version 4.3 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v4_3 property.
            ## @return a void
            ## 
            def v4_3=(value)
                @v4_3 = value
            end
            ## 
            ## Gets the v4_4 property value. When TRUE, only Version 4.4 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v4_4
                return @v4_4
            end
            ## 
            ## Sets the v4_4 property value. When TRUE, only Version 4.4 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v4_4 property.
            ## @return a void
            ## 
            def v4_4=(value)
                @v4_4 = value
            end
            ## 
            ## Gets the v5_0 property value. When TRUE, only Version 5.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v5_0
                return @v5_0
            end
            ## 
            ## Sets the v5_0 property value. When TRUE, only Version 5.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v5_0 property.
            ## @return a void
            ## 
            def v5_0=(value)
                @v5_0 = value
            end
            ## 
            ## Gets the v5_1 property value. When TRUE, only Version 5.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v5_1
                return @v5_1
            end
            ## 
            ## Sets the v5_1 property value. When TRUE, only Version 5.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v5_1 property.
            ## @return a void
            ## 
            def v5_1=(value)
                @v5_1 = value
            end
            ## 
            ## Gets the v6_0 property value. When TRUE, only Version 6.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v6_0
                return @v6_0
            end
            ## 
            ## Sets the v6_0 property value. When TRUE, only Version 6.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v6_0 property.
            ## @return a void
            ## 
            def v6_0=(value)
                @v6_0 = value
            end
            ## 
            ## Gets the v7_0 property value. When TRUE, only Version 7.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v7_0
                return @v7_0
            end
            ## 
            ## Sets the v7_0 property value. When TRUE, only Version 7.0 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v7_0 property.
            ## @return a void
            ## 
            def v7_0=(value)
                @v7_0 = value
            end
            ## 
            ## Gets the v7_1 property value. When TRUE, only Version 7.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v7_1
                return @v7_1
            end
            ## 
            ## Sets the v7_1 property value. When TRUE, only Version 7.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v7_1 property.
            ## @return a void
            ## 
            def v7_1=(value)
                @v7_1 = value
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
            ## Gets the v8_1 property value. When TRUE, only Version 8.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @return a boolean
            ## 
            def v8_1
                return @v8_1
            end
            ## 
            ## Sets the v8_1 property value. When TRUE, only Version 8.1 or later is supported. Default value is FALSE. Exactly one of the minimum operating system boolean values will be TRUE.
            ## @param value Value to set for the v8_1 property.
            ## @return a void
            ## 
            def v8_1=(value)
                @v8_1 = value
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
