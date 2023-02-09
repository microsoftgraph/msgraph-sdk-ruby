require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device location
        class DeviceGeoLocation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Altitude, given in meters above sea level
            @altitude
            ## 
            # Heading in degrees from true north
            @heading
            ## 
            # Accuracy of longitude and latitude in meters
            @horizontal_accuracy
            ## 
            # Time at which location was recorded, relative to UTC
            @last_collected_date_time
            ## 
            # Latitude coordinate of the device's location
            @latitude
            ## 
            # Longitude coordinate of the device's location
            @longitude
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Speed the device is traveling in meters per second
            @speed
            ## 
            # Accuracy of altitude in meters
            @vertical_accuracy
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
            ## Gets the altitude property value. Altitude, given in meters above sea level
            ## @return a double
            ## 
            def altitude
                return @altitude
            end
            ## 
            ## Sets the altitude property value. Altitude, given in meters above sea level
            ## @param value Value to set for the altitude property.
            ## @return a void
            ## 
            def altitude=(value)
                @altitude = value
            end
            ## 
            ## Instantiates a new deviceGeoLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_geo_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceGeoLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "altitude" => lambda {|n| @altitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "heading" => lambda {|n| @heading = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "horizontalAccuracy" => lambda {|n| @horizontal_accuracy = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "lastCollectedDateTime" => lambda {|n| @last_collected_date_time = n.get_date_time_value() },
                    "latitude" => lambda {|n| @latitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "longitude" => lambda {|n| @longitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "speed" => lambda {|n| @speed = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "verticalAccuracy" => lambda {|n| @vertical_accuracy = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the heading property value. Heading in degrees from true north
            ## @return a double
            ## 
            def heading
                return @heading
            end
            ## 
            ## Sets the heading property value. Heading in degrees from true north
            ## @param value Value to set for the heading property.
            ## @return a void
            ## 
            def heading=(value)
                @heading = value
            end
            ## 
            ## Gets the horizontalAccuracy property value. Accuracy of longitude and latitude in meters
            ## @return a double
            ## 
            def horizontal_accuracy
                return @horizontal_accuracy
            end
            ## 
            ## Sets the horizontalAccuracy property value. Accuracy of longitude and latitude in meters
            ## @param value Value to set for the horizontal_accuracy property.
            ## @return a void
            ## 
            def horizontal_accuracy=(value)
                @horizontal_accuracy = value
            end
            ## 
            ## Gets the lastCollectedDateTime property value. Time at which location was recorded, relative to UTC
            ## @return a date_time
            ## 
            def last_collected_date_time
                return @last_collected_date_time
            end
            ## 
            ## Sets the lastCollectedDateTime property value. Time at which location was recorded, relative to UTC
            ## @param value Value to set for the last_collected_date_time property.
            ## @return a void
            ## 
            def last_collected_date_time=(value)
                @last_collected_date_time = value
            end
            ## 
            ## Gets the latitude property value. Latitude coordinate of the device's location
            ## @return a double
            ## 
            def latitude
                return @latitude
            end
            ## 
            ## Sets the latitude property value. Latitude coordinate of the device's location
            ## @param value Value to set for the latitude property.
            ## @return a void
            ## 
            def latitude=(value)
                @latitude = value
            end
            ## 
            ## Gets the longitude property value. Longitude coordinate of the device's location
            ## @return a double
            ## 
            def longitude
                return @longitude
            end
            ## 
            ## Sets the longitude property value. Longitude coordinate of the device's location
            ## @param value Value to set for the longitude property.
            ## @return a void
            ## 
            def longitude=(value)
                @longitude = value
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
                writer.write_object_value("altitude", @altitude)
                writer.write_object_value("heading", @heading)
                writer.write_object_value("horizontalAccuracy", @horizontal_accuracy)
                writer.write_date_time_value("lastCollectedDateTime", @last_collected_date_time)
                writer.write_object_value("latitude", @latitude)
                writer.write_object_value("longitude", @longitude)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("speed", @speed)
                writer.write_object_value("verticalAccuracy", @vertical_accuracy)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the speed property value. Speed the device is traveling in meters per second
            ## @return a double
            ## 
            def speed
                return @speed
            end
            ## 
            ## Sets the speed property value. Speed the device is traveling in meters per second
            ## @param value Value to set for the speed property.
            ## @return a void
            ## 
            def speed=(value)
                @speed = value
            end
            ## 
            ## Gets the verticalAccuracy property value. Accuracy of altitude in meters
            ## @return a double
            ## 
            def vertical_accuracy
                return @vertical_accuracy
            end
            ## 
            ## Sets the verticalAccuracy property value. Accuracy of altitude in meters
            ## @param value Value to set for the vertical_accuracy property.
            ## @return a void
            ## 
            def vertical_accuracy=(value)
                @vertical_accuracy = value
            end
        end
    end
end
