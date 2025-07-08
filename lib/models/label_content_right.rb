require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LabelContentRight < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content identifier.
            @cid
            ## 
            # The content format.
            @format
            ## 
            ## Gets the cid property value. The content identifier.
            ## @return a string
            ## 
            def cid
                return @cid
            end
            ## 
            ## Sets the cid property value. The content identifier.
            ## @param value Value to set for the cid property.
            ## @return a void
            ## 
            def cid=(value)
                @cid = value
            end
            ## 
            ## Instantiates a new LabelContentRight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a label_content_right
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LabelContentRight.new
            end
            ## 
            ## Gets the format property value. The content format.
            ## @return a string
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. The content format.
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cid" => lambda {|n| @cid = n.get_string_value() },
                    "format" => lambda {|n| @format = n.get_string_value() },
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
                writer.write_string_value("cid", @cid)
                writer.write_string_value("format", @format)
            end
        end
    end
end
