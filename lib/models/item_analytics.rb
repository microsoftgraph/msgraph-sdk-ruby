require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ItemAnalytics < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The allTime property
            @all_time
            ## 
            # The itemActivityStats property
            @item_activity_stats
            ## 
            # The lastSevenDays property
            @last_seven_days
            ## 
            ## Gets the allTime property value. The allTime property
            ## @return a item_activity_stat
            ## 
            def all_time
                return @all_time
            end
            ## 
            ## Sets the allTime property value. The allTime property
            ## @param value Value to set for the all_time property.
            ## @return a void
            ## 
            def all_time=(value)
                @all_time = value
            end
            ## 
            ## Instantiates a new itemAnalytics and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_analytics
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemAnalytics.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allTime" => lambda {|n| @all_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemActivityStat.create_from_discriminator_value(pn) }) },
                    "itemActivityStats" => lambda {|n| @item_activity_stats = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ItemActivityStat.create_from_discriminator_value(pn) }) },
                    "lastSevenDays" => lambda {|n| @last_seven_days = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemActivityStat.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the itemActivityStats property value. The itemActivityStats property
            ## @return a item_activity_stat
            ## 
            def item_activity_stats
                return @item_activity_stats
            end
            ## 
            ## Sets the itemActivityStats property value. The itemActivityStats property
            ## @param value Value to set for the item_activity_stats property.
            ## @return a void
            ## 
            def item_activity_stats=(value)
                @item_activity_stats = value
            end
            ## 
            ## Gets the lastSevenDays property value. The lastSevenDays property
            ## @return a item_activity_stat
            ## 
            def last_seven_days
                return @last_seven_days
            end
            ## 
            ## Sets the lastSevenDays property value. The lastSevenDays property
            ## @param value Value to set for the last_seven_days property.
            ## @return a void
            ## 
            def last_seven_days=(value)
                @last_seven_days = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("allTime", @all_time)
                writer.write_collection_of_object_values("itemActivityStats", @item_activity_stats)
                writer.write_object_value("lastSevenDays", @last_seven_days)
            end
        end
    end
end
