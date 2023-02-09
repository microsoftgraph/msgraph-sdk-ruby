require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './term_store'

module MicrosoftGraph
    module Models
        module TermStore
            class Group < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Date and time of the group creation. Read-only.
                @created_date_time
                ## 
                # Description that gives details on the term usage.
                @description
                ## 
                # Name of the group.
                @display_name
                ## 
                # ID of the parent site of this group.
                @parent_site_id
                ## 
                # Returns the type of the group. Possible values are: global, system, and siteCollection.
                @scope
                ## 
                # All sets under the group in a term [store].
                @sets
                ## 
                ## Instantiates a new group and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdDateTime property value. Date and time of the group creation. Read-only.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. Date and time of the group creation. Read-only.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a group
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Group.new
                end
                ## 
                ## Gets the description property value. Description that gives details on the term usage.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Description that gives details on the term usage.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the displayName property value. Name of the group.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. Name of the group.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "parentSiteId" => lambda {|n| @parent_site_id = n.get_string_value() },
                        "scope" => lambda {|n| @scope = n.get_enum_value(MicrosoftGraph::Models::TermStore::TermGroupScope) },
                        "sets" => lambda {|n| @sets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStore::Set.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the parentSiteId property value. ID of the parent site of this group.
                ## @return a string
                ## 
                def parent_site_id
                    return @parent_site_id
                end
                ## 
                ## Sets the parentSiteId property value. ID of the parent site of this group.
                ## @param value Value to set for the parent_site_id property.
                ## @return a void
                ## 
                def parent_site_id=(value)
                    @parent_site_id = value
                end
                ## 
                ## Gets the scope property value. Returns the type of the group. Possible values are: global, system, and siteCollection.
                ## @return a term_group_scope
                ## 
                def scope
                    return @scope
                end
                ## 
                ## Sets the scope property value. Returns the type of the group. Possible values are: global, system, and siteCollection.
                ## @param value Value to set for the scope property.
                ## @return a void
                ## 
                def scope=(value)
                    @scope = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("parentSiteId", @parent_site_id)
                    writer.write_enum_value("scope", @scope)
                    writer.write_collection_of_object_values("sets", @sets)
                end
                ## 
                ## Gets the sets property value. All sets under the group in a term [store].
                ## @return a set
                ## 
                def sets
                    return @sets
                end
                ## 
                ## Sets the sets property value. All sets under the group in a term [store].
                ## @param value Value to set for the sets property.
                ## @return a void
                ## 
                def sets=(value)
                    @sets = value
                end
            end
        end
    end
end
