require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Hardware information of a given device.
        class DeviceProtectionOverview
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates number of devices reporting as clean
            @clean_device_count
            ## 
            # Indicates number of devices with critical failures
            @critical_failures_device_count
            ## 
            # Indicates number of devices with inactive threat agent
            @inactive_threat_agent_device_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates number of devices pending full scan
            @pending_full_scan_device_count
            ## 
            # Indicates number of devices with pending manual steps
            @pending_manual_steps_device_count
            ## 
            # Indicates number of pending offline scan devices
            @pending_offline_scan_device_count
            ## 
            # Indicates the number of devices that have a pending full scan. Valid values -2147483648 to 2147483647
            @pending_quick_scan_device_count
            ## 
            # Indicates number of devices pending restart
            @pending_restart_device_count
            ## 
            # Indicates number of devices with an old signature
            @pending_signature_update_device_count
            ## 
            # Total device count.
            @total_reported_device_count
            ## 
            # Indicates number of devices with threat agent state as unknown
            @unknown_state_threat_agent_device_count
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the cleanDeviceCount property value. Indicates number of devices reporting as clean
            ## @return a integer
            ## 
            def clean_device_count
                return @clean_device_count
            end
            ## 
            ## Sets the cleanDeviceCount property value. Indicates number of devices reporting as clean
            ## @param value Value to set for the cleanDeviceCount property.
            ## @return a void
            ## 
            def clean_device_count=(value)
                @clean_device_count = value
            end
            ## 
            ## Instantiates a new deviceProtectionOverview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_protection_overview
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceProtectionOverview.new
            end
            ## 
            ## Gets the criticalFailuresDeviceCount property value. Indicates number of devices with critical failures
            ## @return a integer
            ## 
            def critical_failures_device_count
                return @critical_failures_device_count
            end
            ## 
            ## Sets the criticalFailuresDeviceCount property value. Indicates number of devices with critical failures
            ## @param value Value to set for the criticalFailuresDeviceCount property.
            ## @return a void
            ## 
            def critical_failures_device_count=(value)
                @critical_failures_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "cleanDeviceCount" => lambda {|n| @clean_device_count = n.get_number_value() },
                    "criticalFailuresDeviceCount" => lambda {|n| @critical_failures_device_count = n.get_number_value() },
                    "inactiveThreatAgentDeviceCount" => lambda {|n| @inactive_threat_agent_device_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "pendingFullScanDeviceCount" => lambda {|n| @pending_full_scan_device_count = n.get_number_value() },
                    "pendingManualStepsDeviceCount" => lambda {|n| @pending_manual_steps_device_count = n.get_number_value() },
                    "pendingOfflineScanDeviceCount" => lambda {|n| @pending_offline_scan_device_count = n.get_number_value() },
                    "pendingQuickScanDeviceCount" => lambda {|n| @pending_quick_scan_device_count = n.get_number_value() },
                    "pendingRestartDeviceCount" => lambda {|n| @pending_restart_device_count = n.get_number_value() },
                    "pendingSignatureUpdateDeviceCount" => lambda {|n| @pending_signature_update_device_count = n.get_number_value() },
                    "totalReportedDeviceCount" => lambda {|n| @total_reported_device_count = n.get_number_value() },
                    "unknownStateThreatAgentDeviceCount" => lambda {|n| @unknown_state_threat_agent_device_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the inactiveThreatAgentDeviceCount property value. Indicates number of devices with inactive threat agent
            ## @return a integer
            ## 
            def inactive_threat_agent_device_count
                return @inactive_threat_agent_device_count
            end
            ## 
            ## Sets the inactiveThreatAgentDeviceCount property value. Indicates number of devices with inactive threat agent
            ## @param value Value to set for the inactiveThreatAgentDeviceCount property.
            ## @return a void
            ## 
            def inactive_threat_agent_device_count=(value)
                @inactive_threat_agent_device_count = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the pendingFullScanDeviceCount property value. Indicates number of devices pending full scan
            ## @return a integer
            ## 
            def pending_full_scan_device_count
                return @pending_full_scan_device_count
            end
            ## 
            ## Sets the pendingFullScanDeviceCount property value. Indicates number of devices pending full scan
            ## @param value Value to set for the pendingFullScanDeviceCount property.
            ## @return a void
            ## 
            def pending_full_scan_device_count=(value)
                @pending_full_scan_device_count = value
            end
            ## 
            ## Gets the pendingManualStepsDeviceCount property value. Indicates number of devices with pending manual steps
            ## @return a integer
            ## 
            def pending_manual_steps_device_count
                return @pending_manual_steps_device_count
            end
            ## 
            ## Sets the pendingManualStepsDeviceCount property value. Indicates number of devices with pending manual steps
            ## @param value Value to set for the pendingManualStepsDeviceCount property.
            ## @return a void
            ## 
            def pending_manual_steps_device_count=(value)
                @pending_manual_steps_device_count = value
            end
            ## 
            ## Gets the pendingOfflineScanDeviceCount property value. Indicates number of pending offline scan devices
            ## @return a integer
            ## 
            def pending_offline_scan_device_count
                return @pending_offline_scan_device_count
            end
            ## 
            ## Sets the pendingOfflineScanDeviceCount property value. Indicates number of pending offline scan devices
            ## @param value Value to set for the pendingOfflineScanDeviceCount property.
            ## @return a void
            ## 
            def pending_offline_scan_device_count=(value)
                @pending_offline_scan_device_count = value
            end
            ## 
            ## Gets the pendingQuickScanDeviceCount property value. Indicates the number of devices that have a pending full scan. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def pending_quick_scan_device_count
                return @pending_quick_scan_device_count
            end
            ## 
            ## Sets the pendingQuickScanDeviceCount property value. Indicates the number of devices that have a pending full scan. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the pendingQuickScanDeviceCount property.
            ## @return a void
            ## 
            def pending_quick_scan_device_count=(value)
                @pending_quick_scan_device_count = value
            end
            ## 
            ## Gets the pendingRestartDeviceCount property value. Indicates number of devices pending restart
            ## @return a integer
            ## 
            def pending_restart_device_count
                return @pending_restart_device_count
            end
            ## 
            ## Sets the pendingRestartDeviceCount property value. Indicates number of devices pending restart
            ## @param value Value to set for the pendingRestartDeviceCount property.
            ## @return a void
            ## 
            def pending_restart_device_count=(value)
                @pending_restart_device_count = value
            end
            ## 
            ## Gets the pendingSignatureUpdateDeviceCount property value. Indicates number of devices with an old signature
            ## @return a integer
            ## 
            def pending_signature_update_device_count
                return @pending_signature_update_device_count
            end
            ## 
            ## Sets the pendingSignatureUpdateDeviceCount property value. Indicates number of devices with an old signature
            ## @param value Value to set for the pendingSignatureUpdateDeviceCount property.
            ## @return a void
            ## 
            def pending_signature_update_device_count=(value)
                @pending_signature_update_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("cleanDeviceCount", @clean_device_count)
                writer.write_number_value("criticalFailuresDeviceCount", @critical_failures_device_count)
                writer.write_number_value("inactiveThreatAgentDeviceCount", @inactive_threat_agent_device_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("pendingFullScanDeviceCount", @pending_full_scan_device_count)
                writer.write_number_value("pendingManualStepsDeviceCount", @pending_manual_steps_device_count)
                writer.write_number_value("pendingOfflineScanDeviceCount", @pending_offline_scan_device_count)
                writer.write_number_value("pendingQuickScanDeviceCount", @pending_quick_scan_device_count)
                writer.write_number_value("pendingRestartDeviceCount", @pending_restart_device_count)
                writer.write_number_value("pendingSignatureUpdateDeviceCount", @pending_signature_update_device_count)
                writer.write_number_value("totalReportedDeviceCount", @total_reported_device_count)
                writer.write_number_value("unknownStateThreatAgentDeviceCount", @unknown_state_threat_agent_device_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalReportedDeviceCount property value. Total device count.
            ## @return a integer
            ## 
            def total_reported_device_count
                return @total_reported_device_count
            end
            ## 
            ## Sets the totalReportedDeviceCount property value. Total device count.
            ## @param value Value to set for the totalReportedDeviceCount property.
            ## @return a void
            ## 
            def total_reported_device_count=(value)
                @total_reported_device_count = value
            end
            ## 
            ## Gets the unknownStateThreatAgentDeviceCount property value. Indicates number of devices with threat agent state as unknown
            ## @return a integer
            ## 
            def unknown_state_threat_agent_device_count
                return @unknown_state_threat_agent_device_count
            end
            ## 
            ## Sets the unknownStateThreatAgentDeviceCount property value. Indicates number of devices with threat agent state as unknown
            ## @param value Value to set for the unknownStateThreatAgentDeviceCount property.
            ## @return a void
            ## 
            def unknown_state_threat_agent_device_count=(value)
                @unknown_state_threat_agent_device_count = value
            end
        end
    end
end
