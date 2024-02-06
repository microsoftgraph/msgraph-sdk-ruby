require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ReferencedObject
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Name of the referenced object. Must match one of the objects in the directory definition.
            @referenced_object_name
            ## 
            # Currently not supported. Name of the property in the referenced object, the value for which is used as the reference.
            @referenced_property
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
            ## Instantiates a new referencedObject and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a referenced_object
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReferencedObject.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "referencedObjectName" => lambda {|n| @referenced_object_name = n.get_string_value() },
                    "referencedProperty" => lambda {|n| @referenced_property = n.get_string_value() },
                }
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
            ## Gets the referencedObjectName property value. Name of the referenced object. Must match one of the objects in the directory definition.
            ## @return a string
            ## 
            def referenced_object_name
                return @referenced_object_name
            end
            ## 
            ## Sets the referencedObjectName property value. Name of the referenced object. Must match one of the objects in the directory definition.
            ## @param value Value to set for the referencedObjectName property.
            ## @return a void
            ## 
            def referenced_object_name=(value)
                @referenced_object_name = value
            end
            ## 
            ## Gets the referencedProperty property value. Currently not supported. Name of the property in the referenced object, the value for which is used as the reference.
            ## @return a string
            ## 
            def referenced_property
                return @referenced_property
            end
            ## 
            ## Sets the referencedProperty property value. Currently not supported. Name of the property in the referenced object, the value for which is used as the reference.
            ## @param value Value to set for the referencedProperty property.
            ## @return a void
            ## 
            def referenced_property=(value)
                @referenced_property = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_string_value("referencedObjectName", @referenced_object_name) unless @referenced_object_name.nil?
                writer.write_string_value("referencedProperty", @referenced_property) unless @referenced_property.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
        end
    end
end
