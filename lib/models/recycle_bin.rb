require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RecycleBin < MicrosoftGraph::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of the recycleBinItems deleted by a user.
            @items
            ## 
            # The settings property
            @settings
            ## 
            ## Instantiates a new RecycleBin and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.recycleBin"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a recycle_bin
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecycleBin.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RecycleBinItem.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RecycleBinSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the items property value. List of the recycleBinItems deleted by a user.
            ## @return a recycle_bin_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. List of the recycleBinItems deleted by a user.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("items", @items)
                writer.write_object_value("settings", @settings)
            end
            ## 
            ## Gets the settings property value. The settings property
            ## @return a recycle_bin_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings property
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
        end
    end
end
