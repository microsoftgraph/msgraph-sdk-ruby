require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # This is the base class for Compliance policy. Compliance policies are platform specific and individual per-platform compliance policies inherit from here. 
        class DeviceCompliancePolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of assignments for this compliance policy.
            @assignments
            ## 
            # DateTime the object was created.
            @created_date_time
            ## 
            # Admin provided description of the Device Configuration.
            @description
            ## 
            # Compliance Setting State Device Summary
            @device_setting_state_summaries
            ## 
            # Device compliance devices status overview
            @device_status_overview
            ## 
            # List of DeviceComplianceDeviceStatus.
            @device_statuses
            ## 
            # Admin provided name of the device configuration.
            @display_name
            ## 
            # DateTime the object was last modified.
            @last_modified_date_time
            ## 
            # The list of scheduled action per rule for this compliance policy. This is a required property when creating any individual per-platform compliance policies.
            @scheduled_actions_for_rule
            ## 
            # Device compliance users status overview
            @user_status_overview
            ## 
            # List of DeviceComplianceUserStatus.
            @user_statuses
            ## 
            # Version of the device configuration.
            @version
            ## 
            ## Gets the assignments property value. The collection of assignments for this compliance policy.
            ## @return a device_compliance_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The collection of assignments for this compliance policy.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new deviceCompliancePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. DateTime the object was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. DateTime the object was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidCompliancePolicy"
                            return AndroidCompliancePolicy.new
                        when "#microsoft.graph.androidWorkProfileCompliancePolicy"
                            return AndroidWorkProfileCompliancePolicy.new
                        when "#microsoft.graph.iosCompliancePolicy"
                            return IosCompliancePolicy.new
                        when "#microsoft.graph.macOSCompliancePolicy"
                            return MacOSCompliancePolicy.new
                        when "#microsoft.graph.windows10CompliancePolicy"
                            return Windows10CompliancePolicy.new
                        when "#microsoft.graph.windows10MobileCompliancePolicy"
                            return Windows10MobileCompliancePolicy.new
                        when "#microsoft.graph.windows81CompliancePolicy"
                            return Windows81CompliancePolicy.new
                        when "#microsoft.graph.windowsPhone81CompliancePolicy"
                            return WindowsPhone81CompliancePolicy.new
                    end
                end
                return DeviceCompliancePolicy.new
            end
            ## 
            ## Gets the description property value. Admin provided description of the Device Configuration.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Admin provided description of the Device Configuration.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceSettingStateSummaries property value. Compliance Setting State Device Summary
            ## @return a setting_state_device_summary
            ## 
            def device_setting_state_summaries
                return @device_setting_state_summaries
            end
            ## 
            ## Sets the deviceSettingStateSummaries property value. Compliance Setting State Device Summary
            ## @param value Value to set for the device_setting_state_summaries property.
            ## @return a void
            ## 
            def device_setting_state_summaries=(value)
                @device_setting_state_summaries = value
            end
            ## 
            ## Gets the deviceStatusOverview property value. Device compliance devices status overview
            ## @return a device_compliance_device_overview
            ## 
            def device_status_overview
                return @device_status_overview
            end
            ## 
            ## Sets the deviceStatusOverview property value. Device compliance devices status overview
            ## @param value Value to set for the device_status_overview property.
            ## @return a void
            ## 
            def device_status_overview=(value)
                @device_status_overview = value
            end
            ## 
            ## Gets the deviceStatuses property value. List of DeviceComplianceDeviceStatus.
            ## @return a device_compliance_device_status
            ## 
            def device_statuses
                return @device_statuses
            end
            ## 
            ## Sets the deviceStatuses property value. List of DeviceComplianceDeviceStatus.
            ## @param value Value to set for the device_statuses property.
            ## @return a void
            ## 
            def device_statuses=(value)
                @device_statuses = value
            end
            ## 
            ## Gets the displayName property value. Admin provided name of the device configuration.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Admin provided name of the device configuration.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceCompliancePolicyAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceSettingStateSummaries" => lambda {|n| @device_setting_state_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SettingStateDeviceSummary.create_from_discriminator_value(pn) }) },
                    "deviceStatusOverview" => lambda {|n| @device_status_overview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceComplianceDeviceOverview.create_from_discriminator_value(pn) }) },
                    "deviceStatuses" => lambda {|n| @device_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceComplianceDeviceStatus.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "scheduledActionsForRule" => lambda {|n| @scheduled_actions_for_rule = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceComplianceScheduledActionForRule.create_from_discriminator_value(pn) }) },
                    "userStatusOverview" => lambda {|n| @user_status_overview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceComplianceUserOverview.create_from_discriminator_value(pn) }) },
                    "userStatuses" => lambda {|n| @user_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceComplianceUserStatus.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. DateTime the object was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. DateTime the object was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the scheduledActionsForRule property value. The list of scheduled action per rule for this compliance policy. This is a required property when creating any individual per-platform compliance policies.
            ## @return a device_compliance_scheduled_action_for_rule
            ## 
            def scheduled_actions_for_rule
                return @scheduled_actions_for_rule
            end
            ## 
            ## Sets the scheduledActionsForRule property value. The list of scheduled action per rule for this compliance policy. This is a required property when creating any individual per-platform compliance policies.
            ## @param value Value to set for the scheduled_actions_for_rule property.
            ## @return a void
            ## 
            def scheduled_actions_for_rule=(value)
                @scheduled_actions_for_rule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("deviceSettingStateSummaries", @device_setting_state_summaries)
                writer.write_object_value("deviceStatusOverview", @device_status_overview)
                writer.write_collection_of_object_values("deviceStatuses", @device_statuses)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_object_values("scheduledActionsForRule", @scheduled_actions_for_rule)
                writer.write_object_value("userStatusOverview", @user_status_overview)
                writer.write_collection_of_object_values("userStatuses", @user_statuses)
                writer.write_number_value("version", @version)
            end
            ## 
            ## Gets the userStatusOverview property value. Device compliance users status overview
            ## @return a device_compliance_user_overview
            ## 
            def user_status_overview
                return @user_status_overview
            end
            ## 
            ## Sets the userStatusOverview property value. Device compliance users status overview
            ## @param value Value to set for the user_status_overview property.
            ## @return a void
            ## 
            def user_status_overview=(value)
                @user_status_overview = value
            end
            ## 
            ## Gets the userStatuses property value. List of DeviceComplianceUserStatus.
            ## @return a device_compliance_user_status
            ## 
            def user_statuses
                return @user_statuses
            end
            ## 
            ## Sets the userStatuses property value. List of DeviceComplianceUserStatus.
            ## @param value Value to set for the user_statuses property.
            ## @return a void
            ## 
            def user_statuses=(value)
                @user_statuses = value
            end
            ## 
            ## Gets the version property value. Version of the device configuration.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the device configuration.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
