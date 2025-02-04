require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AddIn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier for the addIn object.
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The collection of key-value pairs that define parameters that the consuming service can use or call. You must specify this property when performing a POST or a PATCH operation on the addIns collection. Required.
            @properties
            ## 
            # The unique name for the functionality exposed by the app.
            @type
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
            ## Instantiates a new AddIn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a add_in
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AddIn.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "properties" => lambda {|n| @properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "type" => lambda {|n| @type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. The unique identifier for the addIn object.
            ## @return a guid
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The unique identifier for the addIn object.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## Gets the properties property value. The collection of key-value pairs that define parameters that the consuming service can use or call. You must specify this property when performing a POST or a PATCH operation on the addIns collection. Required.
            ## @return a key_value
            ## 
            def properties
                return @properties
            end
            ## 
            ## Sets the properties property value. The collection of key-value pairs that define parameters that the consuming service can use or call. You must specify this property when performing a POST or a PATCH operation on the addIns collection. Required.
            ## @param value Value to set for the properties property.
            ## @return a void
            ## 
            def properties=(value)
                @properties = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_guid_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("properties", @properties)
                writer.write_string_value("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. The unique name for the functionality exposed by the app.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The unique name for the functionality exposed by the app.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
