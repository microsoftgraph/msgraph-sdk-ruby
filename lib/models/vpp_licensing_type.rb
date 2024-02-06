require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties for iOS Volume-Purchased Program (Vpp) Licensing Type.
        class VppLicensingType
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Whether the program supports the device licensing type.
            @supports_device_licensing
            ## 
            # Whether the program supports the user licensing type.
            @supports_user_licensing
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
            ## Instantiates a new vppLicensingType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a vpp_licensing_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VppLicensingType.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "supportsDeviceLicensing" => lambda {|n| @supports_device_licensing = n.get_boolean_value() },
                    "supportsUserLicensing" => lambda {|n| @supports_user_licensing = n.get_boolean_value() },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_boolean_value("supportsDeviceLicensing", @supports_device_licensing) unless @supports_device_licensing.nil?
                writer.write_boolean_value("supportsUserLicensing", @supports_user_licensing) unless @supports_user_licensing.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the supportsDeviceLicensing property value. Whether the program supports the device licensing type.
            ## @return a boolean
            ## 
            def supports_device_licensing
                return @supports_device_licensing
            end
            ## 
            ## Sets the supportsDeviceLicensing property value. Whether the program supports the device licensing type.
            ## @param value Value to set for the supportsDeviceLicensing property.
            ## @return a void
            ## 
            def supports_device_licensing=(value)
                @supports_device_licensing = value
            end
            ## 
            ## Gets the supportsUserLicensing property value. Whether the program supports the user licensing type.
            ## @return a boolean
            ## 
            def supports_user_licensing
                return @supports_user_licensing
            end
            ## 
            ## Sets the supportsUserLicensing property value. Whether the program supports the user licensing type.
            ## @param value Value to set for the supportsUserLicensing property.
            ## @return a void
            ## 
            def supports_user_licensing=(value)
                @supports_user_licensing = value
            end
        end
    end
end
