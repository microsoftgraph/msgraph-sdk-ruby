require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'
require_relative './term_store/set'
require_relative './term_store/term'

module MicrosoftGraph
    module Models
        class TermColumn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies whether the column will allow more than one value.
            @allow_multiple_values
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The parentTerm property
            @parent_term
            ## 
            # Specifies whether to display the entire term path or only the term label.
            @show_fully_qualified_name
            ## 
            # The termSet property
            @term_set
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowMultipleValues property value. Specifies whether the column will allow more than one value.
            ## @return a boolean
            ## 
            def allow_multiple_values
                return @allow_multiple_values
            end
            ## 
            ## Sets the allowMultipleValues property value. Specifies whether the column will allow more than one value.
            ## @param value Value to set for the allow_multiple_values property.
            ## @return a void
            ## 
            def allow_multiple_values=(value)
                @allow_multiple_values = value
            end
            ## 
            ## Instantiates a new termColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a term_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TermColumn.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowMultipleValues" => lambda {|n| @allow_multiple_values = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "parentTerm" => lambda {|n| @parent_term = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermStore::Term.create_from_discriminator_value(pn) }) },
                    "showFullyQualifiedName" => lambda {|n| @show_fully_qualified_name = n.get_boolean_value() },
                    "termSet" => lambda {|n| @term_set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermStore::Set.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the parentTerm property value. The parentTerm property
            ## @return a term
            ## 
            def parent_term
                return @parent_term
            end
            ## 
            ## Sets the parentTerm property value. The parentTerm property
            ## @param value Value to set for the parent_term property.
            ## @return a void
            ## 
            def parent_term=(value)
                @parent_term = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowMultipleValues", @allow_multiple_values)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("parentTerm", @parent_term)
                writer.write_boolean_value("showFullyQualifiedName", @show_fully_qualified_name)
                writer.write_object_value("termSet", @term_set)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the showFullyQualifiedName property value. Specifies whether to display the entire term path or only the term label.
            ## @return a boolean
            ## 
            def show_fully_qualified_name
                return @show_fully_qualified_name
            end
            ## 
            ## Sets the showFullyQualifiedName property value. Specifies whether to display the entire term path or only the term label.
            ## @param value Value to set for the show_fully_qualified_name property.
            ## @return a void
            ## 
            def show_fully_qualified_name=(value)
                @show_fully_qualified_name = value
            end
            ## 
            ## Gets the termSet property value. The termSet property
            ## @return a set
            ## 
            def term_set
                return @term_set
            end
            ## 
            ## Sets the termSet property value. The termSet property
            ## @param value Value to set for the term_set property.
            ## @return a void
            ## 
            def term_set=(value)
                @term_set = value
            end
        end
    end
end
