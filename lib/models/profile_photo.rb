require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProfilePhoto < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The height of the photo. Read-only.
            @height
            ## 
            # The width of the photo. Read-only.
            @width
            ## 
            ## Instantiates a new profilePhoto and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a profile_photo
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProfilePhoto.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "height" => lambda {|n| @height = n.get_number_value() },
                    "width" => lambda {|n| @width = n.get_number_value() },
                })
            end
            ## 
            ## Gets the height property value. The height of the photo. Read-only.
            ## @return a integer
            ## 
            def height
                return @height
            end
            ## 
            ## Sets the height property value. The height of the photo. Read-only.
            ## @param value Value to set for the height property.
            ## @return a void
            ## 
            def height=(value)
                @height = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("height", @height)
                writer.write_number_value("width", @width)
            end
            ## 
            ## Gets the width property value. The width of the photo. Read-only.
            ## @return a integer
            ## 
            def width
                return @width
            end
            ## 
            ## Sets the width property value. The width of the photo. Read-only.
            ## @param value Value to set for the width property.
            ## @return a void
            ## 
            def width=(value)
                @width = value
            end
        end
    end
end
