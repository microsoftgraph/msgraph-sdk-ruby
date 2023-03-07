require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/invitation_participant_info'
require_relative '../../../communications'
require_relative '../../calls'
require_relative '../item'
require_relative './redirect'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                module Redirect
                    class RedirectPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The callbackUri property
                        @callback_uri
                        ## 
                        # The targets property
                        @targets
                        ## 
                        # The timeout property
                        @timeout
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
                        ## Instantiates a new redirectPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a redirect_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RedirectPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "callbackUri" => lambda {|n| @callback_uri = n.get_string_value() },
                                "targets" => lambda {|n| @targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::InvitationParticipantInfo.create_from_discriminator_value(pn) }) },
                                "timeout" => lambda {|n| @timeout = n.get_number_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("callbackUri", @callback_uri)
                            writer.write_collection_of_object_values("targets", @targets)
                            writer.write_number_value("timeout", @timeout)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the targets property value. The targets property
                        ## @return a invitation_participant_info
                        ## 
                        def targets
                            return @targets
                        end
                        ## 
                        ## Sets the targets property value. The targets property
                        ## @param value Value to set for the targets property.
                        ## @return a void
                        ## 
                        def targets=(value)
                            @targets = value
                        end
                        ## 
                        ## Gets the timeout property value. The timeout property
                        ## @return a integer
                        ## 
                        def timeout
                            return @timeout
                        end
                        ## 
                        ## Sets the timeout property value. The timeout property
                        ## @param value Value to set for the timeout property.
                        ## @return a void
                        ## 
                        def timeout=(value)
                            @timeout = value
                        end
                    end
                end
            end
        end
    end
end
