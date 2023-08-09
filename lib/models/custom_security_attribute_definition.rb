require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CustomSecurityAttributeDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Values that are predefined for this custom security attribute. This navigation property is not returned by default and must be specified in an $expand query. For example, /directory/customSecurityAttributeDefinitions?$expand=allowedValues.
            @allowed_values
            ## 
            # Name of the attribute set. Case insensitive.
            @attribute_set
            ## 
            # Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Can be changed later.
            @description
            ## 
            # Indicates whether multiple values can be assigned to the custom security attribute. Cannot be changed later. If type is set to Boolean, isCollection cannot be set to true.
            @is_collection
            ## 
            # Indicates whether custom security attribute values are indexed for searching on objects that are assigned attribute values. Cannot be changed later.
            @is_searchable
            ## 
            # Name of the custom security attribute. Must be unique within an attribute set. Can be up to 32 characters long and include Unicode characters. Cannot contain spaces or special characters. Cannot be changed later. Case insensitive.
            @name
            ## 
            # Specifies whether the custom security attribute is active or deactivated. Acceptable values are: Available and Deprecated. Can be changed later.
            @status
            ## 
            # Data type for the custom security attribute values. Supported types are: Boolean, Integer, and String. Cannot be changed later.
            @type
            ## 
            # Indicates whether only predefined values can be assigned to the custom security attribute. If set to false, free-form values are allowed. Can later be changed from true to false, but cannot be changed from false to true. If type is set to Boolean, usePreDefinedValuesOnly cannot be set to true.
            @use_pre_defined_values_only
            ## 
            ## Gets the allowedValues property value. Values that are predefined for this custom security attribute. This navigation property is not returned by default and must be specified in an $expand query. For example, /directory/customSecurityAttributeDefinitions?$expand=allowedValues.
            ## @return a allowed_value
            ## 
            def allowed_values
                return @allowed_values
            end
            ## 
            ## Sets the allowedValues property value. Values that are predefined for this custom security attribute. This navigation property is not returned by default and must be specified in an $expand query. For example, /directory/customSecurityAttributeDefinitions?$expand=allowedValues.
            ## @param value Value to set for the allowedValues property.
            ## @return a void
            ## 
            def allowed_values=(value)
                @allowed_values = value
            end
            ## 
            ## Gets the attributeSet property value. Name of the attribute set. Case insensitive.
            ## @return a string
            ## 
            def attribute_set
                return @attribute_set
            end
            ## 
            ## Sets the attributeSet property value. Name of the attribute set. Case insensitive.
            ## @param value Value to set for the attributeSet property.
            ## @return a void
            ## 
            def attribute_set=(value)
                @attribute_set = value
            end
            ## 
            ## Instantiates a new customSecurityAttributeDefinition and sets the default values.
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
            ## Gets the description property value. Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Can be changed later.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Can be changed later.
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
            ## Gets the isCollection property value. Indicates whether multiple values can be assigned to the custom security attribute. Cannot be changed later. If type is set to Boolean, isCollection cannot be set to true.
            ## @return a boolean
            ## 
            def is_collection
                return @is_collection
            end
            ## 
            ## Sets the isCollection property value. Indicates whether multiple values can be assigned to the custom security attribute. Cannot be changed later. If type is set to Boolean, isCollection cannot be set to true.
            ## @param value Value to set for the isCollection property.
            ## @return a void
            ## 
            def is_collection=(value)
                @is_collection = value
            end
            ## 
            ## Gets the isSearchable property value. Indicates whether custom security attribute values are indexed for searching on objects that are assigned attribute values. Cannot be changed later.
            ## @return a boolean
            ## 
            def is_searchable
                return @is_searchable
            end
            ## 
            ## Sets the isSearchable property value. Indicates whether custom security attribute values are indexed for searching on objects that are assigned attribute values. Cannot be changed later.
            ## @param value Value to set for the isSearchable property.
            ## @return a void
            ## 
            def is_searchable=(value)
                @is_searchable = value
            end
            ## 
            ## Gets the name property value. Name of the custom security attribute. Must be unique within an attribute set. Can be up to 32 characters long and include Unicode characters. Cannot contain spaces or special characters. Cannot be changed later. Case insensitive.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the custom security attribute. Must be unique within an attribute set. Can be up to 32 characters long and include Unicode characters. Cannot contain spaces or special characters. Cannot be changed later. Case insensitive.
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
            ## Gets the status property value. Specifies whether the custom security attribute is active or deactivated. Acceptable values are: Available and Deprecated. Can be changed later.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Specifies whether the custom security attribute is active or deactivated. Acceptable values are: Available and Deprecated. Can be changed later.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the type property value. Data type for the custom security attribute values. Supported types are: Boolean, Integer, and String. Cannot be changed later.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Data type for the custom security attribute values. Supported types are: Boolean, Integer, and String. Cannot be changed later.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the usePreDefinedValuesOnly property value. Indicates whether only predefined values can be assigned to the custom security attribute. If set to false, free-form values are allowed. Can later be changed from true to false, but cannot be changed from false to true. If type is set to Boolean, usePreDefinedValuesOnly cannot be set to true.
            ## @return a boolean
            ## 
            def use_pre_defined_values_only
                return @use_pre_defined_values_only
            end
            ## 
            ## Sets the usePreDefinedValuesOnly property value. Indicates whether only predefined values can be assigned to the custom security attribute. If set to false, free-form values are allowed. Can later be changed from true to false, but cannot be changed from false to true. If type is set to Boolean, usePreDefinedValuesOnly cannot be set to true.
            ## @param value Value to set for the usePreDefinedValuesOnly property.
            ## @return a void
            ## 
            def use_pre_defined_values_only=(value)
                @use_pre_defined_values_only = value
            end
        end
    end
end
