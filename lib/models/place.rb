require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Place < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The street address of the place.
            @address
            ## 
            # The name associated with the place.
            @display_name
            ## 
            # Specifies the place location in latitude, longitude and (optionally) altitude coordinates.
            @geo_coordinates
            ## 
            # The phone number of the place.
            @phone
            ## 
            ## Gets the address property value. The street address of the place.
            ## @return a physical_address
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The street address of the place.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Instantiates a new place and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a place
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.room"
                            return Room.new
                        when "#microsoft.graph.roomList"
                            return RoomList.new
                    end
                end
                return Place.new
            end
            ## 
            ## Gets the displayName property value. The name associated with the place.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name associated with the place.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the geoCoordinates property value. Specifies the place location in latitude, longitude and (optionally) altitude coordinates.
            ## @return a outlook_geo_coordinates
            ## 
            def geo_coordinates
                return @geo_coordinates
            end
            ## 
            ## Sets the geoCoordinates property value. Specifies the place location in latitude, longitude and (optionally) altitude coordinates.
            ## @param value Value to set for the geo_coordinates property.
            ## @return a void
            ## 
            def geo_coordinates=(value)
                @geo_coordinates = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "geoCoordinates" => lambda {|n| @geo_coordinates = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OutlookGeoCoordinates.create_from_discriminator_value(pn) }) },
                    "phone" => lambda {|n| @phone = n.get_string_value() },
                })
            end
            ## 
            ## Gets the phone property value. The phone number of the place.
            ## @return a string
            ## 
            def phone
                return @phone
            end
            ## 
            ## Sets the phone property value. The phone number of the place.
            ## @param value Value to set for the phone property.
            ## @return a void
            ## 
            def phone=(value)
                @phone = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("address", @address)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("geoCoordinates", @geo_coordinates)
                writer.write_string_value("phone", @phone)
            end
        end
    end
end
