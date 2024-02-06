require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InternetExplorerMode < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of site lists to support Internet Explorer mode.
            @site_lists
            ## 
            ## Instantiates a new internetExplorerMode and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a internet_explorer_mode
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InternetExplorerMode.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "siteLists" => lambda {|n| @site_lists = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BrowserSiteList.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("siteLists", @site_lists) unless @site_lists.nil?
            end
            ## 
            ## Gets the siteLists property value. A collection of site lists to support Internet Explorer mode.
            ## @return a browser_site_list
            ## 
            def site_lists
                return @site_lists
            end
            ## 
            ## Sets the siteLists property value. A collection of site lists to support Internet Explorer mode.
            ## @param value Value to set for the siteLists property.
            ## @return a void
            ## 
            def site_lists=(value)
                @site_lists = value
            end
        end
    end
end
