require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ColumnDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # This column stores boolean values.
            @boolean
            ## 
            # This column's data is calculated based on other columns.
            @calculated
            ## 
            # This column stores data from a list of choices.
            @choice
            ## 
            # For site columns, the name of the group this column belongs to. Helps organize related columns.
            @column_group
            ## 
            # This column stores content approval status.
            @content_approval_status
            ## 
            # This column stores currency values.
            @currency
            ## 
            # This column stores DateTime values.
            @date_time
            ## 
            # The default value for this column.
            @default_value
            ## 
            # The user-facing description of the column.
            @description
            ## 
            # The user-facing name of the column.
            @display_name
            ## 
            # If true, no two list items may have the same value for this column.
            @enforce_unique_values
            ## 
            # This column stores a geolocation.
            @geolocation
            ## 
            # Specifies whether the column is displayed in the user interface.
            @hidden
            ## 
            # This column stores hyperlink or picture values.
            @hyperlink_or_picture
            ## 
            # Specifies whether the column values can be used for sorting and searching.
            @indexed
            ## 
            # Indicates whether this column can be deleted.
            @is_deletable
            ## 
            # Indicates whether values in the column can be reordered. Read-only.
            @is_reorderable
            ## 
            # Specifies whether the column can be changed.
            @is_sealed
            ## 
            # This column's data is looked up from another source in the site.
            @lookup
            ## 
            # The API-facing name of the column as it appears in the [fields][] on a [listItem][]. For the user-facing name, see displayName.
            @name
            ## 
            # This column stores number values.
            @number
            ## 
            # This column stores Person or Group values.
            @person_or_group
            ## 
            # If 'true', changes to this column will be propagated to lists that implement the column.
            @propagate_changes
            ## 
            # Specifies whether the column values can be modified.
            @read_only
            ## 
            # Specifies whether the column value isn't optional.
            @required
            ## 
            # The source column for the content type column.
            @source_column
            ## 
            # ContentType from which this column is inherited from. Present only in contentTypes columns response. Read-only.
            @source_content_type
            ## 
            # This column stores taxonomy terms.
            @term
            ## 
            # This column stores text values.
            @text
            ## 
            # This column stores thumbnail values.
            @thumbnail
            ## 
            # For site columns, the type of column. Read-only.
            @type
            ## 
            # This column stores validation formula and message for the column.
            @validation
            ## 
            ## Gets the boolean property value. This column stores boolean values.
            ## @return a boolean_column
            ## 
            def boolean
                return @boolean
            end
            ## 
            ## Sets the boolean property value. This column stores boolean values.
            ## @param value Value to set for the boolean property.
            ## @return a void
            ## 
            def boolean=(value)
                @boolean = value
            end
            ## 
            ## Gets the calculated property value. This column's data is calculated based on other columns.
            ## @return a calculated_column
            ## 
            def calculated
                return @calculated
            end
            ## 
            ## Sets the calculated property value. This column's data is calculated based on other columns.
            ## @param value Value to set for the calculated property.
            ## @return a void
            ## 
            def calculated=(value)
                @calculated = value
            end
            ## 
            ## Gets the choice property value. This column stores data from a list of choices.
            ## @return a choice_column
            ## 
            def choice
                return @choice
            end
            ## 
            ## Sets the choice property value. This column stores data from a list of choices.
            ## @param value Value to set for the choice property.
            ## @return a void
            ## 
            def choice=(value)
                @choice = value
            end
            ## 
            ## Gets the columnGroup property value. For site columns, the name of the group this column belongs to. Helps organize related columns.
            ## @return a string
            ## 
            def column_group
                return @column_group
            end
            ## 
            ## Sets the columnGroup property value. For site columns, the name of the group this column belongs to. Helps organize related columns.
            ## @param value Value to set for the column_group property.
            ## @return a void
            ## 
            def column_group=(value)
                @column_group = value
            end
            ## 
            ## Instantiates a new columnDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentApprovalStatus property value. This column stores content approval status.
            ## @return a content_approval_status_column
            ## 
            def content_approval_status
                return @content_approval_status
            end
            ## 
            ## Sets the contentApprovalStatus property value. This column stores content approval status.
            ## @param value Value to set for the content_approval_status property.
            ## @return a void
            ## 
            def content_approval_status=(value)
                @content_approval_status = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a column_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ColumnDefinition.new
            end
            ## 
            ## Gets the currency property value. This column stores currency values.
            ## @return a currency_column
            ## 
            def currency
                return @currency
            end
            ## 
            ## Sets the currency property value. This column stores currency values.
            ## @param value Value to set for the currency property.
            ## @return a void
            ## 
            def currency=(value)
                @currency = value
            end
            ## 
            ## Gets the dateTime property value. This column stores DateTime values.
            ## @return a date_time_column
            ## 
            def date_time
                return @date_time
            end
            ## 
            ## Sets the dateTime property value. This column stores DateTime values.
            ## @param value Value to set for the date_time property.
            ## @return a void
            ## 
            def date_time=(value)
                @date_time = value
            end
            ## 
            ## Gets the defaultValue property value. The default value for this column.
            ## @return a default_column_value
            ## 
            def default_value
                return @default_value
            end
            ## 
            ## Sets the defaultValue property value. The default value for this column.
            ## @param value Value to set for the default_value property.
            ## @return a void
            ## 
            def default_value=(value)
                @default_value = value
            end
            ## 
            ## Gets the description property value. The user-facing description of the column.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The user-facing description of the column.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The user-facing name of the column.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The user-facing name of the column.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enforceUniqueValues property value. If true, no two list items may have the same value for this column.
            ## @return a boolean
            ## 
            def enforce_unique_values
                return @enforce_unique_values
            end
            ## 
            ## Sets the enforceUniqueValues property value. If true, no two list items may have the same value for this column.
            ## @param value Value to set for the enforce_unique_values property.
            ## @return a void
            ## 
            def enforce_unique_values=(value)
                @enforce_unique_values = value
            end
            ## 
            ## Gets the geolocation property value. This column stores a geolocation.
            ## @return a geolocation_column
            ## 
            def geolocation
                return @geolocation
            end
            ## 
            ## Sets the geolocation property value. This column stores a geolocation.
            ## @param value Value to set for the geolocation property.
            ## @return a void
            ## 
            def geolocation=(value)
                @geolocation = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "boolean" => lambda {|n| @boolean = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::BooleanColumn.create_from_discriminator_value(pn) }) },
                    "calculated" => lambda {|n| @calculated = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CalculatedColumn.create_from_discriminator_value(pn) }) },
                    "choice" => lambda {|n| @choice = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChoiceColumn.create_from_discriminator_value(pn) }) },
                    "columnGroup" => lambda {|n| @column_group = n.get_string_value() },
                    "contentApprovalStatus" => lambda {|n| @content_approval_status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ContentApprovalStatusColumn.create_from_discriminator_value(pn) }) },
                    "currency" => lambda {|n| @currency = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CurrencyColumn.create_from_discriminator_value(pn) }) },
                    "dateTime" => lambda {|n| @date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeColumn.create_from_discriminator_value(pn) }) },
                    "defaultValue" => lambda {|n| @default_value = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DefaultColumnValue.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enforceUniqueValues" => lambda {|n| @enforce_unique_values = n.get_boolean_value() },
                    "geolocation" => lambda {|n| @geolocation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::GeolocationColumn.create_from_discriminator_value(pn) }) },
                    "hidden" => lambda {|n| @hidden = n.get_boolean_value() },
                    "hyperlinkOrPicture" => lambda {|n| @hyperlink_or_picture = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::HyperlinkOrPictureColumn.create_from_discriminator_value(pn) }) },
                    "indexed" => lambda {|n| @indexed = n.get_boolean_value() },
                    "isDeletable" => lambda {|n| @is_deletable = n.get_boolean_value() },
                    "isReorderable" => lambda {|n| @is_reorderable = n.get_boolean_value() },
                    "isSealed" => lambda {|n| @is_sealed = n.get_boolean_value() },
                    "lookup" => lambda {|n| @lookup = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LookupColumn.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "number" => lambda {|n| @number = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::NumberColumn.create_from_discriminator_value(pn) }) },
                    "personOrGroup" => lambda {|n| @person_or_group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PersonOrGroupColumn.create_from_discriminator_value(pn) }) },
                    "propagateChanges" => lambda {|n| @propagate_changes = n.get_boolean_value() },
                    "readOnly" => lambda {|n| @read_only = n.get_boolean_value() },
                    "required" => lambda {|n| @required = n.get_boolean_value() },
                    "sourceColumn" => lambda {|n| @source_column = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "sourceContentType" => lambda {|n| @source_content_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ContentTypeInfo.create_from_discriminator_value(pn) }) },
                    "term" => lambda {|n| @term = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermColumn.create_from_discriminator_value(pn) }) },
                    "text" => lambda {|n| @text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TextColumn.create_from_discriminator_value(pn) }) },
                    "thumbnail" => lambda {|n| @thumbnail = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ThumbnailColumn.create_from_discriminator_value(pn) }) },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::ColumnTypes) },
                    "validation" => lambda {|n| @validation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ColumnValidation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hidden property value. Specifies whether the column is displayed in the user interface.
            ## @return a boolean
            ## 
            def hidden
                return @hidden
            end
            ## 
            ## Sets the hidden property value. Specifies whether the column is displayed in the user interface.
            ## @param value Value to set for the hidden property.
            ## @return a void
            ## 
            def hidden=(value)
                @hidden = value
            end
            ## 
            ## Gets the hyperlinkOrPicture property value. This column stores hyperlink or picture values.
            ## @return a hyperlink_or_picture_column
            ## 
            def hyperlink_or_picture
                return @hyperlink_or_picture
            end
            ## 
            ## Sets the hyperlinkOrPicture property value. This column stores hyperlink or picture values.
            ## @param value Value to set for the hyperlink_or_picture property.
            ## @return a void
            ## 
            def hyperlink_or_picture=(value)
                @hyperlink_or_picture = value
            end
            ## 
            ## Gets the indexed property value. Specifies whether the column values can be used for sorting and searching.
            ## @return a boolean
            ## 
            def indexed
                return @indexed
            end
            ## 
            ## Sets the indexed property value. Specifies whether the column values can be used for sorting and searching.
            ## @param value Value to set for the indexed property.
            ## @return a void
            ## 
            def indexed=(value)
                @indexed = value
            end
            ## 
            ## Gets the isDeletable property value. Indicates whether this column can be deleted.
            ## @return a boolean
            ## 
            def is_deletable
                return @is_deletable
            end
            ## 
            ## Sets the isDeletable property value. Indicates whether this column can be deleted.
            ## @param value Value to set for the is_deletable property.
            ## @return a void
            ## 
            def is_deletable=(value)
                @is_deletable = value
            end
            ## 
            ## Gets the isReorderable property value. Indicates whether values in the column can be reordered. Read-only.
            ## @return a boolean
            ## 
            def is_reorderable
                return @is_reorderable
            end
            ## 
            ## Sets the isReorderable property value. Indicates whether values in the column can be reordered. Read-only.
            ## @param value Value to set for the is_reorderable property.
            ## @return a void
            ## 
            def is_reorderable=(value)
                @is_reorderable = value
            end
            ## 
            ## Gets the isSealed property value. Specifies whether the column can be changed.
            ## @return a boolean
            ## 
            def is_sealed
                return @is_sealed
            end
            ## 
            ## Sets the isSealed property value. Specifies whether the column can be changed.
            ## @param value Value to set for the is_sealed property.
            ## @return a void
            ## 
            def is_sealed=(value)
                @is_sealed = value
            end
            ## 
            ## Gets the lookup property value. This column's data is looked up from another source in the site.
            ## @return a lookup_column
            ## 
            def lookup
                return @lookup
            end
            ## 
            ## Sets the lookup property value. This column's data is looked up from another source in the site.
            ## @param value Value to set for the lookup property.
            ## @return a void
            ## 
            def lookup=(value)
                @lookup = value
            end
            ## 
            ## Gets the name property value. The API-facing name of the column as it appears in the [fields][] on a [listItem][]. For the user-facing name, see displayName.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The API-facing name of the column as it appears in the [fields][] on a [listItem][]. For the user-facing name, see displayName.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the number property value. This column stores number values.
            ## @return a number_column
            ## 
            def number
                return @number
            end
            ## 
            ## Sets the number property value. This column stores number values.
            ## @param value Value to set for the number property.
            ## @return a void
            ## 
            def number=(value)
                @number = value
            end
            ## 
            ## Gets the personOrGroup property value. This column stores Person or Group values.
            ## @return a person_or_group_column
            ## 
            def person_or_group
                return @person_or_group
            end
            ## 
            ## Sets the personOrGroup property value. This column stores Person or Group values.
            ## @param value Value to set for the person_or_group property.
            ## @return a void
            ## 
            def person_or_group=(value)
                @person_or_group = value
            end
            ## 
            ## Gets the propagateChanges property value. If 'true', changes to this column will be propagated to lists that implement the column.
            ## @return a boolean
            ## 
            def propagate_changes
                return @propagate_changes
            end
            ## 
            ## Sets the propagateChanges property value. If 'true', changes to this column will be propagated to lists that implement the column.
            ## @param value Value to set for the propagate_changes property.
            ## @return a void
            ## 
            def propagate_changes=(value)
                @propagate_changes = value
            end
            ## 
            ## Gets the readOnly property value. Specifies whether the column values can be modified.
            ## @return a boolean
            ## 
            def read_only
                return @read_only
            end
            ## 
            ## Sets the readOnly property value. Specifies whether the column values can be modified.
            ## @param value Value to set for the read_only property.
            ## @return a void
            ## 
            def read_only=(value)
                @read_only = value
            end
            ## 
            ## Gets the required property value. Specifies whether the column value isn't optional.
            ## @return a boolean
            ## 
            def required
                return @required
            end
            ## 
            ## Sets the required property value. Specifies whether the column value isn't optional.
            ## @param value Value to set for the required property.
            ## @return a void
            ## 
            def required=(value)
                @required = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("boolean", @boolean)
                writer.write_object_value("calculated", @calculated)
                writer.write_object_value("choice", @choice)
                writer.write_string_value("columnGroup", @column_group)
                writer.write_object_value("contentApprovalStatus", @content_approval_status)
                writer.write_object_value("currency", @currency)
                writer.write_object_value("dateTime", @date_time)
                writer.write_object_value("defaultValue", @default_value)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("enforceUniqueValues", @enforce_unique_values)
                writer.write_object_value("geolocation", @geolocation)
                writer.write_boolean_value("hidden", @hidden)
                writer.write_object_value("hyperlinkOrPicture", @hyperlink_or_picture)
                writer.write_boolean_value("indexed", @indexed)
                writer.write_boolean_value("isDeletable", @is_deletable)
                writer.write_boolean_value("isReorderable", @is_reorderable)
                writer.write_boolean_value("isSealed", @is_sealed)
                writer.write_object_value("lookup", @lookup)
                writer.write_string_value("name", @name)
                writer.write_object_value("number", @number)
                writer.write_object_value("personOrGroup", @person_or_group)
                writer.write_boolean_value("propagateChanges", @propagate_changes)
                writer.write_boolean_value("readOnly", @read_only)
                writer.write_boolean_value("required", @required)
                writer.write_object_value("sourceColumn", @source_column)
                writer.write_object_value("sourceContentType", @source_content_type)
                writer.write_object_value("term", @term)
                writer.write_object_value("text", @text)
                writer.write_object_value("thumbnail", @thumbnail)
                writer.write_enum_value("type", @type)
                writer.write_object_value("validation", @validation)
            end
            ## 
            ## Gets the sourceColumn property value. The source column for the content type column.
            ## @return a column_definition
            ## 
            def source_column
                return @source_column
            end
            ## 
            ## Sets the sourceColumn property value. The source column for the content type column.
            ## @param value Value to set for the source_column property.
            ## @return a void
            ## 
            def source_column=(value)
                @source_column = value
            end
            ## 
            ## Gets the sourceContentType property value. ContentType from which this column is inherited from. Present only in contentTypes columns response. Read-only.
            ## @return a content_type_info
            ## 
            def source_content_type
                return @source_content_type
            end
            ## 
            ## Sets the sourceContentType property value. ContentType from which this column is inherited from. Present only in contentTypes columns response. Read-only.
            ## @param value Value to set for the source_content_type property.
            ## @return a void
            ## 
            def source_content_type=(value)
                @source_content_type = value
            end
            ## 
            ## Gets the term property value. This column stores taxonomy terms.
            ## @return a term_column
            ## 
            def term
                return @term
            end
            ## 
            ## Sets the term property value. This column stores taxonomy terms.
            ## @param value Value to set for the term property.
            ## @return a void
            ## 
            def term=(value)
                @term = value
            end
            ## 
            ## Gets the text property value. This column stores text values.
            ## @return a text_column
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. This column stores text values.
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
            ## 
            ## Gets the thumbnail property value. This column stores thumbnail values.
            ## @return a thumbnail_column
            ## 
            def thumbnail
                return @thumbnail
            end
            ## 
            ## Sets the thumbnail property value. This column stores thumbnail values.
            ## @param value Value to set for the thumbnail property.
            ## @return a void
            ## 
            def thumbnail=(value)
                @thumbnail = value
            end
            ## 
            ## Gets the type property value. For site columns, the type of column. Read-only.
            ## @return a column_types
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. For site columns, the type of column. Read-only.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the validation property value. This column stores validation formula and message for the column.
            ## @return a column_validation
            ## 
            def validation
                return @validation
            end
            ## 
            ## Sets the validation property value. This column stores validation formula and message for the column.
            ## @param value Value to set for the validation property.
            ## @return a void
            ## 
            def validation=(value)
                @validation = value
            end
        end
    end
end
