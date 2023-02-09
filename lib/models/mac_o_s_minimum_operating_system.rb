require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The minimum operating system required for a macOS app.
        class MacOSMinimumOperatingSystem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # When TRUE, indicates OS X 10.10 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_10
            ## 
            # When TRUE, indicates OS X 10.11 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_11
            ## 
            # When TRUE, indicates macOS 10.12 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_12
            ## 
            # When TRUE, indicates macOS 10.13 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_13
            ## 
            # When TRUE, indicates macOS 10.14 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_14
            ## 
            # When TRUE, indicates macOS 10.15 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_15
            ## 
            # When TRUE, indicates Mac OS X 10.7 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_7
            ## 
            # When TRUE, indicates OS X 10.8 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_8
            ## 
            # When TRUE, indicates OS X 10.9 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v10_9
            ## 
            # When TRUE, indicates macOS 11.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v11_0
            ## 
            # When TRUE, indicates macOS 12.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v12_0
            ## 
            # When TRUE, indicates macOS 13.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            @v13_0
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
            ## Instantiates a new macOSMinimumOperatingSystem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_minimum_operating_system
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSMinimumOperatingSystem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "v10_10" => lambda {|n| @v10_10 = n.get_boolean_value() },
                    "v10_11" => lambda {|n| @v10_11 = n.get_boolean_value() },
                    "v10_12" => lambda {|n| @v10_12 = n.get_boolean_value() },
                    "v10_13" => lambda {|n| @v10_13 = n.get_boolean_value() },
                    "v10_14" => lambda {|n| @v10_14 = n.get_boolean_value() },
                    "v10_15" => lambda {|n| @v10_15 = n.get_boolean_value() },
                    "v10_7" => lambda {|n| @v10_7 = n.get_boolean_value() },
                    "v10_8" => lambda {|n| @v10_8 = n.get_boolean_value() },
                    "v10_9" => lambda {|n| @v10_9 = n.get_boolean_value() },
                    "v11_0" => lambda {|n| @v11_0 = n.get_boolean_value() },
                    "v12_0" => lambda {|n| @v12_0 = n.get_boolean_value() },
                    "v13_0" => lambda {|n| @v13_0 = n.get_boolean_value() },
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
                writer.write_boolean_value("v10_10", @v10_10)
                writer.write_boolean_value("v10_11", @v10_11)
                writer.write_boolean_value("v10_12", @v10_12)
                writer.write_boolean_value("v10_13", @v10_13)
                writer.write_boolean_value("v10_14", @v10_14)
                writer.write_boolean_value("v10_15", @v10_15)
                writer.write_boolean_value("v10_7", @v10_7)
                writer.write_boolean_value("v10_8", @v10_8)
                writer.write_boolean_value("v10_9", @v10_9)
                writer.write_boolean_value("v11_0", @v11_0)
                writer.write_boolean_value("v12_0", @v12_0)
                writer.write_boolean_value("v13_0", @v13_0)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the v10_10 property value. When TRUE, indicates OS X 10.10 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_10
                return @v10_10
            end
            ## 
            ## Sets the v10_10 property value. When TRUE, indicates OS X 10.10 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_10 property.
            ## @return a void
            ## 
            def v10_10=(value)
                @v10_10 = value
            end
            ## 
            ## Gets the v10_11 property value. When TRUE, indicates OS X 10.11 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_11
                return @v10_11
            end
            ## 
            ## Sets the v10_11 property value. When TRUE, indicates OS X 10.11 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_11 property.
            ## @return a void
            ## 
            def v10_11=(value)
                @v10_11 = value
            end
            ## 
            ## Gets the v10_12 property value. When TRUE, indicates macOS 10.12 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_12
                return @v10_12
            end
            ## 
            ## Sets the v10_12 property value. When TRUE, indicates macOS 10.12 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_12 property.
            ## @return a void
            ## 
            def v10_12=(value)
                @v10_12 = value
            end
            ## 
            ## Gets the v10_13 property value. When TRUE, indicates macOS 10.13 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_13
                return @v10_13
            end
            ## 
            ## Sets the v10_13 property value. When TRUE, indicates macOS 10.13 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_13 property.
            ## @return a void
            ## 
            def v10_13=(value)
                @v10_13 = value
            end
            ## 
            ## Gets the v10_14 property value. When TRUE, indicates macOS 10.14 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_14
                return @v10_14
            end
            ## 
            ## Sets the v10_14 property value. When TRUE, indicates macOS 10.14 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_14 property.
            ## @return a void
            ## 
            def v10_14=(value)
                @v10_14 = value
            end
            ## 
            ## Gets the v10_15 property value. When TRUE, indicates macOS 10.15 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_15
                return @v10_15
            end
            ## 
            ## Sets the v10_15 property value. When TRUE, indicates macOS 10.15 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_15 property.
            ## @return a void
            ## 
            def v10_15=(value)
                @v10_15 = value
            end
            ## 
            ## Gets the v10_7 property value. When TRUE, indicates Mac OS X 10.7 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_7
                return @v10_7
            end
            ## 
            ## Sets the v10_7 property value. When TRUE, indicates Mac OS X 10.7 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_7 property.
            ## @return a void
            ## 
            def v10_7=(value)
                @v10_7 = value
            end
            ## 
            ## Gets the v10_8 property value. When TRUE, indicates OS X 10.8 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_8
                return @v10_8
            end
            ## 
            ## Sets the v10_8 property value. When TRUE, indicates OS X 10.8 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_8 property.
            ## @return a void
            ## 
            def v10_8=(value)
                @v10_8 = value
            end
            ## 
            ## Gets the v10_9 property value. When TRUE, indicates OS X 10.9 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v10_9
                return @v10_9
            end
            ## 
            ## Sets the v10_9 property value. When TRUE, indicates OS X 10.9 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v10_9 property.
            ## @return a void
            ## 
            def v10_9=(value)
                @v10_9 = value
            end
            ## 
            ## Gets the v11_0 property value. When TRUE, indicates macOS 11.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v11_0
                return @v11_0
            end
            ## 
            ## Sets the v11_0 property value. When TRUE, indicates macOS 11.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v11_0 property.
            ## @return a void
            ## 
            def v11_0=(value)
                @v11_0 = value
            end
            ## 
            ## Gets the v12_0 property value. When TRUE, indicates macOS 12.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v12_0
                return @v12_0
            end
            ## 
            ## Sets the v12_0 property value. When TRUE, indicates macOS 12.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v12_0 property.
            ## @return a void
            ## 
            def v12_0=(value)
                @v12_0 = value
            end
            ## 
            ## Gets the v13_0 property value. When TRUE, indicates macOS 13.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @return a boolean
            ## 
            def v13_0
                return @v13_0
            end
            ## 
            ## Sets the v13_0 property value. When TRUE, indicates macOS 13.0 or later is required to install the app. When FALSE, indicates some other OS version is the minimum OS to install the app. Default value is FALSE.
            ## @param value Value to set for the v13_0 property.
            ## @return a void
            ## 
            def v13_0=(value)
                @v13_0 = value
            end
        end
    end
end
