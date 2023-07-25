require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class FileHash
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The algorithm property
                @algorithm
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The value property
                @value
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
                ## Gets the algorithm property value. The algorithm property
                ## @return a file_hash_algorithm
                ## 
                def algorithm
                    return @algorithm
                end
                ## 
                ## Sets the algorithm property value. The algorithm property
                ## @param value Value to set for the algorithm property.
                ## @return a void
                ## 
                def algorithm=(value)
                    @algorithm = value
                end
                ## 
                ## Instantiates a new fileHash and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a file_hash
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return FileHash.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "algorithm" => lambda {|n| @algorithm = n.get_enum_value(MicrosoftGraph::Models::Security::FileHashAlgorithm) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "value" => lambda {|n| @value = n.get_string_value() },
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("algorithm", @algorithm)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("value", @value)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the value property value. The value property
                ## @return a string
                ## 
                def value
                    return @value
                end
                ## 
                ## Sets the value property value. The value property
                ## @param value Value to set for the value property.
                ## @return a void
                ## 
                def value=(value)
                    @value = value
                end
            end
        end
    end
end
