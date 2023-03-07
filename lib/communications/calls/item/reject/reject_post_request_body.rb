require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/reject_reason'
require_relative '../../../communications'
require_relative '../../calls'
require_relative '../item'
require_relative './reject'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                module Reject
                    class RejectPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The callbackUri property
                        @callback_uri
                        ## 
                        # The reason property
                        @reason
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
                        ## Instantiates a new rejectPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a reject_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RejectPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "callbackUri" => lambda {|n| @callback_uri = n.get_string_value() },
                                "reason" => lambda {|n| @reason = n.get_enum_value(MicrosoftGraph::Models::RejectReason) },
                            }
                        end
                        ## 
                        ## Gets the reason property value. The reason property
                        ## @return a reject_reason
                        ## 
                        def reason
                            return @reason
                        end
                        ## 
                        ## Sets the reason property value. The reason property
                        ## @param value Value to set for the reason property.
                        ## @return a void
                        ## 
                        def reason=(value)
                            @reason = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("callbackUri", @callback_uri)
                            writer.write_enum_value("reason", @reason)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
