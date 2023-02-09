require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './term_store'

module MicrosoftGraph
    module Models
        module TermStore
            class Set < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Children terms of set in term [store].
                @children
                ## 
                # Date and time of set creation. Read-only.
                @created_date_time
                ## 
                # Description that gives details on the term usage.
                @description
                ## 
                # Name of the set for each languageTag.
                @localized_names
                ## 
                # The parentGroup property
                @parent_group
                ## 
                # Custom properties for the set.
                @properties
                ## 
                # Indicates which terms have been pinned or reused directly under the set.
                @relations
                ## 
                # All the terms under the set.
                @terms
                ## 
                ## Gets the children property value. Children terms of set in term [store].
                ## @return a term
                ## 
                def children
                    return @children
                end
                ## 
                ## Sets the children property value. Children terms of set in term [store].
                ## @param value Value to set for the children property.
                ## @return a void
                ## 
                def children=(value)
                    @children = value
                end
                ## 
                ## Instantiates a new set and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdDateTime property value. Date and time of set creation. Read-only.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. Date and time of set creation. Read-only.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a set
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Set.new
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
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStore::Term.create_from_discriminator_value(pn) }) },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "localizedNames" => lambda {|n| @localized_names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStore::LocalizedName.create_from_discriminator_value(pn) }) },
                        "parentGroup" => lambda {|n| @parent_group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermStore::Group.create_from_discriminator_value(pn) }) },
                        "properties" => lambda {|n| @properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValue.create_from_discriminator_value(pn) }) },
                        "relations" => lambda {|n| @relations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStore::Relation.create_from_discriminator_value(pn) }) },
                        "terms" => lambda {|n| @terms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStore::Term.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the localizedNames property value. Name of the set for each languageTag.
                ## @return a localized_name
                ## 
                def localized_names
                    return @localized_names
                end
                ## 
                ## Sets the localizedNames property value. Name of the set for each languageTag.
                ## @param value Value to set for the localized_names property.
                ## @return a void
                ## 
                def localized_names=(value)
                    @localized_names = value
                end
                ## 
                ## Gets the parentGroup property value. The parentGroup property
                ## @return a group
                ## 
                def parent_group
                    return @parent_group
                end
                ## 
                ## Sets the parentGroup property value. The parentGroup property
                ## @param value Value to set for the parent_group property.
                ## @return a void
                ## 
                def parent_group=(value)
                    @parent_group = value
                end
                ## 
                ## Gets the properties property value. Custom properties for the set.
                ## @return a key_value
                ## 
                def properties
                    return @properties
                end
                ## 
                ## Sets the properties property value. Custom properties for the set.
                ## @param value Value to set for the properties property.
                ## @return a void
                ## 
                def properties=(value)
                    @properties = value
                end
                ## 
                ## Gets the relations property value. Indicates which terms have been pinned or reused directly under the set.
                ## @return a relation
                ## 
                def relations
                    return @relations
                end
                ## 
                ## Sets the relations property value. Indicates which terms have been pinned or reused directly under the set.
                ## @param value Value to set for the relations property.
                ## @return a void
                ## 
                def relations=(value)
                    @relations = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("children", @children)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("description", @description)
                    writer.write_collection_of_object_values("localizedNames", @localized_names)
                    writer.write_object_value("parentGroup", @parent_group)
                    writer.write_collection_of_object_values("properties", @properties)
                    writer.write_collection_of_object_values("relations", @relations)
                    writer.write_collection_of_object_values("terms", @terms)
                end
                ## 
                ## Gets the terms property value. All the terms under the set.
                ## @return a term
                ## 
                def terms
                    return @terms
                end
                ## 
                ## Sets the terms property value. All the terms under the set.
                ## @param value Value to set for the terms property.
                ## @return a void
                ## 
                def terms=(value)
                    @terms = value
                end
            end
        end
    end
end
