require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AutomaticRepliesMailTips
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The automatic reply message.
            @message
            ## 
            # The language that the automatic reply message is in.
            @message_language
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The date and time that automatic replies are set to end.
            @scheduled_end_time
            ## 
            # The date and time that automatic replies are set to begin.
            @scheduled_start_time
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
            ## Instantiates a new automaticRepliesMailTips and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a automatic_replies_mail_tips
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AutomaticRepliesMailTips.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "messageLanguage" => lambda {|n| @message_language = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LocaleInfo.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scheduledEndTime" => lambda {|n| @scheduled_end_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "scheduledStartTime" => lambda {|n| @scheduled_start_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the message property value. The automatic reply message.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. The automatic reply message.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
            end
            ## 
            ## Gets the messageLanguage property value. The language that the automatic reply message is in.
            ## @return a locale_info
            ## 
            def message_language
                return @message_language
            end
            ## 
            ## Sets the messageLanguage property value. The language that the automatic reply message is in.
            ## @param value Value to set for the message_language property.
            ## @return a void
            ## 
            def message_language=(value)
                @message_language = value
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
            ## Gets the scheduledEndTime property value. The date and time that automatic replies are set to end.
            ## @return a date_time_time_zone
            ## 
            def scheduled_end_time
                return @scheduled_end_time
            end
            ## 
            ## Sets the scheduledEndTime property value. The date and time that automatic replies are set to end.
            ## @param value Value to set for the scheduled_end_time property.
            ## @return a void
            ## 
            def scheduled_end_time=(value)
                @scheduled_end_time = value
            end
            ## 
            ## Gets the scheduledStartTime property value. The date and time that automatic replies are set to begin.
            ## @return a date_time_time_zone
            ## 
            def scheduled_start_time
                return @scheduled_start_time
            end
            ## 
            ## Sets the scheduledStartTime property value. The date and time that automatic replies are set to begin.
            ## @param value Value to set for the scheduled_start_time property.
            ## @return a void
            ## 
            def scheduled_start_time=(value)
                @scheduled_start_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("message", @message)
                writer.write_object_value("messageLanguage", @message_language)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("scheduledEndTime", @scheduled_end_time)
                writer.write_object_value("scheduledStartTime", @scheduled_start_time)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
