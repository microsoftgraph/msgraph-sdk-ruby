require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CustomSecurityAttributeDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The allowedValues property
            @allowed_values
            ## 
            # The attributeSet property
            @attribute_set
            ## 
            # The description property
            @description
            ## 
            # The isCollection property
            @is_collection
            ## 
            # The isSearchable property
            @is_searchable
            ## 
            # The name property
            @name
            ## 
            # The status property
            @status
            ## 
            # The type property
            @type
            ## 
            # The usePreDefinedValuesOnly property
            @use_pre_defined_values_only
            ## 
            ## Gets the allowedValues property value. The allowedValues property
            ## @return a allowed_value
            ## 
            def allowed_values
                return @allowed_values
            end
            ## 
            ## Sets the allowedValues property value. The allowedValues property
            ## @param value Value to set for the allowed_values property.
            ## @return a void
            ## 
            def allowed_values=(value)
                @allowed_values = value
            end
            ## 
            ## Gets the attributeSet property value. The attributeSet property
            ## @return a string
            ## 
            def attribute_set
                return @attribute_set
            end
            ## 
            ## Sets the attributeSet property value. The attributeSet property
            ## @param value Value to set for the attribute_set property.
            ## @return a void
            ## 
            def attribute_set=(value)
                @attribute_set = value
            end
            ## 
            ## Instantiates a new CustomSecurityAttributeDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_security_attribute_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomSecurityAttributeDefinition.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
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
                    "allowedValues" => lambda {|n| @allowed_values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AllowedValue.create_from_discriminator_value(pn) }) },
                    "attributeSet" => lambda {|n| @attribute_set = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "isCollection" => lambda {|n| @is_collection = n.get_boolean_value() },
                    "isSearchable" => lambda {|n| @is_searchable = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "usePreDefinedValuesOnly" => lambda {|n| @use_pre_defined_values_only = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isCollection property value. The isCollection property
            ## @return a boolean
            ## 
            def is_collection
                return @is_collection
            end
            ## 
            ## Sets the isCollection property value. The isCollection property
            ## @param value Value to set for the is_collection property.
            ## @return a void
            ## 
            def is_collection=(value)
                @is_collection = value
            end
            ## 
            ## Gets the isSearchable property value. The isSearchable property
            ## @return a boolean
            ## 
            def is_searchable
                return @is_searchable
            end
            ## 
            ## Sets the isSearchable property value. The isSearchable property
            ## @param value Value to set for the is_searchable property.
            ## @return a void
            ## 
            def is_searchable=(value)
                @is_searchable = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("allowedValues", @allowed_values)
                writer.write_string_value("attributeSet", @attribute_set)
                writer.write_string_value("description", @description)
                writer.write_boolean_value("isCollection", @is_collection)
                writer.write_boolean_value("isSearchable", @is_searchable)
                writer.write_string_value("name", @name)
                writer.write_string_value("status", @status)
                writer.write_string_value("type", @type)
                writer.write_boolean_value("usePreDefinedValuesOnly", @use_pre_defined_values_only)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the usePreDefinedValuesOnly property value. The usePreDefinedValuesOnly property
            ## @return a boolean
            ## 
            def use_pre_defined_values_only
                return @use_pre_defined_values_only
            end
            ## 
            ## Sets the usePreDefinedValuesOnly property value. The usePreDefinedValuesOnly property
            ## @param value Value to set for the use_pre_defined_values_only property.
            ## @return a void
            ## 
            def use_pre_defined_values_only=(value)
                @use_pre_defined_values_only = value
            end
        end
    end
end
