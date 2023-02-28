require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/prompt'
require_relative '../../../communications'
require_relative '../../calls'
require_relative '../item'
require_relative './record_response'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                module RecordResponse
                    class RecordResponsePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The bargeInAllowed property
                        @barge_in_allowed
                        ## 
                        # The clientContext property
                        @client_context
                        ## 
                        # The initialSilenceTimeoutInSeconds property
                        @initial_silence_timeout_in_seconds
                        ## 
                        # The maxRecordDurationInSeconds property
                        @max_record_duration_in_seconds
                        ## 
                        # The maxSilenceTimeoutInSeconds property
                        @max_silence_timeout_in_seconds
                        ## 
                        # The playBeep property
                        @play_beep
                        ## 
                        # The prompts property
                        @prompts
                        ## 
                        # The stopTones property
                        @stop_tones
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
                        ## Gets the bargeInAllowed property value. The bargeInAllowed property
                        ## @return a boolean
                        ## 
                        def barge_in_allowed
                            return @barge_in_allowed
                        end
                        ## 
                        ## Sets the bargeInAllowed property value. The bargeInAllowed property
                        ## @param value Value to set for the barge_in_allowed property.
                        ## @return a void
                        ## 
                        def barge_in_allowed=(value)
                            @barge_in_allowed = value
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
                        ## @param value Value to set for the client_context property.
                        ## @return a void
                        ## 
                        def client_context=(value)
                            @client_context = value
                        end
                        ## 
                        ## Instantiates a new recordResponsePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a record_response_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RecordResponsePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "bargeInAllowed" => lambda {|n| @barge_in_allowed = n.get_boolean_value() },
                                "clientContext" => lambda {|n| @client_context = n.get_string_value() },
                                "initialSilenceTimeoutInSeconds" => lambda {|n| @initial_silence_timeout_in_seconds = n.get_number_value() },
                                "maxRecordDurationInSeconds" => lambda {|n| @max_record_duration_in_seconds = n.get_number_value() },
                                "maxSilenceTimeoutInSeconds" => lambda {|n| @max_silence_timeout_in_seconds = n.get_number_value() },
                                "playBeep" => lambda {|n| @play_beep = n.get_boolean_value() },
                                "prompts" => lambda {|n| @prompts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Prompt.create_from_discriminator_value(pn) }) },
                                "stopTones" => lambda {|n| @stop_tones = n.get_collection_of_primitive_values(String) },
                            }
                        end
                        ## 
                        ## Gets the initialSilenceTimeoutInSeconds property value. The initialSilenceTimeoutInSeconds property
                        ## @return a integer
                        ## 
                        def initial_silence_timeout_in_seconds
                            return @initial_silence_timeout_in_seconds
                        end
                        ## 
                        ## Sets the initialSilenceTimeoutInSeconds property value. The initialSilenceTimeoutInSeconds property
                        ## @param value Value to set for the initial_silence_timeout_in_seconds property.
                        ## @return a void
                        ## 
                        def initial_silence_timeout_in_seconds=(value)
                            @initial_silence_timeout_in_seconds = value
                        end
                        ## 
                        ## Gets the maxRecordDurationInSeconds property value. The maxRecordDurationInSeconds property
                        ## @return a integer
                        ## 
                        def max_record_duration_in_seconds
                            return @max_record_duration_in_seconds
                        end
                        ## 
                        ## Sets the maxRecordDurationInSeconds property value. The maxRecordDurationInSeconds property
                        ## @param value Value to set for the max_record_duration_in_seconds property.
                        ## @return a void
                        ## 
                        def max_record_duration_in_seconds=(value)
                            @max_record_duration_in_seconds = value
                        end
                        ## 
                        ## Gets the maxSilenceTimeoutInSeconds property value. The maxSilenceTimeoutInSeconds property
                        ## @return a integer
                        ## 
                        def max_silence_timeout_in_seconds
                            return @max_silence_timeout_in_seconds
                        end
                        ## 
                        ## Sets the maxSilenceTimeoutInSeconds property value. The maxSilenceTimeoutInSeconds property
                        ## @param value Value to set for the max_silence_timeout_in_seconds property.
                        ## @return a void
                        ## 
                        def max_silence_timeout_in_seconds=(value)
                            @max_silence_timeout_in_seconds = value
                        end
                        ## 
                        ## Gets the playBeep property value. The playBeep property
                        ## @return a boolean
                        ## 
                        def play_beep
                            return @play_beep
                        end
                        ## 
                        ## Sets the playBeep property value. The playBeep property
                        ## @param value Value to set for the play_beep property.
                        ## @return a void
                        ## 
                        def play_beep=(value)
                            @play_beep = value
                        end
                        ## 
                        ## Gets the prompts property value. The prompts property
                        ## @return a prompt
                        ## 
                        def prompts
                            return @prompts
                        end
                        ## 
                        ## Sets the prompts property value. The prompts property
                        ## @param value Value to set for the prompts property.
                        ## @return a void
                        ## 
                        def prompts=(value)
                            @prompts = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_boolean_value("bargeInAllowed", @barge_in_allowed)
                            writer.write_string_value("clientContext", @client_context)
                            writer.write_number_value("initialSilenceTimeoutInSeconds", @initial_silence_timeout_in_seconds)
                            writer.write_number_value("maxRecordDurationInSeconds", @max_record_duration_in_seconds)
                            writer.write_number_value("maxSilenceTimeoutInSeconds", @max_silence_timeout_in_seconds)
                            writer.write_boolean_value("playBeep", @play_beep)
                            writer.write_collection_of_object_values("prompts", @prompts)
                            writer.write_collection_of_primitive_values("stopTones", @stop_tones)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the stopTones property value. The stopTones property
                        ## @return a string
                        ## 
                        def stop_tones
                            return @stop_tones
                        end
                        ## 
                        ## Sets the stopTones property value. The stopTones property
                        ## @param value Value to set for the stop_tones property.
                        ## @return a void
                        ## 
                        def stop_tones=(value)
                            @stop_tones = value
                        end
                    end
                end
            end
        end
    end
end
