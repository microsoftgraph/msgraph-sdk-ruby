require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SignInLocation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Provides the city where the sign-in originated. This is calculated using latitude/longitude information from the sign-in activity.
            @city
            ## 
            # Provides the country code info (2 letter code) where the sign-in originated.  This is calculated using latitude/longitude information from the sign-in activity.
            @country_or_region
            ## 
            # Provides the latitude, longitude and altitude where the sign-in originated.
            @geo_coordinates
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Provides the State where the sign-in originated. This is calculated using latitude/longitude information from the sign-in activity.
            @state
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
            ## Gets the city property value. Provides the city where the sign-in originated. This is calculated using latitude/longitude information from the sign-in activity.
            ## @return a string
            ## 
            def city
                return @city
            end
            ## 
            ## Sets the city property value. Provides the city where the sign-in originated. This is calculated using latitude/longitude information from the sign-in activity.
            ## @param value Value to set for the city property.
            ## @return a void
            ## 
            def city=(value)
                @city = value
            end
            ## 
            ## Instantiates a new signInLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countryOrRegion property value. Provides the country code info (2 letter code) where the sign-in originated.  This is calculated using latitude/longitude information from the sign-in activity.
            ## @return a string
            ## 
            def country_or_region
                return @country_or_region
            end
            ## 
            ## Sets the countryOrRegion property value. Provides the country code info (2 letter code) where the sign-in originated.  This is calculated using latitude/longitude information from the sign-in activity.
            ## @param value Value to set for the country_or_region property.
            ## @return a void
            ## 
            def country_or_region=(value)
                @country_or_region = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sign_in_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignInLocation.new
            end
            ## 
            ## Gets the geoCoordinates property value. Provides the latitude, longitude and altitude where the sign-in originated.
            ## @return a geo_coordinates
            ## 
            def geo_coordinates
                return @geo_coordinates
            end
            ## 
            ## Sets the geoCoordinates property value. Provides the latitude, longitude and altitude where the sign-in originated.
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
                return {
                    "city" => lambda {|n| @city = n.get_string_value() },
                    "countryOrRegion" => lambda {|n| @country_or_region = n.get_string_value() },
                    "geoCoordinates" => lambda {|n| @geo_coordinates = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::GeoCoordinates.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_string_value() },
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
                writer.write_string_value("city", @city)
                writer.write_string_value("countryOrRegion", @country_or_region)
                writer.write_object_value("geoCoordinates", @geo_coordinates)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("state", @state)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. Provides the State where the sign-in originated. This is calculated using latitude/longitude information from the sign-in activity.
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Provides the State where the sign-in originated. This is calculated using latitude/longitude information from the sign-in activity.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
