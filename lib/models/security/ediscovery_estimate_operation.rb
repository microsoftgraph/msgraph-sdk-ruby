require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EdiscoveryEstimateOperation < MicrosoftGraph::Models::Security::CaseOperation
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The estimated count of items for the search that matched the content query.
                @indexed_item_count
                ## 
                # The estimated size of items for the search that matched the content query.
                @indexed_items_size
                ## 
                # The number of mailboxes that had search hits.
                @mailbox_count
                ## 
                # eDiscovery search.
                @search
                ## 
                # The number of mailboxes that had search hits.
                @site_count
                ## 
                # The estimated count of unindexed items for the collection.
                @unindexed_item_count
                ## 
                # The estimated size of unindexed items for the collection.
                @unindexed_items_size
                ## 
                ## Instantiates a new ediscoveryEstimateOperation and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_estimate_operation
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoveryEstimateOperation.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "indexedItemCount" => lambda {|n| @indexed_item_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "indexedItemsSize" => lambda {|n| @indexed_items_size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "mailboxCount" => lambda {|n| @mailbox_count = n.get_number_value() },
                        "search" => lambda {|n| @search = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoverySearch.create_from_discriminator_value(pn) }) },
                        "siteCount" => lambda {|n| @site_count = n.get_number_value() },
                        "unindexedItemCount" => lambda {|n| @unindexed_item_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "unindexedItemsSize" => lambda {|n| @unindexed_items_size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the indexedItemCount property value. The estimated count of items for the search that matched the content query.
                ## @return a int64
                ## 
                def indexed_item_count
                    return @indexed_item_count
                end
                ## 
                ## Sets the indexedItemCount property value. The estimated count of items for the search that matched the content query.
                ## @param value Value to set for the indexed_item_count property.
                ## @return a void
                ## 
                def indexed_item_count=(value)
                    @indexed_item_count = value
                end
                ## 
                ## Gets the indexedItemsSize property value. The estimated size of items for the search that matched the content query.
                ## @return a int64
                ## 
                def indexed_items_size
                    return @indexed_items_size
                end
                ## 
                ## Sets the indexedItemsSize property value. The estimated size of items for the search that matched the content query.
                ## @param value Value to set for the indexed_items_size property.
                ## @return a void
                ## 
                def indexed_items_size=(value)
                    @indexed_items_size = value
                end
                ## 
                ## Gets the mailboxCount property value. The number of mailboxes that had search hits.
                ## @return a integer
                ## 
                def mailbox_count
                    return @mailbox_count
                end
                ## 
                ## Sets the mailboxCount property value. The number of mailboxes that had search hits.
                ## @param value Value to set for the mailbox_count property.
                ## @return a void
                ## 
                def mailbox_count=(value)
                    @mailbox_count = value
                end
                ## 
                ## Gets the search property value. eDiscovery search.
                ## @return a ediscovery_search
                ## 
                def search
                    return @search
                end
                ## 
                ## Sets the search property value. eDiscovery search.
                ## @param value Value to set for the search property.
                ## @return a void
                ## 
                def search=(value)
                    @search = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("indexedItemCount", @indexed_item_count)
                    writer.write_object_value("indexedItemsSize", @indexed_items_size)
                    writer.write_number_value("mailboxCount", @mailbox_count)
                    writer.write_object_value("search", @search)
                    writer.write_number_value("siteCount", @site_count)
                    writer.write_object_value("unindexedItemCount", @unindexed_item_count)
                    writer.write_object_value("unindexedItemsSize", @unindexed_items_size)
                end
                ## 
                ## Gets the siteCount property value. The number of mailboxes that had search hits.
                ## @return a integer
                ## 
                def site_count
                    return @site_count
                end
                ## 
                ## Sets the siteCount property value. The number of mailboxes that had search hits.
                ## @param value Value to set for the site_count property.
                ## @return a void
                ## 
                def site_count=(value)
                    @site_count = value
                end
                ## 
                ## Gets the unindexedItemCount property value. The estimated count of unindexed items for the collection.
                ## @return a int64
                ## 
                def unindexed_item_count
                    return @unindexed_item_count
                end
                ## 
                ## Sets the unindexedItemCount property value. The estimated count of unindexed items for the collection.
                ## @param value Value to set for the unindexed_item_count property.
                ## @return a void
                ## 
                def unindexed_item_count=(value)
                    @unindexed_item_count = value
                end
                ## 
                ## Gets the unindexedItemsSize property value. The estimated size of unindexed items for the collection.
                ## @return a int64
                ## 
                def unindexed_items_size
                    return @unindexed_items_size
                end
                ## 
                ## Sets the unindexedItemsSize property value. The estimated size of unindexed items for the collection.
                ## @param value Value to set for the unindexed_items_size property.
                ## @return a void
                ## 
                def unindexed_items_size=(value)
                    @unindexed_items_size = value
                end
            end
        end
    end
end
