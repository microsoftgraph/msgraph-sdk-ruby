require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device Exchange Access State summary
        class DeviceExchangeAccessStateSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Total count of devices with Exchange Access State: Allowed.
            @allowed_device_count
            ## 
            # Total count of devices with Exchange Access State: Blocked.
            @blocked_device_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Total count of devices with Exchange Access State: Quarantined.
            @quarantined_device_count
            ## 
            # Total count of devices for which no Exchange Access State could be found.
            @unavailable_device_count
            ## 
            # Total count of devices with Exchange Access State: Unknown.
            @unknown_device_count
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
            ## Gets the allowedDeviceCount property value. Total count of devices with Exchange Access State: Allowed.
            ## @return a integer
            ## 
            def allowed_device_count
                return @allowed_device_count
            end
            ## 
            ## Sets the allowedDeviceCount property value. Total count of devices with Exchange Access State: Allowed.
            ## @param value Value to set for the allowed_device_count property.
            ## @return a void
            ## 
            def allowed_device_count=(value)
                @allowed_device_count = value
            end
            ## 
            ## Gets the blockedDeviceCount property value. Total count of devices with Exchange Access State: Blocked.
            ## @return a integer
            ## 
            def blocked_device_count
                return @blocked_device_count
            end
            ## 
            ## Sets the blockedDeviceCount property value. Total count of devices with Exchange Access State: Blocked.
            ## @param value Value to set for the blocked_device_count property.
            ## @return a void
            ## 
            def blocked_device_count=(value)
                @blocked_device_count = value
            end
            ## 
            ## Instantiates a new deviceExchangeAccessStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_exchange_access_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceExchangeAccessStateSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedDeviceCount" => lambda {|n| @allowed_device_count = n.get_number_value() },
                    "blockedDeviceCount" => lambda {|n| @blocked_device_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "quarantinedDeviceCount" => lambda {|n| @quarantined_device_count = n.get_number_value() },
                    "unavailableDeviceCount" => lambda {|n| @unavailable_device_count = n.get_number_value() },
                    "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
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
            ## Gets the quarantinedDeviceCount property value. Total count of devices with Exchange Access State: Quarantined.
            ## @return a integer
            ## 
            def quarantined_device_count
                return @quarantined_device_count
            end
            ## 
            ## Sets the quarantinedDeviceCount property value. Total count of devices with Exchange Access State: Quarantined.
            ## @param value Value to set for the quarantined_device_count property.
            ## @return a void
            ## 
            def quarantined_device_count=(value)
                @quarantined_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("allowedDeviceCount", @allowed_device_count)
                writer.write_number_value("blockedDeviceCount", @blocked_device_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("quarantinedDeviceCount", @quarantined_device_count)
                writer.write_number_value("unavailableDeviceCount", @unavailable_device_count)
                writer.write_number_value("unknownDeviceCount", @unknown_device_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the unavailableDeviceCount property value. Total count of devices for which no Exchange Access State could be found.
            ## @return a integer
            ## 
            def unavailable_device_count
                return @unavailable_device_count
            end
            ## 
            ## Sets the unavailableDeviceCount property value. Total count of devices for which no Exchange Access State could be found.
            ## @param value Value to set for the unavailable_device_count property.
            ## @return a void
            ## 
            def unavailable_device_count=(value)
                @unavailable_device_count = value
            end
            ## 
            ## Gets the unknownDeviceCount property value. Total count of devices with Exchange Access State: Unknown.
            ## @return a integer
            ## 
            def unknown_device_count
                return @unknown_device_count
            end
            ## 
            ## Sets the unknownDeviceCount property value. Total count of devices with Exchange Access State: Unknown.
            ## @param value Value to set for the unknown_device_count property.
            ## @return a void
            ## 
            def unknown_device_count=(value)
                @unknown_device_count = value
            end
        end
    end
end
