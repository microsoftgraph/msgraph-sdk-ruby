require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/tone'
require_relative '../../../communications'
require_relative '../../calls'
require_relative '../item'
require_relative './send_dtmf_tones'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                module SendDtmfTones
                    class SendDtmfTonesPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The clientContext property
                        @client_context
                        ## 
                        # The delayBetweenTonesMs property
                        @delay_between_tones_ms
                        ## 
                        # The tones property
                        @tones
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
                        ## Gets the clientContext property value. The clientContext property
                        ## @return a string
                        ## 
                        def client_context
                            return @client_context
                        end
                        ## 
                        ## Sets the clientContext property value. The clientContext property
                        ## @param value Value to set for the clientContext property.
                        ## @return a void
                        ## 
                        def client_context=(value)
                            @client_context = value
                        end
                        ## 
                        ## Instantiates a new sendDtmfTonesPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a send_dtmf_tones_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SendDtmfTonesPostRequestBody.new
                        end
                        ## 
                        ## Gets the delayBetweenTonesMs property value. The delayBetweenTonesMs property
                        ## @return a integer
                        ## 
                        def delay_between_tones_ms
                            return @delay_between_tones_ms
                        end
                        ## 
                        ## Sets the delayBetweenTonesMs property value. The delayBetweenTonesMs property
                        ## @param value Value to set for the delayBetweenTonesMs property.
                        ## @return a void
                        ## 
                        def delay_between_tones_ms=(value)
                            @delay_between_tones_ms = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "clientContext" => lambda {|n| @client_context = n.get_string_value() },
                                "delayBetweenTonesMs" => lambda {|n| @delay_between_tones_ms = n.get_number_value() },
                                "tones" => lambda {|n| @tones = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Tone.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("clientContext", @client_context)
                            writer.write_number_value("delayBetweenTonesMs", @delay_between_tones_ms)
                            writer.write_collection_of_object_values("tones", @tones)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the tones property value. The tones property
                        ## @return a tone
                        ## 
                        def tones
                            return @tones
                        end
                        ## 
                        ## Sets the tones property value. The tones property
                        ## @param value Value to set for the tones property.
                        ## @return a void
                        ## 
                        def tones=(value)
                            @tones = value
                        end
                    end
                end
            end
        end
    end
end
