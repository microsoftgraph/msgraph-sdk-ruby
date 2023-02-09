require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ItemActivity < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An item was accessed.
            @access
            ## 
            # Details about when the activity took place. Read-only.
            @activity_date_time
            ## 
            # Identity of who performed the action. Read-only.
            @actor
            ## 
            # Exposes the driveItem that was the target of this activity.
            @drive_item
            ## 
            ## Gets the access property value. An item was accessed.
            ## @return a access_action
            ## 
            def access
                return @access
            end
            ## 
            ## Sets the access property value. An item was accessed.
            ## @param value Value to set for the access property.
            ## @return a void
            ## 
            def access=(value)
                @access = value
            end
            ## 
            ## Gets the activityDateTime property value. Details about when the activity took place. Read-only.
            ## @return a date_time
            ## 
            def activity_date_time
                return @activity_date_time
            end
            ## 
            ## Sets the activityDateTime property value. Details about when the activity took place. Read-only.
            ## @param value Value to set for the activity_date_time property.
            ## @return a void
            ## 
            def activity_date_time=(value)
                @activity_date_time = value
            end
            ## 
            ## Gets the actor property value. Identity of who performed the action. Read-only.
            ## @return a identity_set
            ## 
            def actor
                return @actor
            end
            ## 
            ## Sets the actor property value. Identity of who performed the action. Read-only.
            ## @param value Value to set for the actor property.
            ## @return a void
            ## 
            def actor=(value)
                @actor = value
            end
            ## 
            ## Instantiates a new itemActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemActivity.new
            end
            ## 
            ## Gets the driveItem property value. Exposes the driveItem that was the target of this activity.
            ## @return a drive_item
            ## 
            def drive_item
                return @drive_item
            end
            ## 
            ## Sets the driveItem property value. Exposes the driveItem that was the target of this activity.
            ## @param value Value to set for the drive_item property.
            ## @return a void
            ## 
            def drive_item=(value)
                @drive_item = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "access" => lambda {|n| @access = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessAction.create_from_discriminator_value(pn) }) },
                    "activityDateTime" => lambda {|n| @activity_date_time = n.get_date_time_value() },
                    "actor" => lambda {|n| @actor = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "driveItem" => lambda {|n| @drive_item = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("access", @access)
                writer.write_date_time_value("activityDateTime", @activity_date_time)
                writer.write_object_value("actor", @actor)
                writer.write_object_value("driveItem", @drive_item)
            end
        end
    end
end
