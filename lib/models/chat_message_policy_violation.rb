require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessagePolicyViolation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The action taken by the DLP provider on the message with sensitive content. Supported values are: NoneNotifySender -- Inform the sender of the violation but allow readers to read the message.BlockAccess -- Block readers from reading the message.BlockAccessExternal -- Block users outside the organization from reading the message, while allowing users within the organization to read the message.
            @dlp_action
            ## 
            # Justification text provided by the sender of the message when overriding a policy violation.
            @justification_text
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Information to display to the message sender about why the message was flagged as a violation.
            @policy_tip
            ## 
            # Indicates the action taken by the user on a message blocked by the DLP provider. Supported values are: NoneOverrideReportFalsePositiveWhen the DLP provider is updating the message for blocking sensitive content, userAction is not required.
            @user_action
            ## 
            # Indicates what actions the sender may take in response to the policy violation. Supported values are: NoneAllowFalsePositiveOverride -- Allows the sender to declare the policyViolation to be an error in the DLP app and its rules, and allow readers to see the message again if the dlpAction had hidden it.AllowOverrideWithoutJustification -- Allows the sender to overriide the DLP violation and allow readers to see the message again if the dlpAction had hidden it, without needing to provide an explanation for doing so. AllowOverrideWithJustification -- Allows the sender to overriide the DLP violation and allow readers to see the message again if the dlpAction had hidden it, after providing an explanation for doing so.AllowOverrideWithoutJustification and AllowOverrideWithJustification are mutually exclusive.
            @verdict_details
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
            ## Instantiates a new chatMessagePolicyViolation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_policy_violation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessagePolicyViolation.new
            end
            ## 
            ## Gets the dlpAction property value. The action taken by the DLP provider on the message with sensitive content. Supported values are: NoneNotifySender -- Inform the sender of the violation but allow readers to read the message.BlockAccess -- Block readers from reading the message.BlockAccessExternal -- Block users outside the organization from reading the message, while allowing users within the organization to read the message.
            ## @return a chat_message_policy_violation_dlp_action_types
            ## 
            def dlp_action
                return @dlp_action
            end
            ## 
            ## Sets the dlpAction property value. The action taken by the DLP provider on the message with sensitive content. Supported values are: NoneNotifySender -- Inform the sender of the violation but allow readers to read the message.BlockAccess -- Block readers from reading the message.BlockAccessExternal -- Block users outside the organization from reading the message, while allowing users within the organization to read the message.
            ## @param value Value to set for the dlp_action property.
            ## @return a void
            ## 
            def dlp_action=(value)
                @dlp_action = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dlpAction" => lambda {|n| @dlp_action = n.get_enum_value(MicrosoftGraph::Models::ChatMessagePolicyViolationDlpActionTypes) },
                    "justificationText" => lambda {|n| @justification_text = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyTip" => lambda {|n| @policy_tip = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessagePolicyViolationPolicyTip.create_from_discriminator_value(pn) }) },
                    "userAction" => lambda {|n| @user_action = n.get_enum_value(MicrosoftGraph::Models::ChatMessagePolicyViolationUserActionTypes) },
                    "verdictDetails" => lambda {|n| @verdict_details = n.get_enum_value(MicrosoftGraph::Models::ChatMessagePolicyViolationVerdictDetailsTypes) },
                }
            end
            ## 
            ## Gets the justificationText property value. Justification text provided by the sender of the message when overriding a policy violation.
            ## @return a string
            ## 
            def justification_text
                return @justification_text
            end
            ## 
            ## Sets the justificationText property value. Justification text provided by the sender of the message when overriding a policy violation.
            ## @param value Value to set for the justification_text property.
            ## @return a void
            ## 
            def justification_text=(value)
                @justification_text = value
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
            ## Gets the policyTip property value. Information to display to the message sender about why the message was flagged as a violation.
            ## @return a chat_message_policy_violation_policy_tip
            ## 
            def policy_tip
                return @policy_tip
            end
            ## 
            ## Sets the policyTip property value. Information to display to the message sender about why the message was flagged as a violation.
            ## @param value Value to set for the policy_tip property.
            ## @return a void
            ## 
            def policy_tip=(value)
                @policy_tip = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("dlpAction", @dlp_action)
                writer.write_string_value("justificationText", @justification_text)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("policyTip", @policy_tip)
                writer.write_enum_value("userAction", @user_action)
                writer.write_enum_value("verdictDetails", @verdict_details)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userAction property value. Indicates the action taken by the user on a message blocked by the DLP provider. Supported values are: NoneOverrideReportFalsePositiveWhen the DLP provider is updating the message for blocking sensitive content, userAction is not required.
            ## @return a chat_message_policy_violation_user_action_types
            ## 
            def user_action
                return @user_action
            end
            ## 
            ## Sets the userAction property value. Indicates the action taken by the user on a message blocked by the DLP provider. Supported values are: NoneOverrideReportFalsePositiveWhen the DLP provider is updating the message for blocking sensitive content, userAction is not required.
            ## @param value Value to set for the user_action property.
            ## @return a void
            ## 
            def user_action=(value)
                @user_action = value
            end
            ## 
            ## Gets the verdictDetails property value. Indicates what actions the sender may take in response to the policy violation. Supported values are: NoneAllowFalsePositiveOverride -- Allows the sender to declare the policyViolation to be an error in the DLP app and its rules, and allow readers to see the message again if the dlpAction had hidden it.AllowOverrideWithoutJustification -- Allows the sender to overriide the DLP violation and allow readers to see the message again if the dlpAction had hidden it, without needing to provide an explanation for doing so. AllowOverrideWithJustification -- Allows the sender to overriide the DLP violation and allow readers to see the message again if the dlpAction had hidden it, after providing an explanation for doing so.AllowOverrideWithoutJustification and AllowOverrideWithJustification are mutually exclusive.
            ## @return a chat_message_policy_violation_verdict_details_types
            ## 
            def verdict_details
                return @verdict_details
            end
            ## 
            ## Sets the verdictDetails property value. Indicates what actions the sender may take in response to the policy violation. Supported values are: NoneAllowFalsePositiveOverride -- Allows the sender to declare the policyViolation to be an error in the DLP app and its rules, and allow readers to see the message again if the dlpAction had hidden it.AllowOverrideWithoutJustification -- Allows the sender to overriide the DLP violation and allow readers to see the message again if the dlpAction had hidden it, without needing to provide an explanation for doing so. AllowOverrideWithJustification -- Allows the sender to overriide the DLP violation and allow readers to see the message again if the dlpAction had hidden it, after providing an explanation for doing so.AllowOverrideWithoutJustification and AllowOverrideWithJustification are mutually exclusive.
            ## @param value Value to set for the verdict_details property.
            ## @return a void
            ## 
            def verdict_details=(value)
                @verdict_details = value
            end
        end
    end
end
