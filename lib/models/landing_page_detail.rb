require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LandingPageDetail < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content property
            @content
            ## 
            # The isDefaultLangauge property
            @is_default_langauge
            ## 
            # The language property
            @language
            ## 
            ## Instantiates a new landingPageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content property
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content property
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a landing_page_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LandingPageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "isDefaultLangauge" => lambda {|n| @is_default_langauge = n.get_boolean_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefaultLangauge property value. The isDefaultLangauge property
            ## @return a boolean
            ## 
            def is_default_langauge
                return @is_default_langauge
            end
            ## 
            ## Sets the isDefaultLangauge property value. The isDefaultLangauge property
            ## @param value Value to set for the isDefaultLangauge property.
            ## @return a void
            ## 
            def is_default_langauge=(value)
                @is_default_langauge = value
            end
            ## 
            ## Gets the language property value. The language property
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The language property
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("content", @content)
                writer.write_boolean_value("isDefaultLangauge", @is_default_langauge)
                writer.write_string_value("language", @language)
            end
        end
    end
end
