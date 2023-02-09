require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookNamedItem < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the comment associated with this name.
            @comment
            ## 
            # The name of the object. Read-only.
            @name
            ## 
            # Indicates whether the name is scoped to the workbook or to a specific worksheet. Read-only.
            @scope
            ## 
            # Indicates what type of reference is associated with the name. The possible values are: String, Integer, Double, Boolean, Range. Read-only.
            @type
            ## 
            # Represents the formula that the name is defined to refer to. E.g. =Sheet14!$B$2:$H$12, =4.75, etc. Read-only.
            @value
            ## 
            # Specifies whether the object is visible or not.
            @visible
            ## 
            # Returns the worksheet on which the named item is scoped to. Available only if the item is scoped to the worksheet. Read-only.
            @worksheet
            ## 
            ## Gets the comment property value. Represents the comment associated with this name.
            ## @return a string
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. Represents the comment associated with this name.
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Instantiates a new workbookNamedItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_named_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookNamedItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "comment" => lambda {|n| @comment = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "scope" => lambda {|n| @scope = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "visible" => lambda {|n| @visible = n.get_boolean_value() },
                    "worksheet" => lambda {|n| @worksheet = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the name property value. The name of the object. Read-only.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the object. Read-only.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the scope property value. Indicates whether the name is scoped to the workbook or to a specific worksheet. Read-only.
            ## @return a string
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. Indicates whether the name is scoped to the workbook or to a specific worksheet. Read-only.
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
                writer.write_string_value("comment", @comment)
                writer.write_string_value("name", @name)
                writer.write_string_value("scope", @scope)
                writer.write_string_value("type", @type)
                writer.write_object_value("value", @value)
                writer.write_boolean_value("visible", @visible)
                writer.write_object_value("worksheet", @worksheet)
            end
            ## 
            ## Gets the type property value. Indicates what type of reference is associated with the name. The possible values are: String, Integer, Double, Boolean, Range. Read-only.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Indicates what type of reference is associated with the name. The possible values are: String, Integer, Double, Boolean, Range. Read-only.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the value property value. Represents the formula that the name is defined to refer to. E.g. =Sheet14!$B$2:$H$12, =4.75, etc. Read-only.
            ## @return a json
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Represents the formula that the name is defined to refer to. E.g. =Sheet14!$B$2:$H$12, =4.75, etc. Read-only.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
            ## 
            ## Gets the visible property value. Specifies whether the object is visible or not.
            ## @return a boolean
            ## 
            def visible
                return @visible
            end
            ## 
            ## Sets the visible property value. Specifies whether the object is visible or not.
            ## @param value Value to set for the visible property.
            ## @return a void
            ## 
            def visible=(value)
                @visible = value
            end
            ## 
            ## Gets the worksheet property value. Returns the worksheet on which the named item is scoped to. Available only if the item is scoped to the worksheet. Read-only.
            ## @return a workbook_worksheet
            ## 
            def worksheet
                return @worksheet
            end
            ## 
            ## Sets the worksheet property value. Returns the worksheet on which the named item is scoped to. Available only if the item is scoped to the worksheet. Read-only.
            ## @param value Value to set for the worksheet property.
            ## @return a void
            ## 
            def worksheet=(value)
                @worksheet = value
            end
        end
    end
end
