require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ThumbnailSet < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A 1920x1920 scaled thumbnail.
            @large
            ## 
            # A 176x176 scaled thumbnail.
            @medium
            ## 
            # A 48x48 cropped thumbnail.
            @small
            ## 
            # A custom thumbnail image or the original image used to generate other thumbnails.
            @source
            ## 
            ## Instantiates a new thumbnailSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a thumbnail_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ThumbnailSet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "large" => lambda {|n| @large = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Thumbnail.create_from_discriminator_value(pn) }) },
                    "medium" => lambda {|n| @medium = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Thumbnail.create_from_discriminator_value(pn) }) },
                    "small" => lambda {|n| @small = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Thumbnail.create_from_discriminator_value(pn) }) },
                    "source" => lambda {|n| @source = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Thumbnail.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the large property value. A 1920x1920 scaled thumbnail.
            ## @return a thumbnail
            ## 
            def large
                return @large
            end
            ## 
            ## Sets the large property value. A 1920x1920 scaled thumbnail.
            ## @param value Value to set for the large property.
            ## @return a void
            ## 
            def large=(value)
                @large = value
            end
            ## 
            ## Gets the medium property value. A 176x176 scaled thumbnail.
            ## @return a thumbnail
            ## 
            def medium
                return @medium
            end
            ## 
            ## Sets the medium property value. A 176x176 scaled thumbnail.
            ## @param value Value to set for the medium property.
            ## @return a void
            ## 
            def medium=(value)
                @medium = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("large", @large)
                writer.write_object_value("medium", @medium)
                writer.write_object_value("small", @small)
                writer.write_object_value("source", @source)
            end
            ## 
            ## Gets the small property value. A 48x48 cropped thumbnail.
            ## @return a thumbnail
            ## 
            def small
                return @small
            end
            ## 
            ## Sets the small property value. A 48x48 cropped thumbnail.
            ## @param value Value to set for the small property.
            ## @return a void
            ## 
            def small=(value)
                @small = value
            end
            ## 
            ## Gets the source property value. A custom thumbnail image or the original image used to generate other thumbnails.
            ## @return a thumbnail
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. A custom thumbnail image or the original image used to generate other thumbnails.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
        end
    end
end
