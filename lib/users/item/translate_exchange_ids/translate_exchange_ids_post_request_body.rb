require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/exchange_id_format'
require_relative '../../users'
require_relative '../item'
require_relative './translate_exchange_ids'

module MicrosoftGraph
    module Users
        module Item
            module TranslateExchangeIds
                class TranslateExchangeIdsPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The InputIds property
                    @input_ids
                    ## 
                    # The SourceIdType property
                    @source_id_type
                    ## 
                    # The TargetIdType property
                    @target_id_type
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
                    ## Instantiates a new translateExchangeIdsPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a translate_exchange_ids_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TranslateExchangeIdsPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "InputIds" => lambda {|n| @input_ids = n.get_collection_of_primitive_values(String) },
                            "SourceIdType" => lambda {|n| @source_id_type = n.get_enum_value(MicrosoftGraph::Models::ExchangeIdFormat) },
                            "TargetIdType" => lambda {|n| @target_id_type = n.get_enum_value(MicrosoftGraph::Models::ExchangeIdFormat) },
                        }
                    end
                    ## 
                    ## Gets the inputIds property value. The InputIds property
                    ## @return a string
                    ## 
                    def input_ids
                        return @input_ids
                    end
                    ## 
                    ## Sets the inputIds property value. The InputIds property
                    ## @param value Value to set for the input_ids property.
                    ## @return a void
                    ## 
                    def input_ids=(value)
                        @input_ids = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_primitive_values("InputIds", @input_ids)
                        writer.write_enum_value("SourceIdType", @source_id_type)
                        writer.write_enum_value("TargetIdType", @target_id_type)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the sourceIdType property value. The SourceIdType property
                    ## @return a exchange_id_format
                    ## 
                    def source_id_type
                        return @source_id_type
                    end
                    ## 
                    ## Sets the sourceIdType property value. The SourceIdType property
                    ## @param value Value to set for the source_id_type property.
                    ## @return a void
                    ## 
                    def source_id_type=(value)
                        @source_id_type = value
                    end
                    ## 
                    ## Gets the targetIdType property value. The TargetIdType property
                    ## @return a exchange_id_format
                    ## 
                    def target_id_type
                        return @target_id_type
                    end
                    ## 
                    ## Sets the targetIdType property value. The TargetIdType property
                    ## @param value Value to set for the target_id_type property.
                    ## @return a void
                    ## 
                    def target_id_type=(value)
                        @target_id_type = value
                    end
                end
            end
        end
    end
end
