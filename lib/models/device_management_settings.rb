require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceManagementSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of days a device is allowed to go without checking in to remain compliant.
            @device_compliance_checkin_threshold_days
            ## 
            # Is feature enabled or not for scheduled action for rule.
            @is_scheduled_action_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Device should be noncompliant when there is no compliance policy targeted when this is true
            @secure_by_default
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
            ## Instantiates a new deviceManagementSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettings.new
            end
            ## 
            ## Gets the deviceComplianceCheckinThresholdDays property value. The number of days a device is allowed to go without checking in to remain compliant.
            ## @return a integer
            ## 
            def device_compliance_checkin_threshold_days
                return @device_compliance_checkin_threshold_days
            end
            ## 
            ## Sets the deviceComplianceCheckinThresholdDays property value. The number of days a device is allowed to go without checking in to remain compliant.
            ## @param value Value to set for the device_compliance_checkin_threshold_days property.
            ## @return a void
            ## 
            def device_compliance_checkin_threshold_days=(value)
                @device_compliance_checkin_threshold_days = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceComplianceCheckinThresholdDays" => lambda {|n| @device_compliance_checkin_threshold_days = n.get_number_value() },
                    "isScheduledActionEnabled" => lambda {|n| @is_scheduled_action_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "secureByDefault" => lambda {|n| @secure_by_default = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the isScheduledActionEnabled property value. Is feature enabled or not for scheduled action for rule.
            ## @return a boolean
            ## 
            def is_scheduled_action_enabled
                return @is_scheduled_action_enabled
            end
            ## 
            ## Sets the isScheduledActionEnabled property value. Is feature enabled or not for scheduled action for rule.
            ## @param value Value to set for the is_scheduled_action_enabled property.
            ## @return a void
            ## 
            def is_scheduled_action_enabled=(value)
                @is_scheduled_action_enabled = value
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
            ## Gets the secureByDefault property value. Device should be noncompliant when there is no compliance policy targeted when this is true
            ## @return a boolean
            ## 
            def secure_by_default
                return @secure_by_default
            end
            ## 
            ## Sets the secureByDefault property value. Device should be noncompliant when there is no compliance policy targeted when this is true
            ## @param value Value to set for the secure_by_default property.
            ## @return a void
            ## 
            def secure_by_default=(value)
                @secure_by_default = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("deviceComplianceCheckinThresholdDays", @device_compliance_checkin_threshold_days)
                writer.write_boolean_value("isScheduledActionEnabled", @is_scheduled_action_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("secureByDefault", @secure_by_default)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
