require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ManagedDeviceOverview < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Distribution of Exchange Access State in Intune
            @device_exchange_access_state_summary
            ## 
            # Device operating system summary.
            @device_operating_system_summary
            ## 
            # The number of devices enrolled in both MDM and EAS
            @dual_enrolled_device_count
            ## 
            # Total enrolled device count. Does not include PC devices managed via Intune PC Agent
            @enrolled_device_count
            ## 
            # The number of devices enrolled in MDM
            @mdm_enrolled_count
            ## 
            ## Instantiates a new managedDeviceOverview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_overview
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDeviceOverview.new
            end
            ## 
            ## Gets the deviceExchangeAccessStateSummary property value. Distribution of Exchange Access State in Intune
            ## @return a device_exchange_access_state_summary
            ## 
            def device_exchange_access_state_summary
                return @device_exchange_access_state_summary
            end
            ## 
            ## Sets the deviceExchangeAccessStateSummary property value. Distribution of Exchange Access State in Intune
            ## @param value Value to set for the device_exchange_access_state_summary property.
            ## @return a void
            ## 
            def device_exchange_access_state_summary=(value)
                @device_exchange_access_state_summary = value
            end
            ## 
            ## Gets the deviceOperatingSystemSummary property value. Device operating system summary.
            ## @return a device_operating_system_summary
            ## 
            def device_operating_system_summary
                return @device_operating_system_summary
            end
            ## 
            ## Sets the deviceOperatingSystemSummary property value. Device operating system summary.
            ## @param value Value to set for the device_operating_system_summary property.
            ## @return a void
            ## 
            def device_operating_system_summary=(value)
                @device_operating_system_summary = value
            end
            ## 
            ## Gets the dualEnrolledDeviceCount property value. The number of devices enrolled in both MDM and EAS
            ## @return a integer
            ## 
            def dual_enrolled_device_count
                return @dual_enrolled_device_count
            end
            ## 
            ## Sets the dualEnrolledDeviceCount property value. The number of devices enrolled in both MDM and EAS
            ## @param value Value to set for the dual_enrolled_device_count property.
            ## @return a void
            ## 
            def dual_enrolled_device_count=(value)
                @dual_enrolled_device_count = value
            end
            ## 
            ## Gets the enrolledDeviceCount property value. Total enrolled device count. Does not include PC devices managed via Intune PC Agent
            ## @return a integer
            ## 
            def enrolled_device_count
                return @enrolled_device_count
            end
            ## 
            ## Sets the enrolledDeviceCount property value. Total enrolled device count. Does not include PC devices managed via Intune PC Agent
            ## @param value Value to set for the enrolled_device_count property.
            ## @return a void
            ## 
            def enrolled_device_count=(value)
                @enrolled_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceExchangeAccessStateSummary" => lambda {|n| @device_exchange_access_state_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceExchangeAccessStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceOperatingSystemSummary" => lambda {|n| @device_operating_system_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceOperatingSystemSummary.create_from_discriminator_value(pn) }) },
                    "dualEnrolledDeviceCount" => lambda {|n| @dual_enrolled_device_count = n.get_number_value() },
                    "enrolledDeviceCount" => lambda {|n| @enrolled_device_count = n.get_number_value() },
                    "mdmEnrolledCount" => lambda {|n| @mdm_enrolled_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the mdmEnrolledCount property value. The number of devices enrolled in MDM
            ## @return a integer
            ## 
            def mdm_enrolled_count
                return @mdm_enrolled_count
            end
            ## 
            ## Sets the mdmEnrolledCount property value. The number of devices enrolled in MDM
            ## @param value Value to set for the mdm_enrolled_count property.
            ## @return a void
            ## 
            def mdm_enrolled_count=(value)
                @mdm_enrolled_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("deviceExchangeAccessStateSummary", @device_exchange_access_state_summary)
                writer.write_object_value("deviceOperatingSystemSummary", @device_operating_system_summary)
                writer.write_number_value("dualEnrolledDeviceCount", @dual_enrolled_device_count)
                writer.write_number_value("enrolledDeviceCount", @enrolled_device_count)
                writer.write_number_value("mdmEnrolledCount", @mdm_enrolled_count)
            end
        end
    end
end
