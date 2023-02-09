require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties of the possible iOS device types the mobile app can run on.
        class IosDeviceType
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Whether the app should run on iPads.
            @i_pad
            ## 
            # Whether the app should run on iPhones and iPods.
            @i_phone_and_i_pod
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
            ## Instantiates a new iosDeviceType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_device_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosDeviceType.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "iPad" => lambda {|n| @i_pad = n.get_boolean_value() },
                    "iPhoneAndIPod" => lambda {|n| @i_phone_and_i_pod = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the iPad property value. Whether the app should run on iPads.
            ## @return a boolean
            ## 
            def i_pad
                return @i_pad
            end
            ## 
            ## Sets the iPad property value. Whether the app should run on iPads.
            ## @param value Value to set for the i_pad property.
            ## @return a void
            ## 
            def i_pad=(value)
                @i_pad = value
            end
            ## 
            ## Gets the iPhoneAndIPod property value. Whether the app should run on iPhones and iPods.
            ## @return a boolean
            ## 
            def i_phone_and_i_pod
                return @i_phone_and_i_pod
            end
            ## 
            ## Sets the iPhoneAndIPod property value. Whether the app should run on iPhones and iPods.
            ## @param value Value to set for the i_phone_and_i_pod property.
            ## @return a void
            ## 
            def i_phone_and_i_pod=(value)
                @i_phone_and_i_pod = value
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
                writer.write_boolean_value("iPad", @i_pad)
                writer.write_boolean_value("iPhoneAndIPod", @i_phone_and_i_pod)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
