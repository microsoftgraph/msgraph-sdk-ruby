require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DocumentSetVersionItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier for the item.
            @item_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The title of the item.
            @title
            ## 
            # The version ID of the item.
            @version_id
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new documentSetVersionItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a document_set_version_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DocumentSetVersionItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "itemId" => lambda {|n| @item_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "versionId" => lambda {|n| @version_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the itemId property value. The unique identifier for the item.
            ## @return a string
            ## 
            def item_id
                return @item_id
            end
            ## 
            ## Sets the itemId property value. The unique identifier for the item.
            ## @param value Value to set for the item_id property.
            ## @return a void
            ## 
            def item_id=(value)
                @item_id = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("itemId", @item_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("title", @title)
                writer.write_string_value("versionId", @version_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the title property value. The title of the item.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of the item.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the versionId property value. The version ID of the item.
            ## @return a string
            ## 
            def version_id
                return @version_id
            end
            ## 
            ## Sets the versionId property value. The version ID of the item.
            ## @param value Value to set for the version_id property.
            ## @return a void
            ## 
            def version_id=(value)
                @version_id = value
            end
        end
    end
end
