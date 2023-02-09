require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRoleManagementPolicyNotificationRule < MicrosoftGraph::Models::UnifiedRoleManagementPolicyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether a default recipient will receive the notification email.
            @is_default_recipients_enabled
            ## 
            # The level of notification. The possible values are None, Critical, All.
            @notification_level
            ## 
            # The list of recipients of the email notifications.
            @notification_recipients
            ## 
            # The type of notification. Only Email is supported.
            @notification_type
            ## 
            # The type of recipient of the notification. The possible values are Requestor, Approver, Admin.
            @recipient_type
            ## 
            ## Instantiates a new UnifiedRoleManagementPolicyNotificationRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_policy_notification_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementPolicyNotificationRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isDefaultRecipientsEnabled" => lambda {|n| @is_default_recipients_enabled = n.get_boolean_value() },
                    "notificationLevel" => lambda {|n| @notification_level = n.get_string_value() },
                    "notificationRecipients" => lambda {|n| @notification_recipients = n.get_collection_of_primitive_values(String) },
                    "notificationType" => lambda {|n| @notification_type = n.get_string_value() },
                    "recipientType" => lambda {|n| @recipient_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefaultRecipientsEnabled property value. Indicates whether a default recipient will receive the notification email.
            ## @return a boolean
            ## 
            def is_default_recipients_enabled
                return @is_default_recipients_enabled
            end
            ## 
            ## Sets the isDefaultRecipientsEnabled property value. Indicates whether a default recipient will receive the notification email.
            ## @param value Value to set for the is_default_recipients_enabled property.
            ## @return a void
            ## 
            def is_default_recipients_enabled=(value)
                @is_default_recipients_enabled = value
            end
            ## 
            ## Gets the notificationLevel property value. The level of notification. The possible values are None, Critical, All.
            ## @return a string
            ## 
            def notification_level
                return @notification_level
            end
            ## 
            ## Sets the notificationLevel property value. The level of notification. The possible values are None, Critical, All.
            ## @param value Value to set for the notification_level property.
            ## @return a void
            ## 
            def notification_level=(value)
                @notification_level = value
            end
            ## 
            ## Gets the notificationRecipients property value. The list of recipients of the email notifications.
            ## @return a string
            ## 
            def notification_recipients
                return @notification_recipients
            end
            ## 
            ## Sets the notificationRecipients property value. The list of recipients of the email notifications.
            ## @param value Value to set for the notification_recipients property.
            ## @return a void
            ## 
            def notification_recipients=(value)
                @notification_recipients = value
            end
            ## 
            ## Gets the notificationType property value. The type of notification. Only Email is supported.
            ## @return a string
            ## 
            def notification_type
                return @notification_type
            end
            ## 
            ## Sets the notificationType property value. The type of notification. Only Email is supported.
            ## @param value Value to set for the notification_type property.
            ## @return a void
            ## 
            def notification_type=(value)
                @notification_type = value
            end
            ## 
            ## Gets the recipientType property value. The type of recipient of the notification. The possible values are Requestor, Approver, Admin.
            ## @return a string
            ## 
            def recipient_type
                return @recipient_type
            end
            ## 
            ## Sets the recipientType property value. The type of recipient of the notification. The possible values are Requestor, Approver, Admin.
            ## @param value Value to set for the recipient_type property.
            ## @return a void
            ## 
            def recipient_type=(value)
                @recipient_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isDefaultRecipientsEnabled", @is_default_recipients_enabled)
                writer.write_string_value("notificationLevel", @notification_level)
                writer.write_collection_of_primitive_values("notificationRecipients", @notification_recipients)
                writer.write_string_value("notificationType", @notification_type)
                writer.write_string_value("recipientType", @recipient_type)
            end
        end
    end
end
