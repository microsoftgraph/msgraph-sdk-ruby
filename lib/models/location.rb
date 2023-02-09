require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Location
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The street address of the location.
            @address
            ## 
            # The geographic coordinates and elevation of the location.
            @coordinates
            ## 
            # The name associated with the location.
            @display_name
            ## 
            # Optional email address of the location.
            @location_email_address
            ## 
            # The type of location. The possible values are: default, conferenceRoom, homeAddress, businessAddress,geoCoordinates, streetAddress, hotel, restaurant, localBusiness, postalAddress. Read-only.
            @location_type
            ## 
            # Optional URI representing the location.
            @location_uri
            ## 
            # The OdataType property
            @odata_type
            ## 
            # For internal use only.
            @unique_id
            ## 
            # For internal use only.
            @unique_id_type
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
            ## Gets the address property value. The street address of the location.
            ## @return a physical_address
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The street address of the location.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Instantiates a new location and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the coordinates property value. The geographic coordinates and elevation of the location.
            ## @return a outlook_geo_coordinates
            ## 
            def coordinates
                return @coordinates
            end
            ## 
            ## Sets the coordinates property value. The geographic coordinates and elevation of the location.
            ## @param value Value to set for the coordinates property.
            ## @return a void
            ## 
            def coordinates=(value)
                @coordinates = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.locationConstraintItem"
                            return LocationConstraintItem.new
                    end
                end
                return Location.new
            end
            ## 
            ## Gets the displayName property value. The name associated with the location.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name associated with the location.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "coordinates" => lambda {|n| @coordinates = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OutlookGeoCoordinates.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "locationEmailAddress" => lambda {|n| @location_email_address = n.get_string_value() },
                    "locationType" => lambda {|n| @location_type = n.get_enum_value(MicrosoftGraph::Models::LocationType) },
                    "locationUri" => lambda {|n| @location_uri = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "uniqueId" => lambda {|n| @unique_id = n.get_string_value() },
                    "uniqueIdType" => lambda {|n| @unique_id_type = n.get_enum_value(MicrosoftGraph::Models::LocationUniqueIdType) },
                }
            end
            ## 
            ## Gets the locationEmailAddress property value. Optional email address of the location.
            ## @return a string
            ## 
            def location_email_address
                return @location_email_address
            end
            ## 
            ## Sets the locationEmailAddress property value. Optional email address of the location.
            ## @param value Value to set for the location_email_address property.
            ## @return a void
            ## 
            def location_email_address=(value)
                @location_email_address = value
            end
            ## 
            ## Gets the locationType property value. The type of location. The possible values are: default, conferenceRoom, homeAddress, businessAddress,geoCoordinates, streetAddress, hotel, restaurant, localBusiness, postalAddress. Read-only.
            ## @return a location_type
            ## 
            def location_type
                return @location_type
            end
            ## 
            ## Sets the locationType property value. The type of location. The possible values are: default, conferenceRoom, homeAddress, businessAddress,geoCoordinates, streetAddress, hotel, restaurant, localBusiness, postalAddress. Read-only.
            ## @param value Value to set for the location_type property.
            ## @return a void
            ## 
            def location_type=(value)
                @location_type = value
            end
            ## 
            ## Gets the locationUri property value. Optional URI representing the location.
            ## @return a string
            ## 
            def location_uri
                return @location_uri
            end
            ## 
            ## Sets the locationUri property value. Optional URI representing the location.
            ## @param value Value to set for the location_uri property.
            ## @return a void
            ## 
            def location_uri=(value)
                @location_uri = value
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
                writer.write_object_value("address", @address)
                writer.write_object_value("coordinates", @coordinates)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("locationEmailAddress", @location_email_address)
                writer.write_enum_value("locationType", @location_type)
                writer.write_string_value("locationUri", @location_uri)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("uniqueId", @unique_id)
                writer.write_enum_value("uniqueIdType", @unique_id_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the uniqueId property value. For internal use only.
            ## @return a string
            ## 
            def unique_id
                return @unique_id
            end
            ## 
            ## Sets the uniqueId property value. For internal use only.
            ## @param value Value to set for the unique_id property.
            ## @return a void
            ## 
            def unique_id=(value)
                @unique_id = value
            end
            ## 
            ## Gets the uniqueIdType property value. For internal use only.
            ## @return a location_unique_id_type
            ## 
            def unique_id_type
                return @unique_id_type
            end
            ## 
            ## Sets the uniqueIdType property value. For internal use only.
            ## @param value Value to set for the unique_id_type property.
            ## @return a void
            ## 
            def unique_id_type=(value)
                @unique_id_type = value
            end
        end
    end
end
