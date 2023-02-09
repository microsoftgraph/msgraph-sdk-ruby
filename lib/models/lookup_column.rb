require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LookupColumn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether multiple values can be selected from the source.
            @allow_multiple_values
            ## 
            # Indicates whether values in the column should be able to exceed the standard limit of 255 characters.
            @allow_unlimited_length
            ## 
            # The name of the lookup source column.
            @column_name
            ## 
            # The unique identifier of the lookup source list.
            @list_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If specified, this column is a secondary lookup, pulling an additional field from the list item looked up by the primary lookup. Use the list item looked up by the primary as the source for the column named here.
            @primary_lookup_column_id
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
            ## Gets the allowMultipleValues property value. Indicates whether multiple values can be selected from the source.
            ## @return a boolean
            ## 
            def allow_multiple_values
                return @allow_multiple_values
            end
            ## 
            ## Sets the allowMultipleValues property value. Indicates whether multiple values can be selected from the source.
            ## @param value Value to set for the allow_multiple_values property.
            ## @return a void
            ## 
            def allow_multiple_values=(value)
                @allow_multiple_values = value
            end
            ## 
            ## Gets the allowUnlimitedLength property value. Indicates whether values in the column should be able to exceed the standard limit of 255 characters.
            ## @return a boolean
            ## 
            def allow_unlimited_length
                return @allow_unlimited_length
            end
            ## 
            ## Sets the allowUnlimitedLength property value. Indicates whether values in the column should be able to exceed the standard limit of 255 characters.
            ## @param value Value to set for the allow_unlimited_length property.
            ## @return a void
            ## 
            def allow_unlimited_length=(value)
                @allow_unlimited_length = value
            end
            ## 
            ## Gets the columnName property value. The name of the lookup source column.
            ## @return a string
            ## 
            def column_name
                return @column_name
            end
            ## 
            ## Sets the columnName property value. The name of the lookup source column.
            ## @param value Value to set for the column_name property.
            ## @return a void
            ## 
            def column_name=(value)
                @column_name = value
            end
            ## 
            ## Instantiates a new lookupColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a lookup_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LookupColumn.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowMultipleValues" => lambda {|n| @allow_multiple_values = n.get_boolean_value() },
                    "allowUnlimitedLength" => lambda {|n| @allow_unlimited_length = n.get_boolean_value() },
                    "columnName" => lambda {|n| @column_name = n.get_string_value() },
                    "listId" => lambda {|n| @list_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "primaryLookupColumnId" => lambda {|n| @primary_lookup_column_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the listId property value. The unique identifier of the lookup source list.
            ## @return a string
            ## 
            def list_id
                return @list_id
            end
            ## 
            ## Sets the listId property value. The unique identifier of the lookup source list.
            ## @param value Value to set for the list_id property.
            ## @return a void
            ## 
            def list_id=(value)
                @list_id = value
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
            ## Gets the primaryLookupColumnId property value. If specified, this column is a secondary lookup, pulling an additional field from the list item looked up by the primary lookup. Use the list item looked up by the primary as the source for the column named here.
            ## @return a string
            ## 
            def primary_lookup_column_id
                return @primary_lookup_column_id
            end
            ## 
            ## Sets the primaryLookupColumnId property value. If specified, this column is a secondary lookup, pulling an additional field from the list item looked up by the primary lookup. Use the list item looked up by the primary as the source for the column named here.
            ## @param value Value to set for the primary_lookup_column_id property.
            ## @return a void
            ## 
            def primary_lookup_column_id=(value)
                @primary_lookup_column_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowMultipleValues", @allow_multiple_values)
                writer.write_boolean_value("allowUnlimitedLength", @allow_unlimited_length)
                writer.write_string_value("columnName", @column_name)
                writer.write_string_value("listId", @list_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("primaryLookupColumnId", @primary_lookup_column_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
