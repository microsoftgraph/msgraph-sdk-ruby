require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceEnrollmentPlatformRestrictionsConfiguration < MicrosoftGraph::Models::DeviceEnrollmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Android restrictions based on platform, platform operating system version, and device ownership
            @android_restriction
            ## 
            # Ios restrictions based on platform, platform operating system version, and device ownership
            @ios_restriction
            ## 
            # Mac restrictions based on platform, platform operating system version, and device ownership
            @mac_o_s_restriction
            ## 
            # Windows mobile restrictions based on platform, platform operating system version, and device ownership
            @windows_mobile_restriction
            ## 
            # Windows restrictions based on platform, platform operating system version, and device ownership
            @windows_restriction
            ## 
            ## Gets the androidRestriction property value. Android restrictions based on platform, platform operating system version, and device ownership
            ## @return a device_enrollment_platform_restriction
            ## 
            def android_restriction
                return @android_restriction
            end
            ## 
            ## Sets the androidRestriction property value. Android restrictions based on platform, platform operating system version, and device ownership
            ## @param value Value to set for the android_restriction property.
            ## @return a void
            ## 
            def android_restriction=(value)
                @android_restriction = value
            end
            ## 
            ## Instantiates a new DeviceEnrollmentPlatformRestrictionsConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_enrollment_platform_restrictions_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceEnrollmentPlatformRestrictionsConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "androidRestriction" => lambda {|n| @android_restriction = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "iosRestriction" => lambda {|n| @ios_restriction = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "macOSRestriction" => lambda {|n| @mac_o_s_restriction = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "windowsMobileRestriction" => lambda {|n| @windows_mobile_restriction = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "windowsRestriction" => lambda {|n| @windows_restriction = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the iosRestriction property value. Ios restrictions based on platform, platform operating system version, and device ownership
            ## @return a device_enrollment_platform_restriction
            ## 
            def ios_restriction
                return @ios_restriction
            end
            ## 
            ## Sets the iosRestriction property value. Ios restrictions based on platform, platform operating system version, and device ownership
            ## @param value Value to set for the ios_restriction property.
            ## @return a void
            ## 
            def ios_restriction=(value)
                @ios_restriction = value
            end
            ## 
            ## Gets the macOSRestriction property value. Mac restrictions based on platform, platform operating system version, and device ownership
            ## @return a device_enrollment_platform_restriction
            ## 
            def mac_o_s_restriction
                return @mac_o_s_restriction
            end
            ## 
            ## Sets the macOSRestriction property value. Mac restrictions based on platform, platform operating system version, and device ownership
            ## @param value Value to set for the mac_o_s_restriction property.
            ## @return a void
            ## 
            def mac_o_s_restriction=(value)
                @mac_o_s_restriction = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("androidRestriction", @android_restriction)
                writer.write_object_value("iosRestriction", @ios_restriction)
                writer.write_object_value("macOSRestriction", @mac_o_s_restriction)
                writer.write_object_value("windowsMobileRestriction", @windows_mobile_restriction)
                writer.write_object_value("windowsRestriction", @windows_restriction)
            end
            ## 
            ## Gets the windowsMobileRestriction property value. Windows mobile restrictions based on platform, platform operating system version, and device ownership
            ## @return a device_enrollment_platform_restriction
            ## 
            def windows_mobile_restriction
                return @windows_mobile_restriction
            end
            ## 
            ## Sets the windowsMobileRestriction property value. Windows mobile restrictions based on platform, platform operating system version, and device ownership
            ## @param value Value to set for the windows_mobile_restriction property.
            ## @return a void
            ## 
            def windows_mobile_restriction=(value)
                @windows_mobile_restriction = value
            end
            ## 
            ## Gets the windowsRestriction property value. Windows restrictions based on platform, platform operating system version, and device ownership
            ## @return a device_enrollment_platform_restriction
            ## 
            def windows_restriction
                return @windows_restriction
            end
            ## 
            ## Sets the windowsRestriction property value. Windows restrictions based on platform, platform operating system version, and device ownership
            ## @param value Value to set for the windows_restriction property.
            ## @return a void
            ## 
            def windows_restriction=(value)
                @windows_restriction = value
            end
        end
    end
end
