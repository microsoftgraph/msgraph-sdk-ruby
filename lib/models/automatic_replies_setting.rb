require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AutomaticRepliesSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The set of audience external to the signed-in user's organization who will receive the ExternalReplyMessage, if Status is AlwaysEnabled or Scheduled. The possible values are: none, contactsOnly, all.
            @external_audience
            ## 
            # The automatic reply to send to the specified external audience, if Status is AlwaysEnabled or Scheduled.
            @external_reply_message
            ## 
            # The automatic reply to send to the audience internal to the signed-in user's organization, if Status is AlwaysEnabled or Scheduled.
            @internal_reply_message
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The date and time that automatic replies are set to end, if Status is set to Scheduled.
            @scheduled_end_date_time
            ## 
            # The date and time that automatic replies are set to begin, if Status is set to Scheduled.
            @scheduled_start_date_time
            ## 
            # Configurations status for automatic replies. The possible values are: disabled, alwaysEnabled, scheduled.
            @status
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
            ## Instantiates a new automaticRepliesSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a automatic_replies_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AutomaticRepliesSetting.new
            end
            ## 
            ## Gets the externalAudience property value. The set of audience external to the signed-in user's organization who will receive the ExternalReplyMessage, if Status is AlwaysEnabled or Scheduled. The possible values are: none, contactsOnly, all.
            ## @return a external_audience_scope
            ## 
            def external_audience
                return @external_audience
            end
            ## 
            ## Sets the externalAudience property value. The set of audience external to the signed-in user's organization who will receive the ExternalReplyMessage, if Status is AlwaysEnabled or Scheduled. The possible values are: none, contactsOnly, all.
            ## @param value Value to set for the external_audience property.
            ## @return a void
            ## 
            def external_audience=(value)
                @external_audience = value
            end
            ## 
            ## Gets the externalReplyMessage property value. The automatic reply to send to the specified external audience, if Status is AlwaysEnabled or Scheduled.
            ## @return a string
            ## 
            def external_reply_message
                return @external_reply_message
            end
            ## 
            ## Sets the externalReplyMessage property value. The automatic reply to send to the specified external audience, if Status is AlwaysEnabled or Scheduled.
            ## @param value Value to set for the external_reply_message property.
            ## @return a void
            ## 
            def external_reply_message=(value)
                @external_reply_message = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "externalAudience" => lambda {|n| @external_audience = n.get_enum_value(MicrosoftGraph::Models::ExternalAudienceScope) },
                    "externalReplyMessage" => lambda {|n| @external_reply_message = n.get_string_value() },
                    "internalReplyMessage" => lambda {|n| @internal_reply_message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scheduledEndDateTime" => lambda {|n| @scheduled_end_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "scheduledStartDateTime" => lambda {|n| @scheduled_start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::AutomaticRepliesStatus) },
                }
            end
            ## 
            ## Gets the internalReplyMessage property value. The automatic reply to send to the audience internal to the signed-in user's organization, if Status is AlwaysEnabled or Scheduled.
            ## @return a string
            ## 
            def internal_reply_message
                return @internal_reply_message
            end
            ## 
            ## Sets the internalReplyMessage property value. The automatic reply to send to the audience internal to the signed-in user's organization, if Status is AlwaysEnabled or Scheduled.
            ## @param value Value to set for the internal_reply_message property.
            ## @return a void
            ## 
            def internal_reply_message=(value)
                @internal_reply_message = value
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
            ## Gets the scheduledEndDateTime property value. The date and time that automatic replies are set to end, if Status is set to Scheduled.
            ## @return a date_time_time_zone
            ## 
            def scheduled_end_date_time
                return @scheduled_end_date_time
            end
            ## 
            ## Sets the scheduledEndDateTime property value. The date and time that automatic replies are set to end, if Status is set to Scheduled.
            ## @param value Value to set for the scheduled_end_date_time property.
            ## @return a void
            ## 
            def scheduled_end_date_time=(value)
                @scheduled_end_date_time = value
            end
            ## 
            ## Gets the scheduledStartDateTime property value. The date and time that automatic replies are set to begin, if Status is set to Scheduled.
            ## @return a date_time_time_zone
            ## 
            def scheduled_start_date_time
                return @scheduled_start_date_time
            end
            ## 
            ## Sets the scheduledStartDateTime property value. The date and time that automatic replies are set to begin, if Status is set to Scheduled.
            ## @param value Value to set for the scheduled_start_date_time property.
            ## @return a void
            ## 
            def scheduled_start_date_time=(value)
                @scheduled_start_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("externalAudience", @external_audience)
                writer.write_string_value("externalReplyMessage", @external_reply_message)
                writer.write_string_value("internalReplyMessage", @internal_reply_message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("scheduledEndDateTime", @scheduled_end_date_time)
                writer.write_object_value("scheduledStartDateTime", @scheduled_start_date_time)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. Configurations status for automatic replies. The possible values are: disabled, alwaysEnabled, scheduled.
            ## @return a automatic_replies_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Configurations status for automatic replies. The possible values are: disabled, alwaysEnabled, scheduled.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
