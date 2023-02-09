require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Room < MicrosoftGraph::Models::Place
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the name of the audio device in the room.
            @audio_device_name
            ## 
            # Type of room. Possible values are standard, and reserved.
            @booking_type
            ## 
            # Specifies the building name or building number that the room is in.
            @building
            ## 
            # Specifies the capacity of the room.
            @capacity
            ## 
            # Specifies the name of the display device in the room.
            @display_device_name
            ## 
            # Email address of the room.
            @email_address
            ## 
            # Specifies a descriptive label for the floor, for example, P.
            @floor_label
            ## 
            # Specifies the floor number that the room is on.
            @floor_number
            ## 
            # Specifies whether the room is wheelchair accessible.
            @is_wheel_chair_accessible
            ## 
            # Specifies a descriptive label for the room, for example, a number or name.
            @label
            ## 
            # Specifies a nickname for the room, for example, 'conf room'.
            @nickname
            ## 
            # Specifies additional features of the room, for example, details like the type of view or furniture type.
            @tags
            ## 
            # Specifies the name of the video device in the room.
            @video_device_name
            ## 
            ## Gets the audioDeviceName property value. Specifies the name of the audio device in the room.
            ## @return a string
            ## 
            def audio_device_name
                return @audio_device_name
            end
            ## 
            ## Sets the audioDeviceName property value. Specifies the name of the audio device in the room.
            ## @param value Value to set for the audio_device_name property.
            ## @return a void
            ## 
            def audio_device_name=(value)
                @audio_device_name = value
            end
            ## 
            ## Gets the bookingType property value. Type of room. Possible values are standard, and reserved.
            ## @return a booking_type
            ## 
            def booking_type
                return @booking_type
            end
            ## 
            ## Sets the bookingType property value. Type of room. Possible values are standard, and reserved.
            ## @param value Value to set for the booking_type property.
            ## @return a void
            ## 
            def booking_type=(value)
                @booking_type = value
            end
            ## 
            ## Gets the building property value. Specifies the building name or building number that the room is in.
            ## @return a string
            ## 
            def building
                return @building
            end
            ## 
            ## Sets the building property value. Specifies the building name or building number that the room is in.
            ## @param value Value to set for the building property.
            ## @return a void
            ## 
            def building=(value)
                @building = value
            end
            ## 
            ## Gets the capacity property value. Specifies the capacity of the room.
            ## @return a integer
            ## 
            def capacity
                return @capacity
            end
            ## 
            ## Sets the capacity property value. Specifies the capacity of the room.
            ## @param value Value to set for the capacity property.
            ## @return a void
            ## 
            def capacity=(value)
                @capacity = value
            end
            ## 
            ## Instantiates a new Room and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.room"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a room
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Room.new
            end
            ## 
            ## Gets the displayDeviceName property value. Specifies the name of the display device in the room.
            ## @return a string
            ## 
            def display_device_name
                return @display_device_name
            end
            ## 
            ## Sets the displayDeviceName property value. Specifies the name of the display device in the room.
            ## @param value Value to set for the display_device_name property.
            ## @return a void
            ## 
            def display_device_name=(value)
                @display_device_name = value
            end
            ## 
            ## Gets the emailAddress property value. Email address of the room.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. Email address of the room.
            ## @param value Value to set for the email_address property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## Gets the floorLabel property value. Specifies a descriptive label for the floor, for example, P.
            ## @return a string
            ## 
            def floor_label
                return @floor_label
            end
            ## 
            ## Sets the floorLabel property value. Specifies a descriptive label for the floor, for example, P.
            ## @param value Value to set for the floor_label property.
            ## @return a void
            ## 
            def floor_label=(value)
                @floor_label = value
            end
            ## 
            ## Gets the floorNumber property value. Specifies the floor number that the room is on.
            ## @return a integer
            ## 
            def floor_number
                return @floor_number
            end
            ## 
            ## Sets the floorNumber property value. Specifies the floor number that the room is on.
            ## @param value Value to set for the floor_number property.
            ## @return a void
            ## 
            def floor_number=(value)
                @floor_number = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "audioDeviceName" => lambda {|n| @audio_device_name = n.get_string_value() },
                    "bookingType" => lambda {|n| @booking_type = n.get_enum_value(MicrosoftGraph::Models::BookingType) },
                    "building" => lambda {|n| @building = n.get_string_value() },
                    "capacity" => lambda {|n| @capacity = n.get_number_value() },
                    "displayDeviceName" => lambda {|n| @display_device_name = n.get_string_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "floorLabel" => lambda {|n| @floor_label = n.get_string_value() },
                    "floorNumber" => lambda {|n| @floor_number = n.get_number_value() },
                    "isWheelChairAccessible" => lambda {|n| @is_wheel_chair_accessible = n.get_boolean_value() },
                    "label" => lambda {|n| @label = n.get_string_value() },
                    "nickname" => lambda {|n| @nickname = n.get_string_value() },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "videoDeviceName" => lambda {|n| @video_device_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isWheelChairAccessible property value. Specifies whether the room is wheelchair accessible.
            ## @return a boolean
            ## 
            def is_wheel_chair_accessible
                return @is_wheel_chair_accessible
            end
            ## 
            ## Sets the isWheelChairAccessible property value. Specifies whether the room is wheelchair accessible.
            ## @param value Value to set for the is_wheel_chair_accessible property.
            ## @return a void
            ## 
            def is_wheel_chair_accessible=(value)
                @is_wheel_chair_accessible = value
            end
            ## 
            ## Gets the label property value. Specifies a descriptive label for the room, for example, a number or name.
            ## @return a string
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. Specifies a descriptive label for the room, for example, a number or name.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
            end
            ## 
            ## Gets the nickname property value. Specifies a nickname for the room, for example, 'conf room'.
            ## @return a string
            ## 
            def nickname
                return @nickname
            end
            ## 
            ## Sets the nickname property value. Specifies a nickname for the room, for example, 'conf room'.
            ## @param value Value to set for the nickname property.
            ## @return a void
            ## 
            def nickname=(value)
                @nickname = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("audioDeviceName", @audio_device_name)
                writer.write_enum_value("bookingType", @booking_type)
                writer.write_string_value("building", @building)
                writer.write_number_value("capacity", @capacity)
                writer.write_string_value("displayDeviceName", @display_device_name)
                writer.write_string_value("emailAddress", @email_address)
                writer.write_string_value("floorLabel", @floor_label)
                writer.write_number_value("floorNumber", @floor_number)
                writer.write_boolean_value("isWheelChairAccessible", @is_wheel_chair_accessible)
                writer.write_string_value("label", @label)
                writer.write_string_value("nickname", @nickname)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_string_value("videoDeviceName", @video_device_name)
            end
            ## 
            ## Gets the tags property value. Specifies additional features of the room, for example, details like the type of view or furniture type.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. Specifies additional features of the room, for example, details like the type of view or furniture type.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the videoDeviceName property value. Specifies the name of the video device in the room.
            ## @return a string
            ## 
            def video_device_name
                return @video_device_name
            end
            ## 
            ## Sets the videoDeviceName property value. Specifies the name of the video device in the room.
            ## @param value Value to set for the video_device_name property.
            ## @return a void
            ## 
            def video_device_name=(value)
                @video_device_name = value
            end
        end
    end
end
