require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrinterLocation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The altitude, in meters, that the printer is located at.
            @altitude_in_meters
            ## 
            # The building that the printer is located in.
            @building
            ## 
            # The city that the printer is located in.
            @city
            ## 
            # The country or region that the printer is located in.
            @country_or_region
            ## 
            # The floor that the printer is located on. Only numerical values are supported right now.
            @floor
            ## 
            # The description of the floor that the printer is located on.
            @floor_description
            ## 
            # The latitude that the printer is located at.
            @latitude
            ## 
            # The longitude that the printer is located at.
            @longitude
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The organizational hierarchy that the printer belongs to. The elements should be in hierarchical order.
            @organization
            ## 
            # The postal code that the printer is located in.
            @postal_code
            ## 
            # The description of the room that the printer is located in.
            @room_description
            ## 
            # The room that the printer is located in. Only numerical values are supported right now.
            @room_name
            ## 
            # The site that the printer is located in.
            @site
            ## 
            # The state or province that the printer is located in.
            @state_or_province
            ## 
            # The street address where the printer is located.
            @street_address
            ## 
            # The subdivision that the printer is located in. The elements should be in hierarchical order.
            @subdivision
            ## 
            # The subunit property
            @subunit
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
            ## Gets the altitudeInMeters property value. The altitude, in meters, that the printer is located at.
            ## @return a integer
            ## 
            def altitude_in_meters
                return @altitude_in_meters
            end
            ## 
            ## Sets the altitudeInMeters property value. The altitude, in meters, that the printer is located at.
            ## @param value Value to set for the altitude_in_meters property.
            ## @return a void
            ## 
            def altitude_in_meters=(value)
                @altitude_in_meters = value
            end
            ## 
            ## Gets the building property value. The building that the printer is located in.
            ## @return a string
            ## 
            def building
                return @building
            end
            ## 
            ## Sets the building property value. The building that the printer is located in.
            ## @param value Value to set for the building property.
            ## @return a void
            ## 
            def building=(value)
                @building = value
            end
            ## 
            ## Gets the city property value. The city that the printer is located in.
            ## @return a string
            ## 
            def city
                return @city
            end
            ## 
            ## Sets the city property value. The city that the printer is located in.
            ## @param value Value to set for the city property.
            ## @return a void
            ## 
            def city=(value)
                @city = value
            end
            ## 
            ## Instantiates a new printerLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countryOrRegion property value. The country or region that the printer is located in.
            ## @return a string
            ## 
            def country_or_region
                return @country_or_region
            end
            ## 
            ## Sets the countryOrRegion property value. The country or region that the printer is located in.
            ## @param value Value to set for the country_or_region property.
            ## @return a void
            ## 
            def country_or_region=(value)
                @country_or_region = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a printer_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrinterLocation.new
            end
            ## 
            ## Gets the floor property value. The floor that the printer is located on. Only numerical values are supported right now.
            ## @return a string
            ## 
            def floor
                return @floor
            end
            ## 
            ## Sets the floor property value. The floor that the printer is located on. Only numerical values are supported right now.
            ## @param value Value to set for the floor property.
            ## @return a void
            ## 
            def floor=(value)
                @floor = value
            end
            ## 
            ## Gets the floorDescription property value. The description of the floor that the printer is located on.
            ## @return a string
            ## 
            def floor_description
                return @floor_description
            end
            ## 
            ## Sets the floorDescription property value. The description of the floor that the printer is located on.
            ## @param value Value to set for the floor_description property.
            ## @return a void
            ## 
            def floor_description=(value)
                @floor_description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "altitudeInMeters" => lambda {|n| @altitude_in_meters = n.get_number_value() },
                    "building" => lambda {|n| @building = n.get_string_value() },
                    "city" => lambda {|n| @city = n.get_string_value() },
                    "countryOrRegion" => lambda {|n| @country_or_region = n.get_string_value() },
                    "floor" => lambda {|n| @floor = n.get_string_value() },
                    "floorDescription" => lambda {|n| @floor_description = n.get_string_value() },
                    "latitude" => lambda {|n| @latitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "longitude" => lambda {|n| @longitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organization" => lambda {|n| @organization = n.get_collection_of_primitive_values(String) },
                    "postalCode" => lambda {|n| @postal_code = n.get_string_value() },
                    "roomDescription" => lambda {|n| @room_description = n.get_string_value() },
                    "roomName" => lambda {|n| @room_name = n.get_string_value() },
                    "site" => lambda {|n| @site = n.get_string_value() },
                    "stateOrProvince" => lambda {|n| @state_or_province = n.get_string_value() },
                    "streetAddress" => lambda {|n| @street_address = n.get_string_value() },
                    "subdivision" => lambda {|n| @subdivision = n.get_collection_of_primitive_values(String) },
                    "subunit" => lambda {|n| @subunit = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the latitude property value. The latitude that the printer is located at.
            ## @return a double
            ## 
            def latitude
                return @latitude
            end
            ## 
            ## Sets the latitude property value. The latitude that the printer is located at.
            ## @param value Value to set for the latitude property.
            ## @return a void
            ## 
            def latitude=(value)
                @latitude = value
            end
            ## 
            ## Gets the longitude property value. The longitude that the printer is located at.
            ## @return a double
            ## 
            def longitude
                return @longitude
            end
            ## 
            ## Sets the longitude property value. The longitude that the printer is located at.
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
            ## Gets the organization property value. The organizational hierarchy that the printer belongs to. The elements should be in hierarchical order.
            ## @return a string
            ## 
            def organization
                return @organization
            end
            ## 
            ## Sets the organization property value. The organizational hierarchy that the printer belongs to. The elements should be in hierarchical order.
            ## @param value Value to set for the organization property.
            ## @return a void
            ## 
            def organization=(value)
                @organization = value
            end
            ## 
            ## Gets the postalCode property value. The postal code that the printer is located in.
            ## @return a string
            ## 
            def postal_code
                return @postal_code
            end
            ## 
            ## Sets the postalCode property value. The postal code that the printer is located in.
            ## @param value Value to set for the postal_code property.
            ## @return a void
            ## 
            def postal_code=(value)
                @postal_code = value
            end
            ## 
            ## Gets the roomDescription property value. The description of the room that the printer is located in.
            ## @return a string
            ## 
            def room_description
                return @room_description
            end
            ## 
            ## Sets the roomDescription property value. The description of the room that the printer is located in.
            ## @param value Value to set for the room_description property.
            ## @return a void
            ## 
            def room_description=(value)
                @room_description = value
            end
            ## 
            ## Gets the roomName property value. The room that the printer is located in. Only numerical values are supported right now.
            ## @return a string
            ## 
            def room_name
                return @room_name
            end
            ## 
            ## Sets the roomName property value. The room that the printer is located in. Only numerical values are supported right now.
            ## @param value Value to set for the room_name property.
            ## @return a void
            ## 
            def room_name=(value)
                @room_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("altitudeInMeters", @altitude_in_meters)
                writer.write_string_value("building", @building)
                writer.write_string_value("city", @city)
                writer.write_string_value("countryOrRegion", @country_or_region)
                writer.write_string_value("floor", @floor)
                writer.write_string_value("floorDescription", @floor_description)
                writer.write_object_value("latitude", @latitude)
                writer.write_object_value("longitude", @longitude)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("organization", @organization)
                writer.write_string_value("postalCode", @postal_code)
                writer.write_string_value("roomDescription", @room_description)
                writer.write_string_value("roomName", @room_name)
                writer.write_string_value("site", @site)
                writer.write_string_value("stateOrProvince", @state_or_province)
                writer.write_string_value("streetAddress", @street_address)
                writer.write_collection_of_primitive_values("subdivision", @subdivision)
                writer.write_collection_of_primitive_values("subunit", @subunit)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the site property value. The site that the printer is located in.
            ## @return a string
            ## 
            def site
                return @site
            end
            ## 
            ## Sets the site property value. The site that the printer is located in.
            ## @param value Value to set for the site property.
            ## @return a void
            ## 
            def site=(value)
                @site = value
            end
            ## 
            ## Gets the stateOrProvince property value. The state or province that the printer is located in.
            ## @return a string
            ## 
            def state_or_province
                return @state_or_province
            end
            ## 
            ## Sets the stateOrProvince property value. The state or province that the printer is located in.
            ## @param value Value to set for the state_or_province property.
            ## @return a void
            ## 
            def state_or_province=(value)
                @state_or_province = value
            end
            ## 
            ## Gets the streetAddress property value. The street address where the printer is located.
            ## @return a string
            ## 
            def street_address
                return @street_address
            end
            ## 
            ## Sets the streetAddress property value. The street address where the printer is located.
            ## @param value Value to set for the street_address property.
            ## @return a void
            ## 
            def street_address=(value)
                @street_address = value
            end
            ## 
            ## Gets the subdivision property value. The subdivision that the printer is located in. The elements should be in hierarchical order.
            ## @return a string
            ## 
            def subdivision
                return @subdivision
            end
            ## 
            ## Sets the subdivision property value. The subdivision that the printer is located in. The elements should be in hierarchical order.
            ## @param value Value to set for the subdivision property.
            ## @return a void
            ## 
            def subdivision=(value)
                @subdivision = value
            end
            ## 
            ## Gets the subunit property value. The subunit property
            ## @return a string
            ## 
            def subunit
                return @subunit
            end
            ## 
            ## Sets the subunit property value. The subunit property
            ## @param value Value to set for the subunit property.
            ## @return a void
            ## 
            def subunit=(value)
                @subunit = value
            end
        end
    end
end
