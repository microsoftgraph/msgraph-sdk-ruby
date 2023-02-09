require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ItemActivityStat < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Statistics about the access actions in this interval. Read-only.
            @access
            ## 
            # Exposes the itemActivities represented in this itemActivityStat resource.
            @activities
            ## 
            # Statistics about the create actions in this interval. Read-only.
            @create
            ## 
            # Statistics about the delete actions in this interval. Read-only.
            @delete
            ## 
            # Statistics about the edit actions in this interval. Read-only.
            @edit
            ## 
            # When the interval ends. Read-only.
            @end_date_time
            ## 
            # Indicates that the statistics in this interval are based on incomplete data. Read-only.
            @incomplete_data
            ## 
            # Indicates whether the item is 'trending.' Read-only.
            @is_trending
            ## 
            # Statistics about the move actions in this interval. Read-only.
            @move
            ## 
            # When the interval starts. Read-only.
            @start_date_time
            ## 
            ## Gets the access property value. Statistics about the access actions in this interval. Read-only.
            ## @return a item_action_stat
            ## 
            def access
                return @access
            end
            ## 
            ## Sets the access property value. Statistics about the access actions in this interval. Read-only.
            ## @param value Value to set for the access property.
            ## @return a void
            ## 
            def access=(value)
                @access = value
            end
            ## 
            ## Gets the activities property value. Exposes the itemActivities represented in this itemActivityStat resource.
            ## @return a item_activity
            ## 
            def activities
                return @activities
            end
            ## 
            ## Sets the activities property value. Exposes the itemActivities represented in this itemActivityStat resource.
            ## @param value Value to set for the activities property.
            ## @return a void
            ## 
            def activities=(value)
                @activities = value
            end
            ## 
            ## Instantiates a new itemActivityStat and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the create property value. Statistics about the create actions in this interval. Read-only.
            ## @return a item_action_stat
            ## 
            def create
                return @create
            end
            ## 
            ## Sets the create property value. Statistics about the create actions in this interval. Read-only.
            ## @param value Value to set for the create property.
            ## @return a void
            ## 
            def create=(value)
                @create = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_activity_stat
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemActivityStat.new
            end
            ## 
            ## Gets the delete property value. Statistics about the delete actions in this interval. Read-only.
            ## @return a item_action_stat
            ## 
            def delete
                return @delete
            end
            ## 
            ## Sets the delete property value. Statistics about the delete actions in this interval. Read-only.
            ## @param value Value to set for the delete property.
            ## @return a void
            ## 
            def delete=(value)
                @delete = value
            end
            ## 
            ## Gets the edit property value. Statistics about the edit actions in this interval. Read-only.
            ## @return a item_action_stat
            ## 
            def edit
                return @edit
            end
            ## 
            ## Sets the edit property value. Statistics about the edit actions in this interval. Read-only.
            ## @param value Value to set for the edit property.
            ## @return a void
            ## 
            def edit=(value)
                @edit = value
            end
            ## 
            ## Gets the endDateTime property value. When the interval ends. Read-only.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. When the interval ends. Read-only.
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "access" => lambda {|n| @access = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemActionStat.create_from_discriminator_value(pn) }) },
                    "activities" => lambda {|n| @activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ItemActivity.create_from_discriminator_value(pn) }) },
                    "create" => lambda {|n| @create = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemActionStat.create_from_discriminator_value(pn) }) },
                    "delete" => lambda {|n| @delete = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemActionStat.create_from_discriminator_value(pn) }) },
                    "edit" => lambda {|n| @edit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemActionStat.create_from_discriminator_value(pn) }) },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "incompleteData" => lambda {|n| @incomplete_data = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IncompleteData.create_from_discriminator_value(pn) }) },
                    "isTrending" => lambda {|n| @is_trending = n.get_boolean_value() },
                    "move" => lambda {|n| @move = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemActionStat.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the incompleteData property value. Indicates that the statistics in this interval are based on incomplete data. Read-only.
            ## @return a incomplete_data
            ## 
            def incomplete_data
                return @incomplete_data
            end
            ## 
            ## Sets the incompleteData property value. Indicates that the statistics in this interval are based on incomplete data. Read-only.
            ## @param value Value to set for the incomplete_data property.
            ## @return a void
            ## 
            def incomplete_data=(value)
                @incomplete_data = value
            end
            ## 
            ## Gets the isTrending property value. Indicates whether the item is 'trending.' Read-only.
            ## @return a boolean
            ## 
            def is_trending
                return @is_trending
            end
            ## 
            ## Sets the isTrending property value. Indicates whether the item is 'trending.' Read-only.
            ## @param value Value to set for the is_trending property.
            ## @return a void
            ## 
            def is_trending=(value)
                @is_trending = value
            end
            ## 
            ## Gets the move property value. Statistics about the move actions in this interval. Read-only.
            ## @return a item_action_stat
            ## 
            def move
                return @move
            end
            ## 
            ## Sets the move property value. Statistics about the move actions in this interval. Read-only.
            ## @param value Value to set for the move property.
            ## @return a void
            ## 
            def move=(value)
                @move = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("access", @access)
                writer.write_collection_of_object_values("activities", @activities)
                writer.write_object_value("create", @create)
                writer.write_object_value("delete", @delete)
                writer.write_object_value("edit", @edit)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_object_value("incompleteData", @incomplete_data)
                writer.write_boolean_value("isTrending", @is_trending)
                writer.write_object_value("move", @move)
                writer.write_date_time_value("startDateTime", @start_date_time)
            end
            ## 
            ## Gets the startDateTime property value. When the interval starts. Read-only.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. When the interval starts. Read-only.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
        end
    end
end
