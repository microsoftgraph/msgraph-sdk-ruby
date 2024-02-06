require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttributeDefinition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # true if the attribute should be used as the anchor for the object. Anchor attributes must have a unique value identifying an object, and must be immutable. Default is false. One, and only one, of the object's attributes must be designated as the anchor to support synchronization.
            @anchor
            ## 
            # The apiExpressions property
            @api_expressions
            ## 
            # true if value of this attribute should be treated as case-sensitive. This setting affects how the synchronization engine detects changes for the attribute.
            @case_exact
            ## 
            # The defaultValue property
            @default_value
            ## 
            # 'true' to allow null values for attributes.
            @flow_null_values
            ## 
            # Metadata for the given object.
            @metadata
            ## 
            # true if an attribute can have multiple values. Default is false.
            @multivalued
            ## 
            # The mutability property
            @mutability
            ## 
            # Name of the attribute. Must be unique within the object definition. Not nullable.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # For attributes with reference type, lists referenced objects (for example, the manager attribute would list User as the referenced object).
            @referenced_objects
            ## 
            # true if attribute is required. Object can not be created if any of the required attributes are missing. If during synchronization, the required attribute has no value, the default value will be used. If default the value was not set, synchronization will record an error.
            @required
            ## 
            # The type property
            @type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the anchor property value. true if the attribute should be used as the anchor for the object. Anchor attributes must have a unique value identifying an object, and must be immutable. Default is false. One, and only one, of the object's attributes must be designated as the anchor to support synchronization.
            ## @return a boolean
            ## 
            def anchor
                return @anchor
            end
            ## 
            ## Sets the anchor property value. true if the attribute should be used as the anchor for the object. Anchor attributes must have a unique value identifying an object, and must be immutable. Default is false. One, and only one, of the object's attributes must be designated as the anchor to support synchronization.
            ## @param value Value to set for the anchor property.
            ## @return a void
            ## 
            def anchor=(value)
                @anchor = value
            end
            ## 
            ## Gets the apiExpressions property value. The apiExpressions property
            ## @return a string_key_string_value_pair
            ## 
            def api_expressions
                return @api_expressions
            end
            ## 
            ## Sets the apiExpressions property value. The apiExpressions property
            ## @param value Value to set for the apiExpressions property.
            ## @return a void
            ## 
            def api_expressions=(value)
                @api_expressions = value
            end
            ## 
            ## Gets the caseExact property value. true if value of this attribute should be treated as case-sensitive. This setting affects how the synchronization engine detects changes for the attribute.
            ## @return a boolean
            ## 
            def case_exact
                return @case_exact
            end
            ## 
            ## Sets the caseExact property value. true if value of this attribute should be treated as case-sensitive. This setting affects how the synchronization engine detects changes for the attribute.
            ## @param value Value to set for the caseExact property.
            ## @return a void
            ## 
            def case_exact=(value)
                @case_exact = value
            end
            ## 
            ## Instantiates a new attributeDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attribute_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttributeDefinition.new
            end
            ## 
            ## Gets the defaultValue property value. The defaultValue property
            ## @return a string
            ## 
            def default_value
                return @default_value
            end
            ## 
            ## Sets the defaultValue property value. The defaultValue property
            ## @param value Value to set for the defaultValue property.
            ## @return a void
            ## 
            def default_value=(value)
                @default_value = value
            end
            ## 
            ## Gets the flowNullValues property value. 'true' to allow null values for attributes.
            ## @return a boolean
            ## 
            def flow_null_values
                return @flow_null_values
            end
            ## 
            ## Sets the flowNullValues property value. 'true' to allow null values for attributes.
            ## @param value Value to set for the flowNullValues property.
            ## @return a void
            ## 
            def flow_null_values=(value)
                @flow_null_values = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "anchor" => lambda {|n| @anchor = n.get_boolean_value() },
                    "apiExpressions" => lambda {|n| @api_expressions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::StringKeyStringValuePair.create_from_discriminator_value(pn) }) },
                    "caseExact" => lambda {|n| @case_exact = n.get_boolean_value() },
                    "defaultValue" => lambda {|n| @default_value = n.get_string_value() },
                    "flowNullValues" => lambda {|n| @flow_null_values = n.get_boolean_value() },
                    "metadata" => lambda {|n| @metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttributeDefinitionMetadataEntry.create_from_discriminator_value(pn) }) },
                    "multivalued" => lambda {|n| @multivalued = n.get_boolean_value() },
                    "mutability" => lambda {|n| @mutability = n.get_enum_value(MicrosoftGraph::Models::Mutability) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "referencedObjects" => lambda {|n| @referenced_objects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ReferencedObject.create_from_discriminator_value(pn) }) },
                    "required" => lambda {|n| @required = n.get_boolean_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::AttributeType) },
                }
            end
            ## 
            ## Gets the metadata property value. Metadata for the given object.
            ## @return a attribute_definition_metadata_entry
            ## 
            def metadata
                return @metadata
            end
            ## 
            ## Sets the metadata property value. Metadata for the given object.
            ## @param value Value to set for the metadata property.
            ## @return a void
            ## 
            def metadata=(value)
                @metadata = value
            end
            ## 
            ## Gets the multivalued property value. true if an attribute can have multiple values. Default is false.
            ## @return a boolean
            ## 
            def multivalued
                return @multivalued
            end
            ## 
            ## Sets the multivalued property value. true if an attribute can have multiple values. Default is false.
            ## @param value Value to set for the multivalued property.
            ## @return a void
            ## 
            def multivalued=(value)
                @multivalued = value
            end
            ## 
            ## Gets the mutability property value. The mutability property
            ## @return a mutability
            ## 
            def mutability
                return @mutability
            end
            ## 
            ## Sets the mutability property value. The mutability property
            ## @param value Value to set for the mutability property.
            ## @return a void
            ## 
            def mutability=(value)
                @mutability = value
            end
            ## 
            ## Gets the name property value. Name of the attribute. Must be unique within the object definition. Not nullable.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the attribute. Must be unique within the object definition. Not nullable.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the referencedObjects property value. For attributes with reference type, lists referenced objects (for example, the manager attribute would list User as the referenced object).
            ## @return a referenced_object
            ## 
            def referenced_objects
                return @referenced_objects
            end
            ## 
            ## Sets the referencedObjects property value. For attributes with reference type, lists referenced objects (for example, the manager attribute would list User as the referenced object).
            ## @param value Value to set for the referencedObjects property.
            ## @return a void
            ## 
            def referenced_objects=(value)
                @referenced_objects = value
            end
            ## 
            ## Gets the required property value. true if attribute is required. Object can not be created if any of the required attributes are missing. If during synchronization, the required attribute has no value, the default value will be used. If default the value was not set, synchronization will record an error.
            ## @return a boolean
            ## 
            def required
                return @required
            end
            ## 
            ## Sets the required property value. true if attribute is required. Object can not be created if any of the required attributes are missing. If during synchronization, the required attribute has no value, the default value will be used. If default the value was not set, synchronization will record an error.
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
                writer.write_boolean_value("anchor", @anchor) unless @anchor.nil?
                writer.write_collection_of_object_values("apiExpressions", @api_expressions) unless @api_expressions.nil?
                writer.write_boolean_value("caseExact", @case_exact) unless @case_exact.nil?
                writer.write_string_value("defaultValue", @default_value) unless @default_value.nil?
                writer.write_boolean_value("flowNullValues", @flow_null_values) unless @flow_null_values.nil?
                writer.write_collection_of_object_values("metadata", @metadata) unless @metadata.nil?
                writer.write_boolean_value("multivalued", @multivalued) unless @multivalued.nil?
                writer.write_enum_value("mutability", @mutability) unless @mutability.nil?
                writer.write_string_value("name", @name) unless @name.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_collection_of_object_values("referencedObjects", @referenced_objects) unless @referenced_objects.nil?
                writer.write_boolean_value("required", @required) unless @required.nil?
                writer.write_enum_value("type", @type) unless @type.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a attribute_type
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
        end
    end
end
