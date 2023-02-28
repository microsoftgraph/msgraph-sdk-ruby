require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/time_slot'
require_relative '../../../../../me'
require_relative '../../../../calendar_view'
require_relative '../../../item'
require_relative '../../instances'
require_relative '../item'
require_relative './tentatively_accept'

module MicrosoftGraph
    module Me
        module CalendarView
            module Item
                module Instances
                    module Item
                        module TentativelyAccept
                            class TentativelyAcceptPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The Comment property
                                @comment
                                ## 
                                # The ProposedNewTime property
                                @proposed_new_time
                                ## 
                                # The SendResponse property
                                @send_response
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
                                ## Gets the comment property value. The Comment property
                                ## @return a string
                                ## 
                                def comment
                                    return @comment
                                end
                                ## 
                                ## Sets the comment property value. The Comment property
                                ## @param value Value to set for the Comment property.
                                ## @return a void
                                ## 
                                def comment=(value)
                                    @comment = value
                                end
                                ## 
                                ## Instantiates a new tentativelyAcceptPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parseNode The parse node to use to read the discriminator value and create the object
                                ## @return a tentatively_accept_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return TentativelyAcceptPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "Comment" => lambda {|n| @comment = n.get_string_value() },
                                        "ProposedNewTime" => lambda {|n| @proposed_new_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeSlot.create_from_discriminator_value(pn) }) },
                                        "SendResponse" => lambda {|n| @send_response = n.get_boolean_value() },
                                    }
                                end
                                ## 
                                ## Gets the proposedNewTime property value. The ProposedNewTime property
                                ## @return a time_slot
                                ## 
                                def proposed_new_time
                                    return @proposed_new_time
                                end
                                ## 
                                ## Sets the proposedNewTime property value. The ProposedNewTime property
                                ## @param value Value to set for the proposed_new_time property.
                                ## @return a void
                                ## 
                                def proposed_new_time=(value)
                                    @proposed_new_time = value
                                end
                                ## 
                                ## Gets the sendResponse property value. The SendResponse property
                                ## @return a boolean
                                ## 
                                def send_response
                                    return @send_response
                                end
                                ## 
                                ## Sets the sendResponse property value. The SendResponse property
                                ## @param value Value to set for the send_response property.
                                ## @return a void
                                ## 
                                def send_response=(value)
                                    @send_response = value
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_string_value("Comment", @comment)
                                    writer.write_object_value("ProposedNewTime", @proposed_new_time)
                                    writer.write_boolean_value("SendResponse", @send_response)
                                    writer.write_additional_data(@additional_data)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
