require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BaseItem < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identity of the user, device, or application which created the item. Read-only.
            @created_by
            ## 
            # Identity of the user who created the item. Read-only.
            @created_by_user
            ## 
            # Date and time of item creation. Read-only.
            @created_date_time
            ## 
            # Provides a user-visible description of the item. Optional.
            @description
            ## 
            # ETag for the item. Read-only.
            @e_tag
            ## 
            # Identity of the user, device, and application which last modified the item. Read-only.
            @last_modified_by
            ## 
            # Identity of the user who last modified the item. Read-only.
            @last_modified_by_user
            ## 
            # Date and time the item was last modified. Read-only.
            @last_modified_date_time
            ## 
            # The name of the item. Read-write.
            @name
            ## 
            # Parent information, if the item has a parent. Read-write.
            @parent_reference
            ## 
            # URL that displays the resource in the browser. Read-only.
            @web_url
            ## 
            ## Instantiates a new baseItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user, device, or application which created the item. Read-only.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user, device, or application which created the item. Read-only.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdByUser property value. Identity of the user who created the item. Read-only.
            ## @return a user
            ## 
            def created_by_user
                return @created_by_user
            end
            ## 
            ## Sets the createdByUser property value. Identity of the user who created the item. Read-only.
            ## @param value Value to set for the created_by_user property.
            ## @return a void
            ## 
            def created_by_user=(value)
                @created_by_user = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of item creation. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of item creation. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a base_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.drive"
                            return Drive.new
                        when "#microsoft.graph.driveItem"
                            return DriveItem.new
                        when "#microsoft.graph.list"
                            return List.new
                        when "#microsoft.graph.listItem"
                            return ListItem.new
                        when "#microsoft.graph.sharedDriveItem"
                            return SharedDriveItem.new
                        when "#microsoft.graph.site"
                            return Site.new
                    end
                end
                return BaseItem.new
            end
            ## 
            ## Gets the description property value. Provides a user-visible description of the item. Optional.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Provides a user-visible description of the item. Optional.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the eTag property value. ETag for the item. Read-only.
            ## @return a string
            ## 
            def e_tag
                return @e_tag
            end
            ## 
            ## Sets the eTag property value. ETag for the item. Read-only.
            ## @param value Value to set for the e_tag property.
            ## @return a void
            ## 
            def e_tag=(value)
                @e_tag = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdByUser" => lambda {|n| @created_by_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "eTag" => lambda {|n| @e_tag = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedByUser" => lambda {|n| @last_modified_by_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "parentReference" => lambda {|n| @parent_reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemReference.create_from_discriminator_value(pn) }) },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user, device, and application which last modified the item. Read-only.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user, device, and application which last modified the item. Read-only.
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedByUser property value. Identity of the user who last modified the item. Read-only.
            ## @return a user
            ## 
            def last_modified_by_user
                return @last_modified_by_user
            end
            ## 
            ## Sets the lastModifiedByUser property value. Identity of the user who last modified the item. Read-only.
            ## @param value Value to set for the last_modified_by_user property.
            ## @return a void
            ## 
            def last_modified_by_user=(value)
                @last_modified_by_user = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time the item was last modified. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time the item was last modified. Read-only.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the name property value. The name of the item. Read-write.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the item. Read-write.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the parentReference property value. Parent information, if the item has a parent. Read-write.
            ## @return a item_reference
            ## 
            def parent_reference
                return @parent_reference
            end
            ## 
            ## Sets the parentReference property value. Parent information, if the item has a parent. Read-write.
            ## @param value Value to set for the parent_reference property.
            ## @return a void
            ## 
            def parent_reference=(value)
                @parent_reference = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("createdBy", @created_by)
                writer.write_object_value("createdByUser", @created_by_user)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("eTag", @e_tag)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_object_value("lastModifiedByUser", @last_modified_by_user)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("name", @name)
                writer.write_object_value("parentReference", @parent_reference)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the webUrl property value. URL that displays the resource in the browser. Read-only.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. URL that displays the resource in the browser. Read-only.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
