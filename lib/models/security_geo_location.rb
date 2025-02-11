require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityGeoLocation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The city property
            @city
            ## 
            # The countryName property
            @country_name
            ## 
            # The latitude property
            @latitude
            ## 
            # The longitude property
            @longitude
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The state property
            @state
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the city property value. The city property
            ## @return a string
            ## 
            def city
                return @city
            end
            ## 
            ## Sets the city property value. The city property
            ## @param value Value to set for the city property.
            ## @return a void
            ## 
            def city=(value)
                @city = value
            end
            ## 
            ## Instantiates a new SecurityGeoLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countryName property value. The countryName property
            ## @return a string
            ## 
            def country_name
                return @country_name
            end
            ## 
            ## Sets the countryName property value. The countryName property
            ## @param value Value to set for the countryName property.
            ## @return a void
            ## 
            def country_name=(value)
                @country_name = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_geo_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityGeoLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "city" => lambda {|n| @city = n.get_string_value() },
                    "countryName" => lambda {|n| @country_name = n.get_string_value() },
                    "latitude" => lambda {|n| @latitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "longitude" => lambda {|n| @longitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_string_value() },
                }
            end
            ## 
            ## Gets the latitude property value. The latitude property
            ## @return a double
            ## 
            def latitude
                return @latitude
            end
            ## 
            ## Sets the latitude property value. The latitude property
            ## @param value Value to set for the latitude property.
            ## @return a void
            ## 
            def latitude=(value)
                @latitude = value
            end
            ## 
            ## Gets the longitude property value. The longitude property
            ## @return a double
            ## 
            def longitude
                return @longitude
            end
            ## 
            ## Sets the longitude property value. The longitude property
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
                writer.write_string_value("city", @city)
                writer.write_string_value("countryName", @country_name)
                writer.write_object_value("latitude", @latitude)
                writer.write_object_value("longitude", @longitude)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("state", @state)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
