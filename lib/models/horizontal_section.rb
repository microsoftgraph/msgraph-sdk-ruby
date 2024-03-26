require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class HorizontalSection < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The columns property
            @columns
            ## 
            # The emphasis property
            @emphasis
            ## 
            # The layout property
            @layout
            ## 
            ## Gets the columns property value. The columns property
            ## @return a horizontal_section_column
            ## 
            def columns
                return @columns
            end
            ## 
            ## Sets the columns property value. The columns property
            ## @param value Value to set for the columns property.
            ## @return a void
            ## 
            def columns=(value)
                @columns = value
            end
            ## 
            ## Instantiates a new HorizontalSection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a horizontal_section
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HorizontalSection.new
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
                    "columns" => lambda {|n| @columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::HorizontalSectionColumn.create_from_discriminator_value(pn) }) },
                    "emphasis" => lambda {|n| @emphasis = n.get_enum_value(MicrosoftGraph::Models::SectionEmphasisType) },
                    "layout" => lambda {|n| @layout = n.get_enum_value(MicrosoftGraph::Models::HorizontalSectionLayoutType) },
                })
            end
            ## 
            ## Gets the layout property value. The layout property
            ## @return a horizontal_section_layout_type
            ## 
            def layout
                return @layout
            end
            ## 
            ## Sets the layout property value. The layout property
            ## @param value Value to set for the layout property.
            ## @return a void
            ## 
            def layout=(value)
                @layout = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("columns", @columns)
                writer.write_enum_value("emphasis", @emphasis)
                writer.write_enum_value("layout", @layout)
            end
        end
    end
end
