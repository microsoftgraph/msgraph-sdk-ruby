require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchEntity < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The acronyms property
            @acronyms
            ## 
            # The bookmarks property
            @bookmarks
            ## 
            # The qnas property
            @qnas
            ## 
            ## Gets the acronyms property value. The acronyms property
            ## @return a search_acronym
            ## 
            def acronyms
                return @acronyms
            end
            ## 
            ## Sets the acronyms property value. The acronyms property
            ## @param value Value to set for the acronyms property.
            ## @return a void
            ## 
            def acronyms=(value)
                @acronyms = value
            end
            ## 
            ## Gets the bookmarks property value. The bookmarks property
            ## @return a search_bookmark
            ## 
            def bookmarks
                return @bookmarks
            end
            ## 
            ## Sets the bookmarks property value. The bookmarks property
            ## @param value Value to set for the bookmarks property.
            ## @return a void
            ## 
            def bookmarks=(value)
                @bookmarks = value
            end
            ## 
            ## Instantiates a new SearchEntity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a search_entity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchEntity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "acronyms" => lambda {|n| @acronyms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchAcronym.create_from_discriminator_value(pn) }) },
                    "bookmarks" => lambda {|n| @bookmarks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchBookmark.create_from_discriminator_value(pn) }) },
                    "qnas" => lambda {|n| @qnas = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchQna.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the qnas property value. The qnas property
            ## @return a search_qna
            ## 
            def qnas
                return @qnas
            end
            ## 
            ## Sets the qnas property value. The qnas property
            ## @param value Value to set for the qnas property.
            ## @return a void
            ## 
            def qnas=(value)
                @qnas = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("acronyms", @acronyms)
                writer.write_collection_of_object_values("bookmarks", @bookmarks)
                writer.write_collection_of_object_values("qnas", @qnas)
            end
        end
    end
end
