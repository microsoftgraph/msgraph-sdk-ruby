require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/time_slot'
require_relative '../../../../../../../../users'
require_relative '../../../../../../../item'
require_relative '../../../../../../calendar_groups'
require_relative '../../../../../item'
require_relative '../../../../calendars'
require_relative '../../../item'
require_relative '../../calendar_view'
require_relative '../item'
require_relative './microsoft_graph_decline'

module MicrosoftGraph::Users::Item::CalendarGroups::Item::Calendars::Item::CalendarView::Item::MicrosoftGraphDecline
    class DeclinePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        @comment
        @proposed_new_time
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
        ## Gets the comment property value. 
        ## @return a string
        ## 
        def comment
            return @comment
        end
        ## 
        ## Sets the comment property value. 
        ## @param value Value to set for the Comment property.
        ## @return a void
        ## 
        def comment=(value)
            @comment = value
        end
        ## 
        ## Instantiates a new declinePostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a decline_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeclinePostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "comment" => lambda {|n| @comment = n.get_string_value() },
                "proposedNewTime" => lambda {|n| @proposed_new_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeSlot.create_from_discriminator_value(pn) }) },
                "sendResponse" => lambda {|n| @send_response = n.get_boolean_value() },
            }
        end
        ## 
        ## Gets the proposedNewTime property value. 
        ## @return a time_slot
        ## 
        def proposed_new_time
            return @proposed_new_time
        end
        ## 
        ## Sets the proposedNewTime property value. 
        ## @param value Value to set for the ProposedNewTime property.
        ## @return a void
        ## 
        def proposed_new_time=(value)
            @proposed_new_time = value
        end
        ## 
        ## Gets the sendResponse property value. 
        ## @return a boolean
        ## 
        def send_response
            return @send_response
        end
        ## 
        ## Sets the sendResponse property value. 
        ## @param value Value to set for the SendResponse property.
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
            writer.write_string_value("comment", @comment)
            writer.write_object_value("proposedNewTime", @proposed_new_time)
            writer.write_boolean_value("sendResponse", @send_response)
            writer.write_additional_data(@additional_data)
        end
    end
end