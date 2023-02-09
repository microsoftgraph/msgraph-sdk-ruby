require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # This type represents when and to whom to send an e-mail reminder.
        class BookingReminder
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The message in the reminder.
            @message
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
            @offset
            ## 
            # The recipients property
            @recipients
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
            ## Instantiates a new bookingReminder and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_reminder
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingReminder.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "offset" => lambda {|n| @offset = n.get_duration_value() },
                    "recipients" => lambda {|n| @recipients = n.get_enum_value(MicrosoftGraph::Models::BookingReminderRecipients) },
                }
            end
            ## 
            ## Gets the message property value. The message in the reminder.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. The message in the reminder.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the offset property value. The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def offset
                return @offset
            end
            ## 
            ## Sets the offset property value. The amount of time before the start of an appointment that the reminder should be sent. It's denoted in ISO 8601 format.
            ## @param value Value to set for the offset property.
            ## @return a void
            ## 
            def offset=(value)
                @offset = value
            end
            ## 
            ## Gets the recipients property value. The recipients property
            ## @return a booking_reminder_recipients
            ## 
            def recipients
                return @recipients
            end
            ## 
            ## Sets the recipients property value. The recipients property
            ## @param value Value to set for the recipients property.
            ## @return a void
            ## 
            def recipients=(value)
                @recipients = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("message", @message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_duration_value("offset", @offset)
                writer.write_enum_value("recipients", @recipients)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
