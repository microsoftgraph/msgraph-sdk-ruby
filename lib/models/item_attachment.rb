require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ItemAttachment < MicrosoftGraph::Models::Attachment
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The attached message or event. Navigation property.
            @item
            ## 
            ## Instantiates a new ItemAttachment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.itemAttachment"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_attachment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemAttachment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "item" => lambda {|n| @item = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OutlookItem.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the item property value. The attached message or event. Navigation property.
            ## @return a outlook_item
            ## 
            def item
                return @item
            end
            ## 
            ## Sets the item property value. The attached message or event. Navigation property.
            ## @param value Value to set for the item property.
            ## @return a void
            ## 
            def item=(value)
                @item = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("item", @item)
            end
        end
    end
end
