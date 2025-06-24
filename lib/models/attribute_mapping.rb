require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttributeMapping
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Default value to be used in case the source property was evaluated to null. Optional.
            @default_value
            ## 
            # For internal use only.
            @export_missing_references
            ## 
            # The flowBehavior property
            @flow_behavior
            ## 
            # The flowType property
            @flow_type
            ## 
            # If higher than 0, this attribute will be used to perform an initial match of the objects between source and target directories. The synchronization engine will try to find the matching object using attribute with lowest value of matching priority first. If not found, the attribute with the next matching priority will be used, and so on a until match is found or no more matching attributes are left. Only attributes that are expected to have unique values, such as email, should be used as matching attributes.
            @matching_priority
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Defines how a value should be extracted (or transformed) from the source object.
            @source
            ## 
            # Name of the attribute on the target object.
            @target_attribute_name
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new AttributeMapping and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attribute_mapping
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttributeMapping.new
            end
            ## 
            ## Gets the defaultValue property value. Default value to be used in case the source property was evaluated to null. Optional.
            ## @return a string
            ## 
            def default_value
                return @default_value
            end
            ## 
            ## Sets the defaultValue property value. Default value to be used in case the source property was evaluated to null. Optional.
            ## @param value Value to set for the defaultValue property.
            ## @return a void
            ## 
            def default_value=(value)
                @default_value = value
            end
            ## 
            ## Gets the exportMissingReferences property value. For internal use only.
            ## @return a boolean
            ## 
            def export_missing_references
                return @export_missing_references
            end
            ## 
            ## Sets the exportMissingReferences property value. For internal use only.
            ## @param value Value to set for the exportMissingReferences property.
            ## @return a void
            ## 
            def export_missing_references=(value)
                @export_missing_references = value
            end
            ## 
            ## Gets the flowBehavior property value. The flowBehavior property
            ## @return a attribute_flow_behavior
            ## 
            def flow_behavior
                return @flow_behavior
            end
            ## 
            ## Sets the flowBehavior property value. The flowBehavior property
            ## @param value Value to set for the flowBehavior property.
            ## @return a void
            ## 
            def flow_behavior=(value)
                @flow_behavior = value
            end
            ## 
            ## Gets the flowType property value. The flowType property
            ## @return a attribute_flow_type
            ## 
            def flow_type
                return @flow_type
            end
            ## 
            ## Sets the flowType property value. The flowType property
            ## @param value Value to set for the flowType property.
            ## @return a void
            ## 
            def flow_type=(value)
                @flow_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultValue" => lambda {|n| @default_value = n.get_string_value() },
                    "exportMissingReferences" => lambda {|n| @export_missing_references = n.get_boolean_value() },
                    "flowBehavior" => lambda {|n| @flow_behavior = n.get_enum_value(MicrosoftGraph::Models::AttributeFlowBehavior) },
                    "flowType" => lambda {|n| @flow_type = n.get_enum_value(MicrosoftGraph::Models::AttributeFlowType) },
                    "matchingPriority" => lambda {|n| @matching_priority = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "source" => lambda {|n| @source = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttributeMappingSource.create_from_discriminator_value(pn) }) },
                    "targetAttributeName" => lambda {|n| @target_attribute_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the matchingPriority property value. If higher than 0, this attribute will be used to perform an initial match of the objects between source and target directories. The synchronization engine will try to find the matching object using attribute with lowest value of matching priority first. If not found, the attribute with the next matching priority will be used, and so on a until match is found or no more matching attributes are left. Only attributes that are expected to have unique values, such as email, should be used as matching attributes.
            ## @return a integer
            ## 
            def matching_priority
                return @matching_priority
            end
            ## 
            ## Sets the matchingPriority property value. If higher than 0, this attribute will be used to perform an initial match of the objects between source and target directories. The synchronization engine will try to find the matching object using attribute with lowest value of matching priority first. If not found, the attribute with the next matching priority will be used, and so on a until match is found or no more matching attributes are left. Only attributes that are expected to have unique values, such as email, should be used as matching attributes.
            ## @param value Value to set for the matchingPriority property.
            ## @return a void
            ## 
            def matching_priority=(value)
                @matching_priority = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("defaultValue", @default_value)
                writer.write_boolean_value("exportMissingReferences", @export_missing_references)
                writer.write_enum_value("flowBehavior", @flow_behavior)
                writer.write_enum_value("flowType", @flow_type)
                writer.write_number_value("matchingPriority", @matching_priority)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("source", @source)
                writer.write_string_value("targetAttributeName", @target_attribute_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the source property value. Defines how a value should be extracted (or transformed) from the source object.
            ## @return a attribute_mapping_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. Defines how a value should be extracted (or transformed) from the source object.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the targetAttributeName property value. Name of the attribute on the target object.
            ## @return a string
            ## 
            def target_attribute_name
                return @target_attribute_name
            end
            ## 
            ## Sets the targetAttributeName property value. Name of the attribute on the target object.
            ## @param value Value to set for the targetAttributeName property.
            ## @return a void
            ## 
            def target_attribute_name=(value)
                @target_attribute_name = value
            end
        end
    end
end
