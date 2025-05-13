require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TextWebPart < MicrosoftGraph::Models::WebPart
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The HTML string in text web part.
            @inner_html
            ## 
            ## Instantiates a new TextWebPart and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.textWebPart"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a text_web_part
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TextWebPart.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "innerHtml" => lambda {|n| @inner_html = n.get_string_value() },
                })
            end
            ## 
            ## Gets the innerHtml property value. The HTML string in text web part.
            ## @return a string
            ## 
            def inner_html
                return @inner_html
            end
            ## 
            ## Sets the innerHtml property value. The HTML string in text web part.
            ## @param value Value to set for the innerHtml property.
            ## @return a void
            ## 
            def inner_html=(value)
                @inner_html = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("innerHtml", @inner_html)
            end
        end
    end
end
