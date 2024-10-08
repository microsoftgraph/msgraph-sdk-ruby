require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Photo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Camera manufacturer. Read-only.
            @camera_make
            ## 
            # Camera model. Read-only.
            @camera_model
            ## 
            # The denominator for the exposure time fraction from the camera. Read-only.
            @exposure_denominator
            ## 
            # The numerator for the exposure time fraction from the camera. Read-only.
            @exposure_numerator
            ## 
            # The F-stop value from the camera. Read-only.
            @f_number
            ## 
            # The focal length from the camera. Read-only.
            @focal_length
            ## 
            # The ISO value from the camera. Read-only.
            @iso
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The orientation value from the camera. Writable on OneDrive Personal.
            @orientation
            ## 
            # Represents the date and time the photo was taken. Read-only.
            @taken_date_time
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
            ## Gets the cameraMake property value. Camera manufacturer. Read-only.
            ## @return a string
            ## 
            def camera_make
                return @camera_make
            end
            ## 
            ## Sets the cameraMake property value. Camera manufacturer. Read-only.
            ## @param value Value to set for the cameraMake property.
            ## @return a void
            ## 
            def camera_make=(value)
                @camera_make = value
            end
            ## 
            ## Gets the cameraModel property value. Camera model. Read-only.
            ## @return a string
            ## 
            def camera_model
                return @camera_model
            end
            ## 
            ## Sets the cameraModel property value. Camera model. Read-only.
            ## @param value Value to set for the cameraModel property.
            ## @return a void
            ## 
            def camera_model=(value)
                @camera_model = value
            end
            ## 
            ## Instantiates a new Photo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a photo
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Photo.new
            end
            ## 
            ## Gets the exposureDenominator property value. The denominator for the exposure time fraction from the camera. Read-only.
            ## @return a photo_exposure_denominator
            ## 
            def exposure_denominator
                return @exposure_denominator
            end
            ## 
            ## Sets the exposureDenominator property value. The denominator for the exposure time fraction from the camera. Read-only.
            ## @param value Value to set for the exposureDenominator property.
            ## @return a void
            ## 
            def exposure_denominator=(value)
                @exposure_denominator = value
            end
            ## 
            ## Gets the exposureNumerator property value. The numerator for the exposure time fraction from the camera. Read-only.
            ## @return a photo_exposure_numerator
            ## 
            def exposure_numerator
                return @exposure_numerator
            end
            ## 
            ## Sets the exposureNumerator property value. The numerator for the exposure time fraction from the camera. Read-only.
            ## @param value Value to set for the exposureNumerator property.
            ## @return a void
            ## 
            def exposure_numerator=(value)
                @exposure_numerator = value
            end
            ## 
            ## Gets the fNumber property value. The F-stop value from the camera. Read-only.
            ## @return a photo_f_number
            ## 
            def f_number
                return @f_number
            end
            ## 
            ## Sets the fNumber property value. The F-stop value from the camera. Read-only.
            ## @param value Value to set for the fNumber property.
            ## @return a void
            ## 
            def f_number=(value)
                @f_number = value
            end
            ## 
            ## Gets the focalLength property value. The focal length from the camera. Read-only.
            ## @return a photo_focal_length
            ## 
            def focal_length
                return @focal_length
            end
            ## 
            ## Sets the focalLength property value. The focal length from the camera. Read-only.
            ## @param value Value to set for the focalLength property.
            ## @return a void
            ## 
            def focal_length=(value)
                @focal_length = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "cameraMake" => lambda {|n| @camera_make = n.get_string_value() },
                    "cameraModel" => lambda {|n| @camera_model = n.get_string_value() },
                    "exposureDenominator" => lambda {|n| @exposure_denominator = n.get_object_value(lambda {|pn| Photo::PhotoExposureDenominator.create_from_discriminator_value(pn) }) },
                    "exposureNumerator" => lambda {|n| @exposure_numerator = n.get_object_value(lambda {|pn| Photo::PhotoExposureNumerator.create_from_discriminator_value(pn) }) },
                    "fNumber" => lambda {|n| @f_number = n.get_object_value(lambda {|pn| Photo::PhotoFNumber.create_from_discriminator_value(pn) }) },
                    "focalLength" => lambda {|n| @focal_length = n.get_object_value(lambda {|pn| Photo::PhotoFocalLength.create_from_discriminator_value(pn) }) },
                    "iso" => lambda {|n| @iso = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "orientation" => lambda {|n| @orientation = n.get_number_value() },
                    "takenDateTime" => lambda {|n| @taken_date_time = n.get_date_time_value() },
                }
            end
            ## 
            ## Gets the iso property value. The ISO value from the camera. Read-only.
            ## @return a integer
            ## 
            def iso
                return @iso
            end
            ## 
            ## Sets the iso property value. The ISO value from the camera. Read-only.
            ## @param value Value to set for the iso property.
            ## @return a void
            ## 
            def iso=(value)
                @iso = value
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
            ## Gets the orientation property value. The orientation value from the camera. Writable on OneDrive Personal.
            ## @return a integer
            ## 
            def orientation
                return @orientation
            end
            ## 
            ## Sets the orientation property value. The orientation value from the camera. Writable on OneDrive Personal.
            ## @param value Value to set for the orientation property.
            ## @return a void
            ## 
            def orientation=(value)
                @orientation = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("cameraMake", @camera_make)
                writer.write_string_value("cameraModel", @camera_model)
                writer.write_object_value("exposureDenominator", @exposure_denominator)
                writer.write_object_value("exposureNumerator", @exposure_numerator)
                writer.write_object_value("fNumber", @f_number)
                writer.write_object_value("focalLength", @focal_length)
                writer.write_number_value("iso", @iso)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("orientation", @orientation)
                writer.write_date_time_value("takenDateTime", @taken_date_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the takenDateTime property value. Represents the date and time the photo was taken. Read-only.
            ## @return a date_time
            ## 
            def taken_date_time
                return @taken_date_time
            end
            ## 
            ## Sets the takenDateTime property value. Represents the date and time the photo was taken. Read-only.
            ## @param value Value to set for the takenDateTime property.
            ## @return a void
            ## 
            def taken_date_time=(value)
                @taken_date_time = value
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class PhotoExposureDenominator
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
                ## @return a photo_exposure_denominator
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
                    return PhotoExposureDenominator.new
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
            class PhotoExposureNumerator
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
                ## @return a photo_exposure_numerator
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
                    return PhotoExposureNumerator.new
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
            class PhotoFNumber
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
                ## @return a photo_f_number
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
                    return PhotoFNumber.new
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
            class PhotoFocalLength
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
                ## @return a photo_focal_length
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
                    return PhotoFocalLength.new
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
