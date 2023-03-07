require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/chat_info'
require_relative '../../../models/meeting_participants'
require_relative '../../me'
require_relative '../online_meetings'
require_relative './create_or_get'

module MicrosoftGraph
    module Me
        module OnlineMeetings
            module CreateOrGet
                class CreateOrGetPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The chatInfo property
                    @chat_info
                    ## 
                    # The endDateTime property
                    @end_date_time
                    ## 
                    # The externalId property
                    @external_id
                    ## 
                    # The participants property
                    @participants
                    ## 
                    # The startDateTime property
                    @start_date_time
                    ## 
                    # The subject property
                    @subject
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
                    ## Gets the chatInfo property value. The chatInfo property
                    ## @return a chat_info
                    ## 
                    def chat_info
                        return @chat_info
                    end
                    ## 
                    ## Sets the chatInfo property value. The chatInfo property
                    ## @param value Value to set for the chat_info property.
                    ## @return a void
                    ## 
                    def chat_info=(value)
                        @chat_info = value
                    end
                    ## 
                    ## Instantiates a new createOrGetPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a create_or_get_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return CreateOrGetPostRequestBody.new
                    end
                    ## 
                    ## Gets the endDateTime property value. The endDateTime property
                    ## @return a date_time
                    ## 
                    def end_date_time
                        return @end_date_time
                    end
                    ## 
                    ## Sets the endDateTime property value. The endDateTime property
                    ## @param value Value to set for the end_date_time property.
                    ## @return a void
                    ## 
                    def end_date_time=(value)
                        @end_date_time = value
                    end
                    ## 
                    ## Gets the externalId property value. The externalId property
                    ## @return a string
                    ## 
                    def external_id
                        return @external_id
                    end
                    ## 
                    ## Sets the externalId property value. The externalId property
                    ## @param value Value to set for the external_id property.
                    ## @return a void
                    ## 
                    def external_id=(value)
                        @external_id = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "chatInfo" => lambda {|n| @chat_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatInfo.create_from_discriminator_value(pn) }) },
                            "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                            "externalId" => lambda {|n| @external_id = n.get_string_value() },
                            "participants" => lambda {|n| @participants = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MeetingParticipants.create_from_discriminator_value(pn) }) },
                            "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                            "subject" => lambda {|n| @subject = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the participants property value. The participants property
                    ## @return a meeting_participants
                    ## 
                    def participants
                        return @participants
                    end
                    ## 
                    ## Sets the participants property value. The participants property
                    ## @param value Value to set for the participants property.
                    ## @return a void
                    ## 
                    def participants=(value)
                        @participants = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("chatInfo", @chat_info)
                        writer.write_date_time_value("endDateTime", @end_date_time)
                        writer.write_string_value("externalId", @external_id)
                        writer.write_object_value("participants", @participants)
                        writer.write_date_time_value("startDateTime", @start_date_time)
                        writer.write_string_value("subject", @subject)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the startDateTime property value. The startDateTime property
                    ## @return a date_time
                    ## 
                    def start_date_time
                        return @start_date_time
                    end
                    ## 
                    ## Sets the startDateTime property value. The startDateTime property
                    ## @param value Value to set for the start_date_time property.
                    ## @return a void
                    ## 
                    def start_date_time=(value)
                        @start_date_time = value
                    end
                    ## 
                    ## Gets the subject property value. The subject property
                    ## @return a string
                    ## 
                    def subject
                        return @subject
                    end
                    ## 
                    ## Sets the subject property value. The subject property
                    ## @param value Value to set for the subject property.
                    ## @return a void
                    ## 
                    def subject=(value)
                        @subject = value
                    end
                end
            end
        end
    end
end
