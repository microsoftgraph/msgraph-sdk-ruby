require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookTableSort < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the current conditions used to last sort the table. Read-only.
            @fields
            ## 
            # Represents whether the casing impacted the last sort of the table. Read-only.
            @match_case
            ## 
            # Represents Chinese character ordering method last used to sort the table. The possible values are: PinYin, StrokeCount. Read-only.
            @method
            ## 
            ## Instantiates a new workbookTableSort and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_table_sort
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookTableSort.new
            end
            ## 
            ## Gets the fields property value. Represents the current conditions used to last sort the table. Read-only.
            ## @return a workbook_sort_field
            ## 
            def fields
                return @fields
            end
            ## 
            ## Sets the fields property value. Represents the current conditions used to last sort the table. Read-only.
            ## @param value Value to set for the fields property.
            ## @return a void
            ## 
            def fields=(value)
                @fields = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fields" => lambda {|n| @fields = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookSortField.create_from_discriminator_value(pn) }) },
                    "matchCase" => lambda {|n| @match_case = n.get_boolean_value() },
                    "method" => lambda {|n| @method = n.get_string_value() },
                })
            end
            ## 
            ## Gets the matchCase property value. Represents whether the casing impacted the last sort of the table. Read-only.
            ## @return a boolean
            ## 
            def match_case
                return @match_case
            end
            ## 
            ## Sets the matchCase property value. Represents whether the casing impacted the last sort of the table. Read-only.
            ## @param value Value to set for the match_case property.
            ## @return a void
            ## 
            def match_case=(value)
                @match_case = value
            end
            ## 
            ## Gets the method property value. Represents Chinese character ordering method last used to sort the table. The possible values are: PinYin, StrokeCount. Read-only.
            ## @return a string
            ## 
            def method
                return @method
            end
            ## 
            ## Sets the method property value. Represents Chinese character ordering method last used to sort the table. The possible values are: PinYin, StrokeCount. Read-only.
            ## @param value Value to set for the method property.
            ## @return a void
            ## 
            def method=(value)
                @method = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("fields", @fields)
                writer.write_boolean_value("matchCase", @match_case)
                writer.write_string_value("method", @method)
            end
        end
    end
end
