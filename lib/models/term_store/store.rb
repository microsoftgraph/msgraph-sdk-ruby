require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './term_store'

module MicrosoftGraph
    module Models
        module TermStore
            class Store < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Default language of the term store.
                @default_language_tag
                ## 
                # Collection of all groups available in the term store.
                @groups
                ## 
                # List of languages for the term store.
                @language_tags
                ## 
                # Collection of all sets available in the term store. This relationship can only be used to load a specific term set.
                @sets
                ## 
                ## Instantiates a new store and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a store
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Store.new
                end
                ## 
                ## Gets the defaultLanguageTag property value. Default language of the term store.
                ## @return a string
                ## 
                def default_language_tag
                    return @default_language_tag
                end
                ## 
                ## Sets the defaultLanguageTag property value. Default language of the term store.
                ## @param value Value to set for the default_language_tag property.
                ## @return a void
                ## 
                def default_language_tag=(value)
                    @default_language_tag = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "defaultLanguageTag" => lambda {|n| @default_language_tag = n.get_string_value() },
                        "groups" => lambda {|n| @groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStore::Group.create_from_discriminator_value(pn) }) },
                        "languageTags" => lambda {|n| @language_tags = n.get_collection_of_primitive_values(String) },
                        "sets" => lambda {|n| @sets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStore::Set.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the groups property value. Collection of all groups available in the term store.
                ## @return a group
                ## 
                def groups
                    return @groups
                end
                ## 
                ## Sets the groups property value. Collection of all groups available in the term store.
                ## @param value Value to set for the groups property.
                ## @return a void
                ## 
                def groups=(value)
                    @groups = value
                end
                ## 
                ## Gets the languageTags property value. List of languages for the term store.
                ## @return a string
                ## 
                def language_tags
                    return @language_tags
                end
                ## 
                ## Sets the languageTags property value. List of languages for the term store.
                ## @param value Value to set for the language_tags property.
                ## @return a void
                ## 
                def language_tags=(value)
                    @language_tags = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("defaultLanguageTag", @default_language_tag)
                    writer.write_collection_of_object_values("groups", @groups)
                    writer.write_collection_of_primitive_values("languageTags", @language_tags)
                    writer.write_collection_of_object_values("sets", @sets)
                end
                ## 
                ## Gets the sets property value. Collection of all sets available in the term store. This relationship can only be used to load a specific term set.
                ## @return a set
                ## 
                def sets
                    return @sets
                end
                ## 
                ## Sets the sets property value. Collection of all sets available in the term store. This relationship can only be used to load a specific term set.
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
