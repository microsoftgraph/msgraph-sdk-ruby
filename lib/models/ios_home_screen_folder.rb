require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosHomeScreenFolder < MicrosoftGraph::Models::IosHomeScreenItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Pages of Home Screen Layout Icons which must be applications or web clips. This collection can contain a maximum of 500 elements.
            @pages
            ## 
            ## Instantiates a new IosHomeScreenFolder and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosHomeScreenFolder"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_home_screen_folder
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosHomeScreenFolder.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "pages" => lambda {|n| @pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IosHomeScreenFolderPage.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the pages property value. Pages of Home Screen Layout Icons which must be applications or web clips. This collection can contain a maximum of 500 elements.
            ## @return a ios_home_screen_folder_page
            ## 
            def pages
                return @pages
            end
            ## 
            ## Sets the pages property value. Pages of Home Screen Layout Icons which must be applications or web clips. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the pages property.
            ## @return a void
            ## 
            def pages=(value)
                @pages = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("pages", @pages)
            end
        end
    end
end
