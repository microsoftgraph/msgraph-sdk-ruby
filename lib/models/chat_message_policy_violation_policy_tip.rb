require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessagePolicyViolationPolicyTip
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The URL a user can visit to read about the data loss prevention policies for the organization. (ie, policies about what users shouldn't say in chats)
            @compliance_url
            ## 
            # Explanatory text shown to the sender of the message.
            @general_text
            ## 
            # The list of improper data in the message that was detected by the data loss prevention app. Each DLP app defines its own conditions, examples include 'Credit Card Number' and 'Social Security Number'.
            @matched_condition_descriptions
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
            ## Gets the complianceUrl property value. The URL a user can visit to read about the data loss prevention policies for the organization. (ie, policies about what users shouldn't say in chats)
            ## @return a string
            ## 
            def compliance_url
                return @compliance_url
            end
            ## 
            ## Sets the complianceUrl property value. The URL a user can visit to read about the data loss prevention policies for the organization. (ie, policies about what users shouldn't say in chats)
            ## @param value Value to set for the compliance_url property.
            ## @return a void
            ## 
            def compliance_url=(value)
                @compliance_url = value
            end
            ## 
            ## Instantiates a new chatMessagePolicyViolationPolicyTip and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_policy_violation_policy_tip
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessagePolicyViolationPolicyTip.new
            end
            ## 
            ## Gets the generalText property value. Explanatory text shown to the sender of the message.
            ## @return a string
            ## 
            def general_text
                return @general_text
            end
            ## 
            ## Sets the generalText property value. Explanatory text shown to the sender of the message.
            ## @param value Value to set for the general_text property.
            ## @return a void
            ## 
            def general_text=(value)
                @general_text = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "complianceUrl" => lambda {|n| @compliance_url = n.get_string_value() },
                    "generalText" => lambda {|n| @general_text = n.get_string_value() },
                    "matchedConditionDescriptions" => lambda {|n| @matched_condition_descriptions = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the matchedConditionDescriptions property value. The list of improper data in the message that was detected by the data loss prevention app. Each DLP app defines its own conditions, examples include 'Credit Card Number' and 'Social Security Number'.
            ## @return a string
            ## 
            def matched_condition_descriptions
                return @matched_condition_descriptions
            end
            ## 
            ## Sets the matchedConditionDescriptions property value. The list of improper data in the message that was detected by the data loss prevention app. Each DLP app defines its own conditions, examples include 'Credit Card Number' and 'Social Security Number'.
            ## @param value Value to set for the matched_condition_descriptions property.
            ## @return a void
            ## 
            def matched_condition_descriptions=(value)
                @matched_condition_descriptions = value
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
                writer.write_string_value("complianceUrl", @compliance_url)
                writer.write_string_value("generalText", @general_text)
                writer.write_collection_of_primitive_values("matchedConditionDescriptions", @matched_condition_descriptions)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
