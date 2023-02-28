require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/invitation_participant_info'
require_relative '../../../../models/participant_info'
require_relative '../../../communications'
require_relative '../../calls'
require_relative '../item'
require_relative './transfer'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                module Transfer
                    class TransferPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The transferTarget property
                        @transfer_target
                        ## 
                        # The transferee property
                        @transferee
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
                        ## Instantiates a new transferPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a transfer_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return TransferPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "transferTarget" => lambda {|n| @transfer_target = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::InvitationParticipantInfo.create_from_discriminator_value(pn) }) },
                                "transferee" => lambda {|n| @transferee = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ParticipantInfo.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("transferTarget", @transfer_target)
                            writer.write_object_value("transferee", @transferee)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the transferTarget property value. The transferTarget property
                        ## @return a invitation_participant_info
                        ## 
                        def transfer_target
                            return @transfer_target
                        end
                        ## 
                        ## Sets the transferTarget property value. The transferTarget property
                        ## @param value Value to set for the transfer_target property.
                        ## @return a void
                        ## 
                        def transfer_target=(value)
                            @transfer_target = value
                        end
                        ## 
                        ## Gets the transferee property value. The transferee property
                        ## @return a participant_info
                        ## 
                        def transferee
                            return @transferee
                        end
                        ## 
                        ## Sets the transferee property value. The transferee property
                        ## @param value Value to set for the transferee property.
                        ## @return a void
                        ## 
                        def transferee=(value)
                            @transferee = value
                        end
                    end
                end
            end
        end
    end
end
