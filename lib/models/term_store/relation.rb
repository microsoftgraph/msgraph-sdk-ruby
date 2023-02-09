require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './term_store'

module MicrosoftGraph
    module Models
        module TermStore
            class Relation < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The from [term] of the relation. The term from which the relationship is defined. A null value would indicate the relation is directly with the [set].
                @from_term
                ## 
                # The type of relation. Possible values are: pin, reuse.
                @relationship
                ## 
                # The [set] in which the relation is relevant.
                @set
                ## 
                # The to [term] of the relation. The term to which the relationship is defined.
                @to_term
                ## 
                ## Instantiates a new relation and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a relation
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Relation.new
                end
                ## 
                ## Gets the fromTerm property value. The from [term] of the relation. The term from which the relationship is defined. A null value would indicate the relation is directly with the [set].
                ## @return a term
                ## 
                def from_term
                    return @from_term
                end
                ## 
                ## Sets the fromTerm property value. The from [term] of the relation. The term from which the relationship is defined. A null value would indicate the relation is directly with the [set].
                ## @param value Value to set for the from_term property.
                ## @return a void
                ## 
                def from_term=(value)
                    @from_term = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "fromTerm" => lambda {|n| @from_term = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermStore::Term.create_from_discriminator_value(pn) }) },
                        "relationship" => lambda {|n| @relationship = n.get_enum_value(MicrosoftGraph::Models::TermStore::RelationType) },
                        "set" => lambda {|n| @set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermStore::Set.create_from_discriminator_value(pn) }) },
                        "toTerm" => lambda {|n| @to_term = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermStore::Term.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the relationship property value. The type of relation. Possible values are: pin, reuse.
                ## @return a relation_type
                ## 
                def relationship
                    return @relationship
                end
                ## 
                ## Sets the relationship property value. The type of relation. Possible values are: pin, reuse.
                ## @param value Value to set for the relationship property.
                ## @return a void
                ## 
                def relationship=(value)
                    @relationship = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("fromTerm", @from_term)
                    writer.write_enum_value("relationship", @relationship)
                    writer.write_object_value("set", @set)
                    writer.write_object_value("toTerm", @to_term)
                end
                ## 
                ## Gets the set property value. The [set] in which the relation is relevant.
                ## @return a set
                ## 
                def set
                    return @set
                end
                ## 
                ## Sets the set property value. The [set] in which the relation is relevant.
                ## @param value Value to set for the set property.
                ## @return a void
                ## 
                def set=(value)
                    @set = value
                end
                ## 
                ## Gets the toTerm property value. The to [term] of the relation. The term to which the relationship is defined.
                ## @return a term
                ## 
                def to_term
                    return @to_term
                end
                ## 
                ## Sets the toTerm property value. The to [term] of the relation. The term to which the relationship is defined.
                ## @param value Value to set for the to_term property.
                ## @return a void
                ## 
                def to_term=(value)
                    @to_term = value
                end
            end
        end
    end
end
