require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/attendee_notification_info'
require_relative '../../../../../models/remind_before_time_in_minutes_type'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../online_meetings'
require_relative '../item'
require_relative './send_virtual_appointment_reminder_sms'

module MicrosoftGraph
    module Users
        module Item
            module OnlineMeetings
                module Item
                    module SendVirtualAppointmentReminderSms
                        class SendVirtualAppointmentReminderSmsPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The attendees property
                            @attendees
                            ## 
                            # The remindBeforeTimeInMinutesType property
                            @remind_before_time_in_minutes_type
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
                            ## Gets the attendees property value. The attendees property
                            ## @return a attendee_notification_info
                            ## 
                            def attendees
                                return @attendees
                            end
                            ## 
                            ## Sets the attendees property value. The attendees property
                            ## @param value Value to set for the attendees property.
                            ## @return a void
                            ## 
                            def attendees=(value)
                                @attendees = value
                            end
                            ## 
                            ## Instantiates a new SendVirtualAppointmentReminderSmsPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a send_virtual_appointment_reminder_sms_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return SendVirtualAppointmentReminderSmsPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "attendees" => lambda {|n| @attendees = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttendeeNotificationInfo.create_from_discriminator_value(pn) }) },
                                    "remindBeforeTimeInMinutesType" => lambda {|n| @remind_before_time_in_minutes_type = n.get_enum_value(MicrosoftGraph::Models::RemindBeforeTimeInMinutesType) },
                                }
                            end
                            ## 
                            ## Gets the remindBeforeTimeInMinutesType property value. The remindBeforeTimeInMinutesType property
                            ## @return a remind_before_time_in_minutes_type
                            ## 
                            def remind_before_time_in_minutes_type
                                return @remind_before_time_in_minutes_type
                            end
                            ## 
                            ## Sets the remindBeforeTimeInMinutesType property value. The remindBeforeTimeInMinutesType property
                            ## @param value Value to set for the remindBeforeTimeInMinutesType property.
                            ## @return a void
                            ## 
                            def remind_before_time_in_minutes_type=(value)
                                @remind_before_time_in_minutes_type = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_collection_of_object_values("attendees", @attendees)
                                writer.write_enum_value("remindBeforeTimeInMinutesType", @remind_before_time_in_minutes_type)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
