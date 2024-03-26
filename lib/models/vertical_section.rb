require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VerticalSection < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The emphasis property
            @emphasis
            ## 
            # The webparts property
            @webparts
            ## 
            ## Instantiates a new VerticalSection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a vertical_section
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VerticalSection.new
            end
            ## 
            ## Gets the emphasis property value. The emphasis property
            ## @return a section_emphasis_type
            ## 
            def emphasis
                return @emphasis
            end
            ## 
            ## Sets the emphasis property value. The emphasis property
            ## @param value Value to set for the emphasis property.
            ## @return a void
            ## 
            def emphasis=(value)
                @emphasis = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "emphasis" => lambda {|n| @emphasis = n.get_enum_value(MicrosoftGraph::Models::SectionEmphasisType) },
                    "webparts" => lambda {|n| @webparts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WebPart.create_from_discriminator_value(pn) }) },
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
                writer.write_enum_value("emphasis", @emphasis)
                writer.write_collection_of_object_values("webparts", @webparts)
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
        end
    end
end
