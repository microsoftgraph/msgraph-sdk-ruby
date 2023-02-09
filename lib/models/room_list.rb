require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RoomList < MicrosoftGraph::Models::Place
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The email address of the room list.
            @email_address
            ## 
            # The rooms property
            @rooms
            ## 
            ## Instantiates a new RoomList and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.roomList"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a room_list
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RoomList.new
            end
            ## 
            ## Gets the emailAddress property value. The email address of the room list.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. The email address of the room list.
            ## @param value Value to set for the email_address property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "rooms" => lambda {|n| @rooms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Room.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the rooms property value. The rooms property
            ## @return a room
            ## 
            def rooms
                return @rooms
            end
            ## 
            ## Sets the rooms property value. The rooms property
            ## @param value Value to set for the rooms property.
            ## @return a void
            ## 
            def rooms=(value)
                @rooms = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("emailAddress", @email_address)
                writer.write_collection_of_object_values("rooms", @rooms)
            end
        end
    end
end
