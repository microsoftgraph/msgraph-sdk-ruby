require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class HorizontalSectionColumn < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The webparts property
            @webparts
            ## 
            # The width property
            @width
            ## 
            ## Instantiates a new HorizontalSectionColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a horizontal_section_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HorizontalSectionColumn.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "webparts" => lambda {|n| @webparts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WebPart.create_from_discriminator_value(pn) }) },
                    "width" => lambda {|n| @width = n.get_number_value() },
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
                writer.write_collection_of_object_values("webparts", @webparts)
                writer.write_number_value("width", @width)
            end
            ## 
            ## Gets the webparts property value. The webparts property
            ## @return a web_part
            ## 
            def webparts
                return @webparts
            end
            ## 
            ## Sets the webparts property value. The webparts property
            ## @param value Value to set for the webparts property.
            ## @return a void
            ## 
            def webparts=(value)
                @webparts = value
            end
            ## 
            ## Gets the width property value. The width property
            ## @return a integer
            ## 
            def width
                return @width
            end
            ## 
            ## Sets the width property value. The width property
            ## @param value Value to set for the width property.
            ## @return a void
            ## 
            def width=(value)
                @width = value
            end
        end
    end
end
