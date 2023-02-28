require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../groups'
require_relative './get_by_ids'

module MicrosoftGraph
    module Groups
        module GetByIds
            class GetByIdsPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The ids property
                @ids
                ## 
                # The types property
                @types
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new getByIdsPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a get_by_ids_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GetByIdsPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "ids" => lambda {|n| @ids = n.get_collection_of_primitive_values(String) },
                        "types" => lambda {|n| @types = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the ids property value. The ids property
                ## @return a string
                ## 
                def ids
                    return @ids
                end
                ## 
                ## Sets the ids property value. The ids property
                ## @param value Value to set for the ids property.
                ## @return a void
                ## 
                def ids=(value)
                    @ids = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("ids", @ids)
                    writer.write_collection_of_primitive_values("types", @types)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the types property value. The types property
                ## @return a string
                ## 
                def types
                    return @types
                end
                ## 
                ## Sets the types property value. The types property
                ## @param value Value to set for the types property.
                ## @return a void
                ## 
                def types=(value)
                    @types = value
                end
            end
        end
    end
end
