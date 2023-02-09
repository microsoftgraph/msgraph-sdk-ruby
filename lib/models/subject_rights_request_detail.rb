require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SubjectRightsRequestDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Count of items that are excluded from the request.
            @excluded_item_count
            ## 
            # Count of items per insight.
            @insight_counts
            ## 
            # Count of items found.
            @item_count
            ## 
            # Count of item that need review.
            @item_need_review
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Count of items per product, such as Exchange, SharePoint, OneDrive, and Teams.
            @product_item_counts
            ## 
            # Count of items signed off by the administrator.
            @signed_off_item_count
            ## 
            # Total item size in bytes.
            @total_item_size
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
            ## Instantiates a new subjectRightsRequestDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a subject_rights_request_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SubjectRightsRequestDetail.new
            end
            ## 
            ## Gets the excludedItemCount property value. Count of items that are excluded from the request.
            ## @return a int64
            ## 
            def excluded_item_count
                return @excluded_item_count
            end
            ## 
            ## Sets the excludedItemCount property value. Count of items that are excluded from the request.
            ## @param value Value to set for the excluded_item_count property.
            ## @return a void
            ## 
            def excluded_item_count=(value)
                @excluded_item_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludedItemCount" => lambda {|n| @excluded_item_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "insightCounts" => lambda {|n| @insight_counts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "itemCount" => lambda {|n| @item_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "itemNeedReview" => lambda {|n| @item_need_review = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "productItemCounts" => lambda {|n| @product_item_counts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "signedOffItemCount" => lambda {|n| @signed_off_item_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "totalItemSize" => lambda {|n| @total_item_size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the insightCounts property value. Count of items per insight.
            ## @return a key_value_pair
            ## 
            def insight_counts
                return @insight_counts
            end
            ## 
            ## Sets the insightCounts property value. Count of items per insight.
            ## @param value Value to set for the insight_counts property.
            ## @return a void
            ## 
            def insight_counts=(value)
                @insight_counts = value
            end
            ## 
            ## Gets the itemCount property value. Count of items found.
            ## @return a int64
            ## 
            def item_count
                return @item_count
            end
            ## 
            ## Sets the itemCount property value. Count of items found.
            ## @param value Value to set for the item_count property.
            ## @return a void
            ## 
            def item_count=(value)
                @item_count = value
            end
            ## 
            ## Gets the itemNeedReview property value. Count of item that need review.
            ## @return a int64
            ## 
            def item_need_review
                return @item_need_review
            end
            ## 
            ## Sets the itemNeedReview property value. Count of item that need review.
            ## @param value Value to set for the item_need_review property.
            ## @return a void
            ## 
            def item_need_review=(value)
                @item_need_review = value
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
            ## Gets the productItemCounts property value. Count of items per product, such as Exchange, SharePoint, OneDrive, and Teams.
            ## @return a key_value_pair
            ## 
            def product_item_counts
                return @product_item_counts
            end
            ## 
            ## Sets the productItemCounts property value. Count of items per product, such as Exchange, SharePoint, OneDrive, and Teams.
            ## @param value Value to set for the product_item_counts property.
            ## @return a void
            ## 
            def product_item_counts=(value)
                @product_item_counts = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("excludedItemCount", @excluded_item_count)
                writer.write_collection_of_object_values("insightCounts", @insight_counts)
                writer.write_object_value("itemCount", @item_count)
                writer.write_object_value("itemNeedReview", @item_need_review)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("productItemCounts", @product_item_counts)
                writer.write_object_value("signedOffItemCount", @signed_off_item_count)
                writer.write_object_value("totalItemSize", @total_item_size)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the signedOffItemCount property value. Count of items signed off by the administrator.
            ## @return a int64
            ## 
            def signed_off_item_count
                return @signed_off_item_count
            end
            ## 
            ## Sets the signedOffItemCount property value. Count of items signed off by the administrator.
            ## @param value Value to set for the signed_off_item_count property.
            ## @return a void
            ## 
            def signed_off_item_count=(value)
                @signed_off_item_count = value
            end
            ## 
            ## Gets the totalItemSize property value. Total item size in bytes.
            ## @return a int64
            ## 
            def total_item_size
                return @total_item_size
            end
            ## 
            ## Sets the totalItemSize property value. Total item size in bytes.
            ## @param value Value to set for the total_item_size property.
            ## @return a void
            ## 
            def total_item_size=(value)
                @total_item_size = value
            end
        end
    end
end
