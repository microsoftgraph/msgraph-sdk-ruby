require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class StringKeyLongValuePair
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The mapping of the user type from the source system to the target system. For example:User to User - For Microsoft Entra ID to Microsoft Entra ID synchronization worker to user - For Workday to Microsoft Entra synchronization.
            @key
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Total number of synchronized objects.
            @value
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
            ## Instantiates a new stringKeyLongValuePair and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a string_key_long_value_pair
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return StringKeyLongValuePair.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "key" => lambda {|n| @key = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the key property value. The mapping of the user type from the source system to the target system. For example:User to User - For Microsoft Entra ID to Microsoft Entra ID synchronization worker to user - For Workday to Microsoft Entra synchronization.
            ## @return a string
            ## 
            def key
                return @key
            end
            ## 
            ## Sets the key property value. The mapping of the user type from the source system to the target system. For example:User to User - For Microsoft Entra ID to Microsoft Entra ID synchronization worker to user - For Workday to Microsoft Entra synchronization.
            ## @param value Value to set for the key property.
            ## @return a void
            ## 
            def key=(value)
                @key = value
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
                writer.write_string_value("key", @key)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the value property value. Total number of synchronized objects.
            ## @return a int64
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Total number of synchronized objects.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
