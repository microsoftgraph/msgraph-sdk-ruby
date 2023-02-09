require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookRangeBorder < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # HTML color code representing the color of the border line, of the form #RRGGBB (e.g. 'FFA500') or as a named HTML color (e.g. 'orange').
            @color
            ## 
            # Constant value that indicates the specific side of the border. The possible values are: EdgeTop, EdgeBottom, EdgeLeft, EdgeRight, InsideVertical, InsideHorizontal, DiagonalDown, DiagonalUp. Read-only.
            @side_index
            ## 
            # One of the constants of line style specifying the line style for the border. The possible values are: None, Continuous, Dash, DashDot, DashDotDot, Dot, Double, SlantDashDot.
            @style
            ## 
            # Specifies the weight of the border around a range. The possible values are: Hairline, Thin, Medium, Thick.
            @weight
            ## 
            ## Gets the color property value. HTML color code representing the color of the border line, of the form #RRGGBB (e.g. 'FFA500') or as a named HTML color (e.g. 'orange').
            ## @return a string
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. HTML color code representing the color of the border line, of the form #RRGGBB (e.g. 'FFA500') or as a named HTML color (e.g. 'orange').
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new workbookRangeBorder and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_range_border
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookRangeBorder.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "color" => lambda {|n| @color = n.get_string_value() },
                    "sideIndex" => lambda {|n| @side_index = n.get_string_value() },
                    "style" => lambda {|n| @style = n.get_string_value() },
                    "weight" => lambda {|n| @weight = n.get_string_value() },
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
                writer.write_string_value("color", @color)
                writer.write_string_value("sideIndex", @side_index)
                writer.write_string_value("style", @style)
                writer.write_string_value("weight", @weight)
            end
            ## 
            ## Gets the sideIndex property value. Constant value that indicates the specific side of the border. The possible values are: EdgeTop, EdgeBottom, EdgeLeft, EdgeRight, InsideVertical, InsideHorizontal, DiagonalDown, DiagonalUp. Read-only.
            ## @return a string
            ## 
            def side_index
                return @side_index
            end
            ## 
            ## Sets the sideIndex property value. Constant value that indicates the specific side of the border. The possible values are: EdgeTop, EdgeBottom, EdgeLeft, EdgeRight, InsideVertical, InsideHorizontal, DiagonalDown, DiagonalUp. Read-only.
            ## @param value Value to set for the side_index property.
            ## @return a void
            ## 
            def side_index=(value)
                @side_index = value
            end
            ## 
            ## Gets the style property value. One of the constants of line style specifying the line style for the border. The possible values are: None, Continuous, Dash, DashDot, DashDotDot, Dot, Double, SlantDashDot.
            ## @return a string
            ## 
            def style
                return @style
            end
            ## 
            ## Sets the style property value. One of the constants of line style specifying the line style for the border. The possible values are: None, Continuous, Dash, DashDot, DashDotDot, Dot, Double, SlantDashDot.
            ## @param value Value to set for the style property.
            ## @return a void
            ## 
            def style=(value)
                @style = value
            end
            ## 
            ## Gets the weight property value. Specifies the weight of the border around a range. The possible values are: Hairline, Thin, Medium, Thick.
            ## @return a string
            ## 
            def weight
                return @weight
            end
            ## 
            ## Sets the weight property value. Specifies the weight of the border around a range. The possible values are: Hairline, Thin, Medium, Thick.
            ## @param value Value to set for the weight property.
            ## @return a void
            ## 
            def weight=(value)
                @weight = value
            end
        end
    end
end
