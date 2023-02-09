require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsDefenderAdvancedThreatProtectionConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Windows Defender AdvancedThreatProtection 'Allow Sample Sharing' Rule
            @allow_sample_sharing
            ## 
            # Expedite Windows Defender Advanced Threat Protection telemetry reporting frequency.
            @enable_expedited_telemetry_reporting
            ## 
            ## Gets the allowSampleSharing property value. Windows Defender AdvancedThreatProtection 'Allow Sample Sharing' Rule
            ## @return a boolean
            ## 
            def allow_sample_sharing
                return @allow_sample_sharing
            end
            ## 
            ## Sets the allowSampleSharing property value. Windows Defender AdvancedThreatProtection 'Allow Sample Sharing' Rule
            ## @param value Value to set for the allow_sample_sharing property.
            ## @return a void
            ## 
            def allow_sample_sharing=(value)
                @allow_sample_sharing = value
            end
            ## 
            ## Instantiates a new WindowsDefenderAdvancedThreatProtectionConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_defender_advanced_threat_protection_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDefenderAdvancedThreatProtectionConfiguration.new
            end
            ## 
            ## Gets the enableExpeditedTelemetryReporting property value. Expedite Windows Defender Advanced Threat Protection telemetry reporting frequency.
            ## @return a boolean
            ## 
            def enable_expedited_telemetry_reporting
                return @enable_expedited_telemetry_reporting
            end
            ## 
            ## Sets the enableExpeditedTelemetryReporting property value. Expedite Windows Defender Advanced Threat Protection telemetry reporting frequency.
            ## @param value Value to set for the enable_expedited_telemetry_reporting property.
            ## @return a void
            ## 
            def enable_expedited_telemetry_reporting=(value)
                @enable_expedited_telemetry_reporting = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowSampleSharing" => lambda {|n| @allow_sample_sharing = n.get_boolean_value() },
                    "enableExpeditedTelemetryReporting" => lambda {|n| @enable_expedited_telemetry_reporting = n.get_boolean_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowSampleSharing", @allow_sample_sharing)
                writer.write_boolean_value("enableExpeditedTelemetryReporting", @enable_expedited_telemetry_reporting)
            end
        end
    end
end
