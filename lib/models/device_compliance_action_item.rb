require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Scheduled Action Configuration
        class DeviceComplianceActionItem < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Scheduled Action Type Enum
            @action_type
            ## 
            # Number of hours to wait till the action will be enforced. Valid values 0 to 8760
            @grace_period_hours
            ## 
            # A list of group IDs to speicify who to CC this notification message to.
            @notification_message_c_c_list
            ## 
            # What notification Message template to use
            @notification_template_id
            ## 
            ## Gets the actionType property value. Scheduled Action Type Enum
            ## @return a device_compliance_action_type
            ## 
            def action_type
                return @action_type
            end
            ## 
            ## Sets the actionType property value. Scheduled Action Type Enum
            ## @param value Value to set for the action_type property.
            ## @return a void
            ## 
            def action_type=(value)
                @action_type = value
            end
            ## 
            ## Instantiates a new deviceComplianceActionItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_action_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceComplianceActionItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionType" => lambda {|n| @action_type = n.get_enum_value(MicrosoftGraph::Models::DeviceComplianceActionType) },
                    "gracePeriodHours" => lambda {|n| @grace_period_hours = n.get_number_value() },
                    "notificationMessageCCList" => lambda {|n| @notification_message_c_c_list = n.get_collection_of_primitive_values(String) },
                    "notificationTemplateId" => lambda {|n| @notification_template_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the gracePeriodHours property value. Number of hours to wait till the action will be enforced. Valid values 0 to 8760
            ## @return a integer
            ## 
            def grace_period_hours
                return @grace_period_hours
            end
            ## 
            ## Sets the gracePeriodHours property value. Number of hours to wait till the action will be enforced. Valid values 0 to 8760
            ## @param value Value to set for the grace_period_hours property.
            ## @return a void
            ## 
            def grace_period_hours=(value)
                @grace_period_hours = value
            end
            ## 
            ## Gets the notificationMessageCCList property value. A list of group IDs to speicify who to CC this notification message to.
            ## @return a string
            ## 
            def notification_message_c_c_list
                return @notification_message_c_c_list
            end
            ## 
            ## Sets the notificationMessageCCList property value. A list of group IDs to speicify who to CC this notification message to.
            ## @param value Value to set for the notification_message_c_c_list property.
            ## @return a void
            ## 
            def notification_message_c_c_list=(value)
                @notification_message_c_c_list = value
            end
            ## 
            ## Gets the notificationTemplateId property value. What notification Message template to use
            ## @return a string
            ## 
            def notification_template_id
                return @notification_template_id
            end
            ## 
            ## Sets the notificationTemplateId property value. What notification Message template to use
            ## @param value Value to set for the notification_template_id property.
            ## @return a void
            ## 
            def notification_template_id=(value)
                @notification_template_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("actionType", @action_type)
                writer.write_number_value("gracePeriodHours", @grace_period_hours)
                writer.write_collection_of_primitive_values("notificationMessageCCList", @notification_message_c_c_list)
                writer.write_string_value("notificationTemplateId", @notification_template_id)
            end
        end
    end
end
