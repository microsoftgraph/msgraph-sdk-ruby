require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LocateDeviceActionResult < MicrosoftGraph::Models::DeviceActionResult
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # device location
            @device_location
            ## 
            ## Instantiates a new LocateDeviceActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a locate_device_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LocateDeviceActionResult.new
            end
            ## 
            ## Gets the deviceLocation property value. device location
            ## @return a device_geo_location
            ## 
            def device_location
                return @device_location
            end
            ## 
            ## Sets the deviceLocation property value. device location
            ## @param value Value to set for the device_location property.
            ## @return a void
            ## 
            def device_location=(value)
                @device_location = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceLocation" => lambda {|n| @device_location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceGeoLocation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("deviceLocation", @device_location)
            end
        end
    end
end
