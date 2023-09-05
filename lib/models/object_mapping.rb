require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ObjectMapping
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Attribute mappings define which attributes to map from the source object into the target object and how they should flow. A number of functions are available to support the transformation of the original source values.
            @attribute_mappings
            ## 
            # When true, this object mapping will be processed during synchronization. When false, this object mapping will be skipped.
            @enabled
            ## 
            # The flowTypes property
            @flow_types
            ## 
            # Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.
            @metadata
            ## 
            # Human-friendly name of the object mapping.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Defines a filter to be used when deciding whether a given object should be provisioned. For example, you might want to only provision users that are located in the US.
            @scope
            ## 
            # Name of the object in the source directory. Must match the object name from the source directory definition.
            @source_object_name
            ## 
            # Name of the object in target directory. Must match the object name from the target directory definition.
            @target_object_name
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
            ## Gets the attributeMappings property value. Attribute mappings define which attributes to map from the source object into the target object and how they should flow. A number of functions are available to support the transformation of the original source values.
            ## @return a attribute_mapping
            ## 
            def attribute_mappings
                return @attribute_mappings
            end
            ## 
            ## Sets the attributeMappings property value. Attribute mappings define which attributes to map from the source object into the target object and how they should flow. A number of functions are available to support the transformation of the original source values.
            ## @param value Value to set for the attributeMappings property.
            ## @return a void
            ## 
            def attribute_mappings=(value)
                @attribute_mappings = value
            end
            ## 
            ## Instantiates a new objectMapping and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a object_mapping
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ObjectMapping.new
            end
            ## 
            ## Gets the enabled property value. When true, this object mapping will be processed during synchronization. When false, this object mapping will be skipped.
            ## @return a boolean
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. When true, this object mapping will be processed during synchronization. When false, this object mapping will be skipped.
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## Gets the flowTypes property value. The flowTypes property
            ## @return a object_flow_types
            ## 
            def flow_types
                return @flow_types
            end
            ## 
            ## Sets the flowTypes property value. The flowTypes property
            ## @param value Value to set for the flowTypes property.
            ## @return a void
            ## 
            def flow_types=(value)
                @flow_types = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attributeMappings" => lambda {|n| @attribute_mappings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttributeMapping.create_from_discriminator_value(pn) }) },
                    "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                    "flowTypes" => lambda {|n| @flow_types = n.get_enum_values(MicrosoftGraph::Models::ObjectFlowTypes) },
                    "metadata" => lambda {|n| @metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ObjectMappingMetadataEntry.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scope" => lambda {|n| @scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Filter.create_from_discriminator_value(pn) }) },
                    "sourceObjectName" => lambda {|n| @source_object_name = n.get_string_value() },
                    "targetObjectName" => lambda {|n| @target_object_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the metadata property value. Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.
            ## @return a object_mapping_metadata_entry
            ## 
            def metadata
                return @metadata
            end
            ## 
            ## Sets the metadata property value. Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.
            ## @param value Value to set for the metadata property.
            ## @return a void
            ## 
            def metadata=(value)
                @metadata = value
            end
            ## 
            ## Gets the name property value. Human-friendly name of the object mapping.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Human-friendly name of the object mapping.
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
            ## Gets the scope property value. Defines a filter to be used when deciding whether a given object should be provisioned. For example, you might want to only provision users that are located in the US.
            ## @return a filter
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. Defines a filter to be used when deciding whether a given object should be provisioned. For example, you might want to only provision users that are located in the US.
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
                writer.write_collection_of_object_values("attributeMappings", @attribute_mappings)
                writer.write_boolean_value("enabled", @enabled)
                writer.write_enum_value("flowTypes", @flow_types)
                writer.write_collection_of_object_values("metadata", @metadata)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("scope", @scope)
                writer.write_string_value("sourceObjectName", @source_object_name)
                writer.write_string_value("targetObjectName", @target_object_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceObjectName property value. Name of the object in the source directory. Must match the object name from the source directory definition.
            ## @return a string
            ## 
            def source_object_name
                return @source_object_name
            end
            ## 
            ## Sets the sourceObjectName property value. Name of the object in the source directory. Must match the object name from the source directory definition.
            ## @param value Value to set for the sourceObjectName property.
            ## @return a void
            ## 
            def source_object_name=(value)
                @source_object_name = value
            end
            ## 
            ## Gets the targetObjectName property value. Name of the object in target directory. Must match the object name from the target directory definition.
            ## @return a string
            ## 
            def target_object_name
                return @target_object_name
            end
            ## 
            ## Sets the targetObjectName property value. Name of the object in target directory. Must match the object name from the target directory definition.
            ## @param value Value to set for the targetObjectName property.
            ## @return a void
            ## 
            def target_object_name=(value)
                @target_object_name = value
            end
        end
    end
end
