require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OutlookGeoCoordinates
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
            @accuracy
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The altitude of the location.
            @altitude
            ## 
            # The accuracy of the altitude.
            @altitude_accuracy
            ## 
            # The latitude of the location.
            @latitude
            ## 
            # The longitude of the location.
            @longitude
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the accuracy property value. The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
            ## @return a outlook_geo_coordinates_accuracy
            ## 
            def accuracy
                return @accuracy
            end
            ## 
            ## Sets the accuracy property value. The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.
            ## @param value Value to set for the accuracy property.
            ## @return a void
            ## 
            def accuracy=(value)
                @accuracy = value
            end
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
            ## Gets the altitude property value. The altitude of the location.
            ## @return a outlook_geo_coordinates_altitude
            ## 
            def altitude
                return @altitude
            end
            ## 
            ## Sets the altitude property value. The altitude of the location.
            ## @param value Value to set for the altitude property.
            ## @return a void
            ## 
            def altitude=(value)
                @altitude = value
            end
            ## 
            ## Gets the altitudeAccuracy property value. The accuracy of the altitude.
            ## @return a outlook_geo_coordinates_altitude_accuracy
            ## 
            def altitude_accuracy
                return @altitude_accuracy
            end
            ## 
            ## Sets the altitudeAccuracy property value. The accuracy of the altitude.
            ## @param value Value to set for the altitudeAccuracy property.
            ## @return a void
            ## 
            def altitude_accuracy=(value)
                @altitude_accuracy = value
            end
            ## 
            ## Instantiates a new OutlookGeoCoordinates and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a outlook_geo_coordinates
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OutlookGeoCoordinates.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accuracy" => lambda {|n| @accuracy = n.get_object_value(lambda {|pn| OutlookGeoCoordinates::OutlookGeoCoordinatesAccuracy.create_from_discriminator_value(pn) }) },
                    "altitude" => lambda {|n| @altitude = n.get_object_value(lambda {|pn| OutlookGeoCoordinates::OutlookGeoCoordinatesAltitude.create_from_discriminator_value(pn) }) },
                    "altitudeAccuracy" => lambda {|n| @altitude_accuracy = n.get_object_value(lambda {|pn| OutlookGeoCoordinates::OutlookGeoCoordinatesAltitudeAccuracy.create_from_discriminator_value(pn) }) },
                    "latitude" => lambda {|n| @latitude = n.get_object_value(lambda {|pn| OutlookGeoCoordinates::OutlookGeoCoordinatesLatitude.create_from_discriminator_value(pn) }) },
                    "longitude" => lambda {|n| @longitude = n.get_object_value(lambda {|pn| OutlookGeoCoordinates::OutlookGeoCoordinatesLongitude.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the latitude property value. The latitude of the location.
            ## @return a outlook_geo_coordinates_latitude
            ## 
            def latitude
                return @latitude
            end
            ## 
            ## Sets the latitude property value. The latitude of the location.
            ## @param value Value to set for the latitude property.
            ## @return a void
            ## 
            def latitude=(value)
                @latitude = value
            end
            ## 
            ## Gets the longitude property value. The longitude of the location.
            ## @return a outlook_geo_coordinates_longitude
            ## 
            def longitude
                return @longitude
            end
            ## 
            ## Sets the longitude property value. The longitude of the location.
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
                writer.write_object_value("accuracy", @accuracy)
                writer.write_object_value("altitude", @altitude)
                writer.write_object_value("altitudeAccuracy", @altitude_accuracy)
                writer.write_object_value("latitude", @latitude)
                writer.write_object_value("longitude", @longitude)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class OutlookGeoCoordinatesAccuracy
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a outlook_geo_coordinates_accuracy
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return OutlookGeoCoordinatesAccuracy.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class OutlookGeoCoordinatesAltitude
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a outlook_geo_coordinates_altitude
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return OutlookGeoCoordinatesAltitude.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class OutlookGeoCoordinatesAltitudeAccuracy
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a outlook_geo_coordinates_altitude_accuracy
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return OutlookGeoCoordinatesAltitudeAccuracy.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class OutlookGeoCoordinatesLatitude
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a outlook_geo_coordinates_latitude
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return OutlookGeoCoordinatesLatitude.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class OutlookGeoCoordinatesLongitude
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a outlook_geo_coordinates_longitude
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return OutlookGeoCoordinatesLongitude.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
