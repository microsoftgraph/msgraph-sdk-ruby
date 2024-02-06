require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TermStoreTerm < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Children of current term.
            @children
            ## 
            # Date and time of term creation. Read-only.
            @created_date_time
            ## 
            # Description about term that is dependent on the languageTag.
            @descriptions
            ## 
            # Label metadata for a term.
            @labels
            ## 
            # Last date and time of term modification. Read-only.
            @last_modified_date_time
            ## 
            # Collection of properties on the term.
            @properties
            ## 
            # To indicate which terms are related to the current term as either pinned or reused.
            @relations
            ## 
            # The [set] in which the term is created.
            @set
            ## 
            ## Gets the children property value. Children of current term.
            ## @return a term_store_term
            ## 
            def children
                return @children
            end
            ## 
            ## Sets the children property value. Children of current term.
            ## @param value Value to set for the children property.
            ## @return a void
            ## 
            def children=(value)
                @children = value
            end
            ## 
            ## Instantiates a new termStoreTerm and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of term creation. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of term creation. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a term_store_term
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TermStoreTerm.new
            end
            ## 
            ## Gets the descriptions property value. Description about term that is dependent on the languageTag.
            ## @return a term_store_localized_description
            ## 
            def descriptions
                return @descriptions
            end
            ## 
            ## Sets the descriptions property value. Description about term that is dependent on the languageTag.
            ## @param value Value to set for the descriptions property.
            ## @return a void
            ## 
            def descriptions=(value)
                @descriptions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStoreTerm.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "descriptions" => lambda {|n| @descriptions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStoreLocalizedDescription.create_from_discriminator_value(pn) }) },
                    "labels" => lambda {|n| @labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStoreLocalizedLabel.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "properties" => lambda {|n| @properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "relations" => lambda {|n| @relations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermStoreRelation.create_from_discriminator_value(pn) }) },
                    "set" => lambda {|n| @set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermStoreSet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the labels property value. Label metadata for a term.
            ## @return a term_store_localized_label
            ## 
            def labels
                return @labels
            end
            ## 
            ## Sets the labels property value. Label metadata for a term.
            ## @param value Value to set for the labels property.
            ## @return a void
            ## 
            def labels=(value)
                @labels = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Last date and time of term modification. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Last date and time of term modification. Read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the properties property value. Collection of properties on the term.
            ## @return a key_value
            ## 
            def properties
                return @properties
            end
            ## 
            ## Sets the properties property value. Collection of properties on the term.
            ## @param value Value to set for the properties property.
            ## @return a void
            ## 
            def properties=(value)
                @properties = value
            end
            ## 
            ## Gets the relations property value. To indicate which terms are related to the current term as either pinned or reused.
            ## @return a term_store_relation
            ## 
            def relations
                return @relations
            end
            ## 
            ## Sets the relations property value. To indicate which terms are related to the current term as either pinned or reused.
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
                writer.write_collection_of_object_values("children", @children) unless @children.nil?
                writer.write_date_time_value("createdDateTime", @created_date_time) unless @created_date_time.nil?
                writer.write_collection_of_object_values("descriptions", @descriptions) unless @descriptions.nil?
                writer.write_collection_of_object_values("labels", @labels) unless @labels.nil?
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time) unless @last_modified_date_time.nil?
                writer.write_collection_of_object_values("properties", @properties) unless @properties.nil?
                writer.write_collection_of_object_values("relations", @relations) unless @relations.nil?
                writer.write_object_value("set", @set) unless @set.nil?
            end
            ## 
            ## Gets the set property value. The [set] in which the term is created.
            ## @return a term_store_set
            ## 
            def set
                return @set
            end
            ## 
            ## Sets the set property value. The [set] in which the term is created.
            ## @param value Value to set for the set property.
            ## @return a void
            ## 
            def set=(value)
                @set = value
            end
        end
    end
end
