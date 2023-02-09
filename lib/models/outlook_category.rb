require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OutlookCategory < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A pre-set color constant that characterizes a category, and that is mapped to one of 25 predefined colors. See the note below.
            @color
            ## 
            # A unique name that identifies a category in the user's mailbox. After a category is created, the name cannot be changed. Read-only.
            @display_name
            ## 
            ## Gets the color property value. A pre-set color constant that characterizes a category, and that is mapped to one of 25 predefined colors. See the note below.
            ## @return a category_color
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. A pre-set color constant that characterizes a category, and that is mapped to one of 25 predefined colors. See the note below.
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new outlookCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a outlook_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OutlookCategory.new
            end
            ## 
            ## Gets the displayName property value. A unique name that identifies a category in the user's mailbox. After a category is created, the name cannot be changed. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. A unique name that identifies a category in the user's mailbox. After a category is created, the name cannot be changed. Read-only.
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
                return super.merge({
                    "color" => lambda {|n| @color = n.get_enum_value(MicrosoftGraph::Models::CategoryColor) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("color", @color)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
