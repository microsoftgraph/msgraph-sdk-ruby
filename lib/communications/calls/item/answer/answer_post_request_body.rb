require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/incoming_call_options'
require_relative '../../../../models/media_config'
require_relative '../../../../models/modality'
require_relative '../../../communications'
require_relative '../../calls'
require_relative '../item'
require_relative './answer'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                module Answer
                    class AnswerPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The acceptedModalities property
                        @accepted_modalities
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The callOptions property
                        @call_options
                        ## 
                        # The callbackUri property
                        @callback_uri
                        ## 
                        # The mediaConfig property
                        @media_config
                        ## 
                        # The participantCapacity property
                        @participant_capacity
                        ## 
                        ## Gets the acceptedModalities property value. The acceptedModalities property
                        ## @return a modality
                        ## 
                        def accepted_modalities
                            return @accepted_modalities
                        end
                        ## 
                        ## Sets the acceptedModalities property value. The acceptedModalities property
                        ## @param value Value to set for the accepted_modalities property.
                        ## @return a void
                        ## 
                        def accepted_modalities=(value)
                            @accepted_modalities = value
                        end
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
                        ## Gets the callOptions property value. The callOptions property
                        ## @return a incoming_call_options
                        ## 
                        def call_options
                            return @call_options
                        end
                        ## 
                        ## Sets the callOptions property value. The callOptions property
                        ## @param value Value to set for the call_options property.
                        ## @return a void
                        ## 
                        def call_options=(value)
                            @call_options = value
                        end
                        ## 
                        ## Gets the callbackUri property value. The callbackUri property
                        ## @return a string
                        ## 
                        def callback_uri
                            return @callback_uri
                        end
                        ## 
                        ## Sets the callbackUri property value. The callbackUri property
                        ## @param value Value to set for the callback_uri property.
                        ## @return a void
                        ## 
                        def callback_uri=(value)
                            @callback_uri = value
                        end
                        ## 
                        ## Instantiates a new answerPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a answer_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return AnswerPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "acceptedModalities" => lambda {|n| @accepted_modalities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Modality.create_from_discriminator_value(pn) }) },
                                "callOptions" => lambda {|n| @call_options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IncomingCallOptions.create_from_discriminator_value(pn) }) },
                                "callbackUri" => lambda {|n| @callback_uri = n.get_string_value() },
                                "mediaConfig" => lambda {|n| @media_config = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaConfig.create_from_discriminator_value(pn) }) },
                                "participantCapacity" => lambda {|n| @participant_capacity = n.get_number_value() },
                            }
                        end
                        ## 
                        ## Gets the mediaConfig property value. The mediaConfig property
                        ## @return a media_config
                        ## 
                        def media_config
                            return @media_config
                        end
                        ## 
                        ## Sets the mediaConfig property value. The mediaConfig property
                        ## @param value Value to set for the media_config property.
                        ## @return a void
                        ## 
                        def media_config=(value)
                            @media_config = value
                        end
                        ## 
                        ## Gets the participantCapacity property value. The participantCapacity property
                        ## @return a integer
                        ## 
                        def participant_capacity
                            return @participant_capacity
                        end
                        ## 
                        ## Sets the participantCapacity property value. The participantCapacity property
                        ## @param value Value to set for the participant_capacity property.
                        ## @return a void
                        ## 
                        def participant_capacity=(value)
                            @participant_capacity = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("acceptedModalities", @accepted_modalities)
                            writer.write_object_value("callOptions", @call_options)
                            writer.write_string_value("callbackUri", @callback_uri)
                            writer.write_object_value("mediaConfig", @media_config)
                            writer.write_number_value("participantCapacity", @participant_capacity)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
