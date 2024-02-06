require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics work from anywhere Windows 10 devices summary.
        class UserExperienceAnalyticsWindows10DevicesSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The count of Windows 10 devices that have unsupported OS versions. Read-only.
            @unsupported_o_sversion_device_count
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
            ## Instantiates a new userExperienceAnalyticsWindows10DevicesSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_windows10_devices_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsWindows10DevicesSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "unsupportedOSversionDeviceCount" => lambda {|n| @unsupported_o_sversion_device_count = n.get_number_value() },
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
                writer.write_number_value("unsupportedOSversionDeviceCount", @unsupported_o_sversion_device_count) unless @unsupported_o_sversion_device_count.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the unsupportedOSversionDeviceCount property value. The count of Windows 10 devices that have unsupported OS versions. Read-only.
            ## @return a integer
            ## 
            def unsupported_o_sversion_device_count
                return @unsupported_o_sversion_device_count
            end
            ## 
            ## Sets the unsupportedOSversionDeviceCount property value. The count of Windows 10 devices that have unsupported OS versions. Read-only.
            ## @param value Value to set for the unsupportedOSversionDeviceCount property.
            ## @return a void
            ## 
            def unsupported_o_sversion_device_count=(value)
                @unsupported_o_sversion_device_count = value
            end
        end
    end
end
