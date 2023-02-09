require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallOptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether to hide the app after the call is escalated.
            @hide_bot_after_escalation
            ## 
            # Indicates whether content sharing notifications should be enabled for the call.
            @is_content_sharing_notification_enabled
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new callOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a call_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.incomingCallOptions"
                            return IncomingCallOptions.new
                        when "#microsoft.graph.outgoingCallOptions"
                            return OutgoingCallOptions.new
                    end
                end
                return CallOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "hideBotAfterEscalation" => lambda {|n| @hide_bot_after_escalation = n.get_boolean_value() },
                    "isContentSharingNotificationEnabled" => lambda {|n| @is_content_sharing_notification_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the hideBotAfterEscalation property value. Indicates whether to hide the app after the call is escalated.
            ## @return a boolean
            ## 
            def hide_bot_after_escalation
                return @hide_bot_after_escalation
            end
            ## 
            ## Sets the hideBotAfterEscalation property value. Indicates whether to hide the app after the call is escalated.
            ## @param value Value to set for the hide_bot_after_escalation property.
            ## @return a void
            ## 
            def hide_bot_after_escalation=(value)
                @hide_bot_after_escalation = value
            end
            ## 
            ## Gets the isContentSharingNotificationEnabled property value. Indicates whether content sharing notifications should be enabled for the call.
            ## @return a boolean
            ## 
            def is_content_sharing_notification_enabled
                return @is_content_sharing_notification_enabled
            end
            ## 
            ## Sets the isContentSharingNotificationEnabled property value. Indicates whether content sharing notifications should be enabled for the call.
            ## @param value Value to set for the is_content_sharing_notification_enabled property.
            ## @return a void
            ## 
            def is_content_sharing_notification_enabled=(value)
                @is_content_sharing_notification_enabled = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("hideBotAfterEscalation", @hide_bot_after_escalation)
                writer.write_boolean_value("isContentSharingNotificationEnabled", @is_content_sharing_notification_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
