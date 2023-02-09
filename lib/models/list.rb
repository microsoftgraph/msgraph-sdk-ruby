require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class List < MicrosoftGraph::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of field definitions for this list.
            @columns
            ## 
            # The collection of content types present in this list.
            @content_types
            ## 
            # The displayable title of the list.
            @display_name
            ## 
            # Only present on document libraries. Allows access to the list as a [drive][] resource with [driveItems][driveItem].
            @drive
            ## 
            # All items contained in the list.
            @items
            ## 
            # Provides additional details about the list.
            @list
            ## 
            # The collection of long-running operations on the list.
            @operations
            ## 
            # Returns identifiers useful for SharePoint REST compatibility. Read-only.
            @sharepoint_ids
            ## 
            # The set of subscriptions on the list.
            @subscriptions
            ## 
            # If present, indicates that this is a system-managed list. Read-only.
            @system
            ## 
            ## Gets the columns property value. The collection of field definitions for this list.
            ## @return a column_definition
            ## 
            def columns
                return @columns
            end
            ## 
            ## Sets the columns property value. The collection of field definitions for this list.
            ## @param value Value to set for the columns property.
            ## @return a void
            ## 
            def columns=(value)
                @columns = value
            end
            ## 
            ## Instantiates a new list and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.list"
            end
            ## 
            ## Gets the contentTypes property value. The collection of content types present in this list.
            ## @return a content_type
            ## 
            def content_types
                return @content_types
            end
            ## 
            ## Sets the contentTypes property value. The collection of content types present in this list.
            ## @param value Value to set for the content_types property.
            ## @return a void
            ## 
            def content_types=(value)
                @content_types = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a list
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return List.new
            end
            ## 
            ## Gets the displayName property value. The displayable title of the list.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayable title of the list.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the drive property value. Only present on document libraries. Allows access to the list as a [drive][] resource with [driveItems][driveItem].
            ## @return a drive
            ## 
            def drive
                return @drive
            end
            ## 
            ## Sets the drive property value. Only present on document libraries. Allows access to the list as a [drive][] resource with [driveItems][driveItem].
            ## @param value Value to set for the drive property.
            ## @return a void
            ## 
            def drive=(value)
                @drive = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "columns" => lambda {|n| @columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "contentTypes" => lambda {|n| @content_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "drive" => lambda {|n| @drive = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Drive.create_from_discriminator_value(pn) }) },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ListItem.create_from_discriminator_value(pn) }) },
                    "list" => lambda {|n| @list = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ListInfo.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RichLongRunningOperation.create_from_discriminator_value(pn) }) },
                    "sharepointIds" => lambda {|n| @sharepoint_ids = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharepointIds.create_from_discriminator_value(pn) }) },
                    "subscriptions" => lambda {|n| @subscriptions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Subscription.create_from_discriminator_value(pn) }) },
                    "system" => lambda {|n| @system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SystemFacet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the items property value. All items contained in the list.
            ## @return a list_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. All items contained in the list.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the list property value. Provides additional details about the list.
            ## @return a list_info
            ## 
            def list
                return @list
            end
            ## 
            ## Sets the list property value. Provides additional details about the list.
            ## @param value Value to set for the list property.
            ## @return a void
            ## 
            def list=(value)
                @list = value
            end
            ## 
            ## Gets the operations property value. The collection of long-running operations on the list.
            ## @return a rich_long_running_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The collection of long-running operations on the list.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("columns", @columns)
                writer.write_collection_of_object_values("contentTypes", @content_types)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("drive", @drive)
                writer.write_collection_of_object_values("items", @items)
                writer.write_object_value("list", @list)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_object_value("sharepointIds", @sharepoint_ids)
                writer.write_collection_of_object_values("subscriptions", @subscriptions)
                writer.write_object_value("system", @system)
            end
            ## 
            ## Gets the sharepointIds property value. Returns identifiers useful for SharePoint REST compatibility. Read-only.
            ## @return a sharepoint_ids
            ## 
            def sharepoint_ids
                return @sharepoint_ids
            end
            ## 
            ## Sets the sharepointIds property value. Returns identifiers useful for SharePoint REST compatibility. Read-only.
            ## @param value Value to set for the sharepoint_ids property.
            ## @return a void
            ## 
            def sharepoint_ids=(value)
                @sharepoint_ids = value
            end
            ## 
            ## Gets the subscriptions property value. The set of subscriptions on the list.
            ## @return a subscription
            ## 
            def subscriptions
                return @subscriptions
            end
            ## 
            ## Sets the subscriptions property value. The set of subscriptions on the list.
            ## @param value Value to set for the subscriptions property.
            ## @return a void
            ## 
            def subscriptions=(value)
                @subscriptions = value
            end
            ## 
            ## Gets the system property value. If present, indicates that this is a system-managed list. Read-only.
            ## @return a system_facet
            ## 
            def system
                return @system
            end
            ## 
            ## Sets the system property value. If present, indicates that this is a system-managed list. Read-only.
            ## @param value Value to set for the system property.
            ## @return a void
            ## 
            def system=(value)
                @system = value
            end
        end
    end
end
