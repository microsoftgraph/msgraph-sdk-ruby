require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MessageSecurityState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The connectingIP property
            @connecting_i_p
            ## 
            # The deliveryAction property
            @delivery_action
            ## 
            # The deliveryLocation property
            @delivery_location
            ## 
            # The directionality property
            @directionality
            ## 
            # The internetMessageId property
            @internet_message_id
            ## 
            # The messageFingerprint property
            @message_fingerprint
            ## 
            # The messageReceivedDateTime property
            @message_received_date_time
            ## 
            # The messageSubject property
            @message_subject
            ## 
            # The networkMessageId property
            @network_message_id
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
            ## Gets the connectingIP property value. The connectingIP property
            ## @return a string
            ## 
            def connecting_i_p
                return @connecting_i_p
            end
            ## 
            ## Sets the connectingIP property value. The connectingIP property
            ## @param value Value to set for the connecting_i_p property.
            ## @return a void
            ## 
            def connecting_i_p=(value)
                @connecting_i_p = value
            end
            ## 
            ## Instantiates a new messageSecurityState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a message_security_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MessageSecurityState.new
            end
            ## 
            ## Gets the deliveryAction property value. The deliveryAction property
            ## @return a string
            ## 
            def delivery_action
                return @delivery_action
            end
            ## 
            ## Sets the deliveryAction property value. The deliveryAction property
            ## @param value Value to set for the delivery_action property.
            ## @return a void
            ## 
            def delivery_action=(value)
                @delivery_action = value
            end
            ## 
            ## Gets the deliveryLocation property value. The deliveryLocation property
            ## @return a string
            ## 
            def delivery_location
                return @delivery_location
            end
            ## 
            ## Sets the deliveryLocation property value. The deliveryLocation property
            ## @param value Value to set for the delivery_location property.
            ## @return a void
            ## 
            def delivery_location=(value)
                @delivery_location = value
            end
            ## 
            ## Gets the directionality property value. The directionality property
            ## @return a string
            ## 
            def directionality
                return @directionality
            end
            ## 
            ## Sets the directionality property value. The directionality property
            ## @param value Value to set for the directionality property.
            ## @return a void
            ## 
            def directionality=(value)
                @directionality = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "connectingIP" => lambda {|n| @connecting_i_p = n.get_string_value() },
                    "deliveryAction" => lambda {|n| @delivery_action = n.get_string_value() },
                    "deliveryLocation" => lambda {|n| @delivery_location = n.get_string_value() },
                    "directionality" => lambda {|n| @directionality = n.get_string_value() },
                    "internetMessageId" => lambda {|n| @internet_message_id = n.get_string_value() },
                    "messageFingerprint" => lambda {|n| @message_fingerprint = n.get_string_value() },
                    "messageReceivedDateTime" => lambda {|n| @message_received_date_time = n.get_date_time_value() },
                    "messageSubject" => lambda {|n| @message_subject = n.get_string_value() },
                    "networkMessageId" => lambda {|n| @network_message_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the internetMessageId property value. The internetMessageId property
            ## @return a string
            ## 
            def internet_message_id
                return @internet_message_id
            end
            ## 
            ## Sets the internetMessageId property value. The internetMessageId property
            ## @param value Value to set for the internet_message_id property.
            ## @return a void
            ## 
            def internet_message_id=(value)
                @internet_message_id = value
            end
            ## 
            ## Gets the messageFingerprint property value. The messageFingerprint property
            ## @return a string
            ## 
            def message_fingerprint
                return @message_fingerprint
            end
            ## 
            ## Sets the messageFingerprint property value. The messageFingerprint property
            ## @param value Value to set for the message_fingerprint property.
            ## @return a void
            ## 
            def message_fingerprint=(value)
                @message_fingerprint = value
            end
            ## 
            ## Gets the messageReceivedDateTime property value. The messageReceivedDateTime property
            ## @return a date_time
            ## 
            def message_received_date_time
                return @message_received_date_time
            end
            ## 
            ## Sets the messageReceivedDateTime property value. The messageReceivedDateTime property
            ## @param value Value to set for the message_received_date_time property.
            ## @return a void
            ## 
            def message_received_date_time=(value)
                @message_received_date_time = value
            end
            ## 
            ## Gets the messageSubject property value. The messageSubject property
            ## @return a string
            ## 
            def message_subject
                return @message_subject
            end
            ## 
            ## Sets the messageSubject property value. The messageSubject property
            ## @param value Value to set for the message_subject property.
            ## @return a void
            ## 
            def message_subject=(value)
                @message_subject = value
            end
            ## 
            ## Gets the networkMessageId property value. The networkMessageId property
            ## @return a string
            ## 
            def network_message_id
                return @network_message_id
            end
            ## 
            ## Sets the networkMessageId property value. The networkMessageId property
            ## @param value Value to set for the network_message_id property.
            ## @return a void
            ## 
            def network_message_id=(value)
                @network_message_id = value
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
                writer.write_string_value("connectingIP", @connecting_i_p)
                writer.write_string_value("deliveryAction", @delivery_action)
                writer.write_string_value("deliveryLocation", @delivery_location)
                writer.write_string_value("directionality", @directionality)
                writer.write_string_value("internetMessageId", @internet_message_id)
                writer.write_string_value("messageFingerprint", @message_fingerprint)
                writer.write_date_time_value("messageReceivedDateTime", @message_received_date_time)
                writer.write_string_value("messageSubject", @message_subject)
                writer.write_string_value("networkMessageId", @network_message_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
