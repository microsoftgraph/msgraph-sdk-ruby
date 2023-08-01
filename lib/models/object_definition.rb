require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ObjectDefinition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Defines attributes of the object.
            @attributes
            ## 
            # Metadata for the given object.
            @metadata
            ## 
            # Name of the object. Must be unique within a directory definition. Not nullable.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The API that the provisioning service queries to retrieve data for synchronization.
            @supported_apis
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
            ## Gets the attributes property value. Defines attributes of the object.
            ## @return a attribute_definition
            ## 
            def attributes
                return @attributes
            end
            ## 
            ## Sets the attributes property value. Defines attributes of the object.
            ## @param value Value to set for the attributes property.
            ## @return a void
            ## 
            def attributes=(value)
                @attributes = value
            end
            ## 
            ## Instantiates a new objectDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a object_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ObjectDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attributes" => lambda {|n| @attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttributeDefinition.create_from_discriminator_value(pn) }) },
                    "metadata" => lambda {|n| @metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ObjectDefinitionMetadataEntry.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "supportedApis" => lambda {|n| @supported_apis = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the metadata property value. Metadata for the given object.
            ## @return a object_definition_metadata_entry
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
            ## Gets the name property value. Name of the object. Must be unique within a directory definition. Not nullable.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the object. Must be unique within a directory definition. Not nullable.
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("attributes", @attributes)
                writer.write_collection_of_object_values("metadata", @metadata)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("supportedApis", @supported_apis)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the supportedApis property value. The API that the provisioning service queries to retrieve data for synchronization.
            ## @return a string
            ## 
            def supported_apis
                return @supported_apis
            end
            ## 
            ## Sets the supportedApis property value. The API that the provisioning service queries to retrieve data for synchronization.
            ## @param value Value to set for the supportedApis property.
            ## @return a void
            ## 
            def supported_apis=(value)
                @supported_apis = value
            end
        end
    end
end
